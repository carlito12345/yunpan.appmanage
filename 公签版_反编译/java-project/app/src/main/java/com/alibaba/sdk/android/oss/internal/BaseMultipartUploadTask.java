package com.alibaba.sdk.android.oss.internal;

import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.TaskCancelException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.MultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.alibaba.sdk.android.oss.model.PartETag;
import com.alibaba.sdk.android.oss.model.UploadPartRequest;
import com.alibaba.sdk.android.oss.model.UploadPartResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import com.hsae.autosdk.popup.constant.PopupConst;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class BaseMultipartUploadTask<Request extends MultipartUploadRequest, Result extends CompleteMultipartUploadResult> implements Callable<Result> {
    protected final int CPU_SIZE;
    protected final int KEEP_ALIVE_TIME;
    protected final int MAX_CORE_POOL_SIZE;
    protected final int MAX_IMUM_POOL_SIZE;
    protected final int MAX_QUEUE_SIZE;
    protected final int PART_SIZE_ALIGN_NUM;
    protected InternalRequestOperation mApiOperation;
    protected boolean mCheckCRC64;
    protected OSSCompletedCallback<Request, Result> mCompletedCallback;
    protected ExecutionContext mContext;
    protected long mFileLength;
    protected boolean mIsCancel;
    protected long mLastPartSize;
    protected Object mLock;
    protected int[] mPartAttr;
    protected List<PartETag> mPartETags;
    protected int mPartExceptionCount;
    protected ThreadPoolExecutor mPoolExecutor;
    protected OSSProgressCallback<Request> mProgressCallback;
    protected Request mRequest;
    protected int mRunPartTaskCount;
    protected Exception mUploadException;
    protected File mUploadFile;
    protected String mUploadFilePath;
    protected String mUploadId;
    protected Uri mUploadUri;
    protected long mUploadedLength;

    public BaseMultipartUploadTask(InternalRequestOperation internalRequestOperation, Request request, OSSCompletedCallback<Request, Result> oSSCompletedCallback, ExecutionContext executionContext) {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors() * 2;
        this.CPU_SIZE = iAvailableProcessors;
        int iIntValue = iAvailableProcessors < 5 ? iAvailableProcessors : 5;
        this.MAX_CORE_POOL_SIZE = iIntValue;
        this.MAX_IMUM_POOL_SIZE = iAvailableProcessors;
        this.KEEP_ALIVE_TIME = 3000;
        this.MAX_QUEUE_SIZE = 5000;
        this.PART_SIZE_ALIGN_NUM = 4096;
        this.mPartETags = new ArrayList();
        this.mLock = new Object();
        this.mUploadedLength = 0L;
        this.mCheckCRC64 = false;
        this.mPartAttr = new int[2];
        this.mApiOperation = internalRequestOperation;
        this.mRequest = request;
        this.mProgressCallback = request.getProgressCallback();
        this.mCompletedCallback = oSSCompletedCallback;
        this.mContext = executionContext;
        this.mCheckCRC64 = request.getCRC64() == OSSRequest.CRC64Config.YES;
        if (request.getThreadNum() != null && request.getThreadNum().intValue() > 0) {
            iIntValue = request.getThreadNum().intValue();
            iAvailableProcessors = request.getThreadNum().intValue();
        }
        this.mPoolExecutor = new ThreadPoolExecutor(iIntValue, iAvailableProcessors, PopupConst.DURATION_POPUP_SHORT, TimeUnit.MILLISECONDS, new ArrayBlockingQueue(5000), new ThreadFactory() { // from class: com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "oss-android-multipart-thread");
            }
        });
    }

    public abstract void abortThisUpload();

    public long ceilPartSize(long j10) {
        return ((j10 + 4095) / 4096) * 4096;
    }

    public void checkCancel() throws ClientException {
        if (this.mContext.getCancellationHandler().isCancelled()) {
            TaskCancelException taskCancelException = new TaskCancelException("multipart cancel");
            throw new ClientException(taskCancelException.getMessage(), taskCancelException, Boolean.TRUE);
        }
    }

    public void checkException() throws ServiceException, ClientException, IOException {
        if (this.mUploadException != null) {
            releasePool();
            Exception exc = this.mUploadException;
            if (exc instanceof IOException) {
                throw ((IOException) exc);
            }
            if (exc instanceof ServiceException) {
                throw ((ServiceException) exc);
            }
            if (!(exc instanceof ClientException)) {
                throw new ClientException(this.mUploadException.getMessage(), this.mUploadException);
            }
            throw ((ClientException) exc);
        }
    }

    public void checkInitData() throws ClientException, IOException {
        if (this.mRequest.getUploadFilePath() != null) {
            this.mUploadFilePath = this.mRequest.getUploadFilePath();
            this.mUploadedLength = 0L;
            File file = new File(this.mUploadFilePath);
            this.mUploadFile = file;
            this.mFileLength = file.length();
        } else if (this.mRequest.getUploadUri() != null) {
            this.mUploadUri = this.mRequest.getUploadUri();
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = null;
            try {
                try {
                    parcelFileDescriptorOpenFileDescriptor = this.mContext.getApplicationContext().getContentResolver().openFileDescriptor(this.mUploadUri, "r");
                    this.mFileLength = parcelFileDescriptorOpenFileDescriptor.getStatSize();
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (IOException e7) {
                        OSSLog.logThrowable2Local(e7);
                    }
                } catch (IOException e10) {
                    throw new ClientException(e10.getMessage(), e10, Boolean.TRUE);
                }
            } catch (Throwable th2) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (IOException e11) {
                        OSSLog.logThrowable2Local(e11);
                    }
                }
                throw th2;
            }
        }
        if (this.mFileLength == 0) {
            throw new ClientException("file length must not be 0");
        }
        checkPartSize(this.mPartAttr);
        long partSize = this.mRequest.getPartSize();
        int i10 = this.mPartAttr[1];
        OSSLog.logDebug("[checkInitData] - partNumber : " + i10);
        OSSLog.logDebug("[checkInitData] - partSize : " + partSize);
        if (i10 > 1 && partSize < OSSConstants.MIN_PART_SIZE_LIMIT) {
            throw new ClientException("Part size must be greater than or equal to 100KB!");
        }
    }

    public void checkPartSize(int[] iArr) {
        long partSize = this.mRequest.getPartSize();
        OSSLog.logDebug("[checkPartSize] - mFileLength : " + this.mFileLength);
        OSSLog.logDebug("[checkPartSize] - partSize : " + partSize);
        long j10 = this.mFileLength;
        long j11 = j10 / partSize;
        if (j10 % partSize != 0) {
            j11++;
        }
        if (j11 == 1) {
            partSize = j10;
        } else if (j11 > 5000) {
            partSize = ceilPartSize(j10 / 4999);
            long j12 = this.mFileLength;
            j11 = (j12 / partSize) + (j12 % partSize == 0 ? 0L : 1L);
        }
        int i10 = (int) partSize;
        iArr[0] = i10;
        iArr[1] = (int) j11;
        this.mRequest.setPartSize(i10);
        OSSLog.logDebug("[checkPartSize] - partNumber : " + j11);
        OSSLog.logDebug("[checkPartSize] - partSize : " + i10);
        long j13 = this.mFileLength % partSize;
        if (j13 != 0) {
            partSize = j13;
        }
        this.mLastPartSize = partSize;
    }

    public boolean checkWaitCondition(int i10) {
        return this.mPartETags.size() != i10;
    }

    public CompleteMultipartUploadResult completeMultipartUploadResult() {
        CompleteMultipartUploadResult completeMultipartUploadResultSyncCompleteMultipartUpload;
        if (this.mPartETags.size() > 0) {
            Collections.sort(this.mPartETags, new Comparator<PartETag>() { // from class: com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask.2
                @Override // java.util.Comparator
                public int compare(PartETag partETag, PartETag partETag2) {
                    if (partETag.getPartNumber() < partETag2.getPartNumber()) {
                        return -1;
                    }
                    return partETag.getPartNumber() > partETag2.getPartNumber() ? 1 : 0;
                }
            });
            CompleteMultipartUploadRequest completeMultipartUploadRequest = new CompleteMultipartUploadRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mUploadId, this.mPartETags);
            if (this.mRequest.getCallbackParam() != null) {
                completeMultipartUploadRequest.setCallbackParam(this.mRequest.getCallbackParam());
            }
            if (this.mRequest.getCallbackVars() != null) {
                completeMultipartUploadRequest.setCallbackVars(this.mRequest.getCallbackVars());
            }
            if (this.mRequest.getMetadata() != null) {
                ObjectMetadata objectMetadata = new ObjectMetadata();
                for (String str : this.mRequest.getMetadata().getRawMetadata().keySet()) {
                    if (!str.equals(OSSHeaders.STORAGE_CLASS)) {
                        objectMetadata.setHeader(str, this.mRequest.getMetadata().getRawMetadata().get(str));
                    }
                }
                completeMultipartUploadRequest.setMetadata(objectMetadata);
            }
            completeMultipartUploadRequest.setCRC64(this.mRequest.getCRC64());
            completeMultipartUploadResultSyncCompleteMultipartUpload = this.mApiOperation.syncCompleteMultipartUpload(completeMultipartUploadRequest);
        } else {
            completeMultipartUploadResultSyncCompleteMultipartUpload = null;
        }
        this.mUploadedLength = 0L;
        return completeMultipartUploadResultSyncCompleteMultipartUpload;
    }

    public abstract Result doMultipartUpload();

    public abstract void initMultipartUploadId();

    public void notifyMultipartThread() {
        this.mLock.notify();
        this.mPartExceptionCount = 0;
    }

    public void onProgressCallback(Request request, long j10, long j11) {
        OSSProgressCallback<Request> oSSProgressCallback = this.mProgressCallback;
        if (oSSProgressCallback != null) {
            oSSProgressCallback.onProgress(request, j10, j11);
        }
    }

    public void preUploadPart(int i10, int i11, int i12) {
    }

    public abstract void processException(Exception exc);

    public void releasePool() {
        ThreadPoolExecutor threadPoolExecutor = this.mPoolExecutor;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.getQueue().clear();
            this.mPoolExecutor.shutdown();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x00b3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:118:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x015e A[Catch: IOException -> 0x0131, TRY_ENTER, TryCatch #3 {IOException -> 0x0131, blocks: (B:54:0x012d, B:58:0x0135, B:60:0x013a, B:78:0x015e, B:80:0x0163, B:82:0x0168), top: B:101:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0163 A[Catch: IOException -> 0x0131, TryCatch #3 {IOException -> 0x0131, blocks: (B:54:0x012d, B:58:0x0135, B:60:0x013a, B:78:0x015e, B:80:0x0163, B:82:0x0168), top: B:101:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0168 A[Catch: IOException -> 0x0131, TRY_LEAVE, TryCatch #3 {IOException -> 0x0131, blocks: (B:54:0x012d, B:58:0x0135, B:60:0x013a, B:78:0x015e, B:80:0x0163, B:82:0x0168), top: B:101:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0178 A[Catch: IOException -> 0x0174, TryCatch #2 {IOException -> 0x0174, blocks: (B:87:0x0170, B:91:0x0178, B:93:0x017d), top: B:99:0x0170 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x017d A[Catch: IOException -> 0x0174, TRY_LEAVE, TryCatch #2 {IOException -> 0x0174, blocks: (B:87:0x0170, B:91:0x0178, B:93:0x017d), top: B:99:0x0170 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0170 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void uploadPart(int i10, int i11, int i12) throws Throwable {
        Throwable th2;
        InputStream inputStream;
        BufferedInputStream bufferedInputStream;
        RandomAccessFile randomAccessFile;
        BufferedInputStream bufferedInputStream2;
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
            } catch (IOException e7) {
                OSSLog.logThrowable2Local(e7);
                return;
            }
        } catch (Exception e10) {
            e = e10;
            inputStream = null;
            bufferedInputStream = null;
        } catch (Throwable th3) {
            th2 = th3;
            inputStream = null;
            bufferedInputStream = null;
        }
        if (this.mContext.getCancellationHandler().isCancelled()) {
            this.mPoolExecutor.getQueue().clear();
            return;
        }
        synchronized (this.mLock) {
            this.mRunPartTaskCount++;
        }
        preUploadPart(i10, i11, i12);
        byte[] bArr = new byte[i11];
        long partSize = i10 * this.mRequest.getPartSize();
        if (this.mUploadUri != null) {
            InputStream inputStreamOpenInputStream = this.mContext.getApplicationContext().getContentResolver().openInputStream(this.mUploadUri);
            try {
                bufferedInputStream2 = new BufferedInputStream(inputStreamOpenInputStream);
            } catch (Exception e11) {
                e = e11;
                bufferedInputStream = null;
            } catch (Throwable th4) {
                th2 = th4;
                bufferedInputStream = null;
            }
            try {
                bufferedInputStream2.skip(partSize);
                bufferedInputStream2.read(bArr, 0, i11);
                randomAccessFile = null;
                bufferedInputStream = bufferedInputStream2;
                inputStream = inputStreamOpenInputStream;
                try {
                    UploadPartRequest uploadPartRequest = new UploadPartRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mUploadId, i10 + 1);
                    uploadPartRequest.setPartContent(bArr);
                    uploadPartRequest.setMd5Digest(BinaryUtil.calculateBase64Md5(bArr));
                    uploadPartRequest.setCRC64(this.mRequest.getCRC64());
                    UploadPartResult uploadPartResultSyncUploadPart = this.mApiOperation.syncUploadPart(uploadPartRequest);
                    synchronized (this.mLock) {
                        try {
                            PartETag partETag = new PartETag(uploadPartRequest.getPartNumber(), uploadPartResultSyncUploadPart.getETag());
                            long j10 = i11;
                            partETag.setPartSize(j10);
                            if (this.mCheckCRC64) {
                                partETag.setCRC64(uploadPartResultSyncUploadPart.getClientCRC().longValue());
                            }
                            this.mPartETags.add(partETag);
                            this.mUploadedLength += j10;
                            uploadPartFinish(partETag);
                            if (!this.mContext.getCancellationHandler().isCancelled()) {
                                if (this.mPartETags.size() == i12 - this.mPartExceptionCount) {
                                    notifyMultipartThread();
                                }
                                onProgressCallback(this.mRequest, this.mUploadedLength, this.mFileLength);
                            } else if (this.mPartETags.size() == this.mRunPartTaskCount - this.mPartExceptionCount) {
                                TaskCancelException taskCancelException = new TaskCancelException("multipart cancel");
                                throw new ClientException(taskCancelException.getMessage(), taskCancelException, Boolean.TRUE);
                            }
                        } finally {
                        }
                    }
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                        return;
                    }
                    return;
                } catch (Exception e12) {
                    e = e12;
                    randomAccessFile2 = randomAccessFile;
                    try {
                        processException(e);
                        if (randomAccessFile2 != null) {
                            randomAccessFile2.close();
                        }
                        if (bufferedInputStream != null) {
                            bufferedInputStream.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                            return;
                        }
                        return;
                    } catch (Throwable th5) {
                        th2 = th5;
                    }
                } catch (Throwable th6) {
                    th2 = th6;
                    randomAccessFile2 = randomAccessFile;
                }
            } catch (Exception e13) {
                e = e13;
                bufferedInputStream = bufferedInputStream2;
                inputStream = inputStreamOpenInputStream;
                processException(e);
                if (randomAccessFile2 != null) {
                }
                if (bufferedInputStream != null) {
                }
                if (inputStream != null) {
                }
            } catch (Throwable th7) {
                th2 = th7;
                bufferedInputStream = bufferedInputStream2;
                inputStream = inputStreamOpenInputStream;
                if (randomAccessFile2 != null) {
                }
                if (bufferedInputStream != null) {
                }
                if (inputStream != null) {
                }
            }
        } else {
            RandomAccessFile randomAccessFile3 = new RandomAccessFile(this.mUploadFile, "r");
            try {
                randomAccessFile3.seek(partSize);
                randomAccessFile3.readFully(bArr, 0, i11);
                inputStream = null;
                bufferedInputStream = null;
                randomAccessFile = randomAccessFile3;
                UploadPartRequest uploadPartRequest2 = new UploadPartRequest(this.mRequest.getBucketName(), this.mRequest.getObjectKey(), this.mUploadId, i10 + 1);
                uploadPartRequest2.setPartContent(bArr);
                uploadPartRequest2.setMd5Digest(BinaryUtil.calculateBase64Md5(bArr));
                uploadPartRequest2.setCRC64(this.mRequest.getCRC64());
                UploadPartResult uploadPartResultSyncUploadPart2 = this.mApiOperation.syncUploadPart(uploadPartRequest2);
                synchronized (this.mLock) {
                }
            } catch (Exception e14) {
                e = e14;
                inputStream = null;
                bufferedInputStream = null;
                randomAccessFile2 = randomAccessFile3;
                processException(e);
                if (randomAccessFile2 != null) {
                }
                if (bufferedInputStream != null) {
                }
                if (inputStream != null) {
                }
            } catch (Throwable th8) {
                th2 = th8;
                inputStream = null;
                bufferedInputStream = null;
                randomAccessFile2 = randomAccessFile3;
            }
        }
        if (randomAccessFile2 != null) {
            try {
                randomAccessFile2.close();
            } catch (IOException e15) {
                OSSLog.logThrowable2Local(e15);
                throw th2;
            }
        }
        if (bufferedInputStream != null) {
            bufferedInputStream.close();
        }
        if (inputStream != null) {
            throw th2;
        }
        inputStream.close();
        throw th2;
    }

    public void uploadPartFinish(PartETag partETag) {
    }

    @Override // java.util.concurrent.Callable
    public Result call() throws ServiceException, ClientException {
        try {
            checkInitData();
            initMultipartUploadId();
            Result result = (Result) doMultipartUpload();
            OSSCompletedCallback<Request, Result> oSSCompletedCallback = this.mCompletedCallback;
            if (oSSCompletedCallback != null) {
                oSSCompletedCallback.onSuccess(this.mRequest, result);
            }
            return result;
        } catch (ServiceException e7) {
            OSSCompletedCallback<Request, Result> oSSCompletedCallback2 = this.mCompletedCallback;
            if (oSSCompletedCallback2 != null) {
                oSSCompletedCallback2.onFailure(this.mRequest, null, e7);
            }
            throw e7;
        } catch (Exception e10) {
            ClientException clientException = e10 instanceof ClientException ? (ClientException) e10 : new ClientException(e10.toString(), e10);
            OSSCompletedCallback<Request, Result> oSSCompletedCallback3 = this.mCompletedCallback;
            if (oSSCompletedCallback3 != null) {
                oSSCompletedCallback3.onFailure(this.mRequest, clientException, null);
            }
            throw clientException;
        }
    }
}

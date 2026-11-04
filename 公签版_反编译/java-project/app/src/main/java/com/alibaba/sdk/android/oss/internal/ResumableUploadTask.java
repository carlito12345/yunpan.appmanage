package com.alibaba.sdk.android.oss.internal;

import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.common.utils.OSSSharedPreferences;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadRequest;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.ListPartsRequest;
import com.alibaba.sdk.android.oss.model.ListPartsResult;
import com.alibaba.sdk.android.oss.model.PartETag;
import com.alibaba.sdk.android.oss.model.PartSummary;
import com.alibaba.sdk.android.oss.model.ResumableUploadRequest;
import com.alibaba.sdk.android.oss.model.ResumableUploadResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import g.b;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public class ResumableUploadTask extends BaseMultipartUploadTask<ResumableUploadRequest, ResumableUploadResult> implements Callable<ResumableUploadResult> {
    private ResumableUploadRequest.ExceptionTerminationMode exceptionTerminationMode;
    private List<Integer> mAlreadyUploadIndex;
    private File mCRC64RecordFile;
    private File mRecordFile;
    private OSSSharedPreferences mSp;

    public ResumableUploadTask(ResumableUploadRequest resumableUploadRequest, OSSCompletedCallback<ResumableUploadRequest, ResumableUploadResult> oSSCompletedCallback, ExecutionContext executionContext, InternalRequestOperation internalRequestOperation) {
        super(internalRequestOperation, resumableUploadRequest, oSSCompletedCallback, executionContext);
        this.mAlreadyUploadIndex = new ArrayList();
        this.mSp = OSSSharedPreferences.instance(this.mContext.getApplicationContext());
        this.exceptionTerminationMode = resumableUploadRequest.getExceptionTerminationMode();
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void abortThisUpload() throws ExecutionException, InterruptedException {
        if (this.mUploadId != null) {
            this.mApiOperation.abortMultipartUpload(new AbortMultipartUploadRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId), null).waitUntilFinished();
        }
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void checkException() throws Throwable {
        ObjectOutputStream objectOutputStream;
        if (this.mContext.getCancellationHandler().isCancelled()) {
            if (((ResumableUploadRequest) this.mRequest).deleteUploadOnCancelling().booleanValue()) {
                abortThisUpload();
                File file = this.mRecordFile;
                if (file != null) {
                    file.delete();
                }
            } else {
                List<PartETag> list = this.mPartETags;
                if (list != null && list.size() > 0 && this.mCheckCRC64 && ((ResumableUploadRequest) this.mRequest).getRecordDirectory() != null) {
                    HashMap map = new HashMap();
                    for (PartETag partETag : this.mPartETags) {
                        map.put(Integer.valueOf(partETag.getPartNumber()), Long.valueOf(partETag.getCRC64()));
                    }
                    ObjectOutputStream objectOutputStream2 = null;
                    try {
                        try {
                            File file2 = new File(((ResumableUploadRequest) this.mRequest).getRecordDirectory() + File.separator + this.mUploadId);
                            this.mCRC64RecordFile = file2;
                            if (!file2.exists()) {
                                this.mCRC64RecordFile.createNewFile();
                            }
                            objectOutputStream = new ObjectOutputStream(new FileOutputStream(this.mCRC64RecordFile));
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (IOException e7) {
                        e = e7;
                    }
                    try {
                        objectOutputStream.writeObject(map);
                        objectOutputStream.close();
                    } catch (IOException e10) {
                        e = e10;
                        objectOutputStream2 = objectOutputStream;
                        OSSLog.logThrowable2Local(e);
                        if (objectOutputStream2 != null) {
                            objectOutputStream2.close();
                        }
                        super.checkException();
                    } catch (Throwable th3) {
                        th = th3;
                        objectOutputStream2 = objectOutputStream;
                        if (objectOutputStream2 != null) {
                            objectOutputStream2.close();
                        }
                        throw th;
                    }
                }
            }
        }
        super.checkException();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0326 A[LOOP:0: B:43:0x0175->B:105:0x0326, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x032e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x032f A[EDGE_INSN: B:141:0x032f->B:107:0x032f BREAK  A[LOOP:0: B:43:0x0175->B:105:0x0326], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01bb A[Catch: ClientException -> 0x0201, ServiceException -> 0x0305, TRY_LEAVE, TryCatch #2 {ClientException -> 0x0201, blocks: (B:47:0x019b, B:48:0x01a9, B:49:0x01b5, B:51:0x01bb, B:53:0x01d7, B:55:0x01dd, B:57:0x01eb, B:64:0x020b, B:70:0x025a, B:72:0x0262, B:84:0x02a6, B:88:0x02b2, B:89:0x02d8, B:93:0x02dd, B:75:0x0269, B:76:0x028f), top: B:125:0x019b }] */
    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void initMultipartUploadId() throws ExecutionException, ServiceException, InterruptedException, ClientException, IOException {
        String strCalculateMd5Str;
        Map map;
        char c7;
        int nextPartNumberMarker;
        String str;
        Map map2;
        boolean zIsTruncated;
        List<PartSummary> parts;
        int i10;
        int i11;
        String str2 = "[initUploadId] -  ";
        OSSCompletedCallback<ListPartsRequest, ListPartsResult> oSSCompletedCallback = null;
        if (!OSSUtils.isEmptyString(((ResumableUploadRequest) this.mRequest).getRecordDirectory())) {
            if (this.mUploadUri != null) {
                OSSLog.logDebug("[initUploadId] - mUploadFilePath : " + this.mUploadUri.getPath());
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = this.mContext.getApplicationContext().getContentResolver().openFileDescriptor(this.mUploadUri, "r");
                try {
                    strCalculateMd5Str = BinaryUtil.calculateMd5Str(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (Throwable th2) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    throw th2;
                }
            } else {
                OSSLog.logDebug("[initUploadId] - mUploadFilePath : " + this.mUploadFilePath);
                strCalculateMd5Str = BinaryUtil.calculateMd5Str(this.mUploadFilePath);
            }
            OSSLog.logDebug("[initUploadId] - mRequest.getPartSize() : " + ((ResumableUploadRequest) this.mRequest).getPartSize());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strCalculateMd5Str);
            sb2.append(((ResumableUploadRequest) this.mRequest).getBucketName());
            sb2.append(((ResumableUploadRequest) this.mRequest).getObjectKey());
            sb2.append(String.valueOf(((ResumableUploadRequest) this.mRequest).getPartSize()));
            sb2.append(this.mCheckCRC64 ? "-crc64" : "");
            String strCalculateMd5Str2 = BinaryUtil.calculateMd5Str(sb2.toString().getBytes());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(((ResumableUploadRequest) this.mRequest).getRecordDirectory());
            String str3 = File.separator;
            File file = new File(b.l(str3, strCalculateMd5Str2, sb3));
            this.mRecordFile = file;
            if (file.exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(this.mRecordFile));
                this.mUploadId = bufferedReader.readLine();
                bufferedReader.close();
            }
            OSSLog.logDebug("[initUploadId] - mUploadId : " + this.mUploadId);
            if (!OSSUtils.isEmptyString(this.mUploadId)) {
                if (this.mCheckCRC64) {
                    File file2 = new File(((ResumableUploadRequest) this.mRequest).getRecordDirectory() + str3 + this.mUploadId);
                    if (file2.exists()) {
                        ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(file2));
                        try {
                            try {
                                map = (Map) objectInputStream.readObject();
                                try {
                                    file2.delete();
                                } catch (ClassNotFoundException e7) {
                                    e = e7;
                                    OSSLog.logThrowable2Local(e);
                                    c7 = 0;
                                    nextPartNumberMarker = 0;
                                    while (true) {
                                        ListPartsRequest listPartsRequest = new ListPartsRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId);
                                        if (nextPartNumberMarker > 0) {
                                        }
                                        OSSAsyncTask<ListPartsResult> oSSAsyncTaskListParts = this.mApiOperation.listParts(listPartsRequest, oSSCompletedCallback);
                                        try {
                                            try {
                                                ListPartsResult listPartsResult = (ListPartsResult) oSSAsyncTaskListParts.getResult();
                                                zIsTruncated = listPartsResult.isTruncated();
                                                nextPartNumberMarker = listPartsResult.getNextPartNumberMarker();
                                                try {
                                                    parts = listPartsResult.getParts();
                                                    int[] iArr = this.mPartAttr;
                                                    int i12 = iArr[c7];
                                                    int i13 = iArr[1];
                                                    i10 = 0;
                                                    while (i10 < parts.size()) {
                                                    }
                                                    str = str2;
                                                    map2 = map;
                                                } catch (ServiceException e10) {
                                                    e = e10;
                                                    str = str2;
                                                    map2 = map;
                                                    if (e.getStatusCode() == 404) {
                                                    }
                                                }
                                            } catch (ClientException e11) {
                                                throw e11;
                                            }
                                        } catch (ServiceException e12) {
                                            e = e12;
                                            str = str2;
                                        }
                                        oSSAsyncTaskListParts.waitUntilFinished();
                                        if (!zIsTruncated) {
                                        }
                                        str2 = str;
                                        map = map2;
                                        oSSCompletedCallback = null;
                                        c7 = 0;
                                    }
                                    if (!this.mRecordFile.exists()) {
                                        throw new ClientException("Can't create file at path: " + this.mRecordFile.getAbsolutePath() + "\nPlease make sure the directory exist!");
                                    }
                                    if (OSSUtils.isEmptyString(this.mUploadId)) {
                                    }
                                    ((ResumableUploadRequest) this.mRequest).setUploadId(this.mUploadId);
                                }
                            } finally {
                                objectInputStream.close();
                                file2.delete();
                            }
                        } catch (ClassNotFoundException e13) {
                            e = e13;
                            map = null;
                        }
                    } else {
                        map = null;
                    }
                    c7 = 0;
                    nextPartNumberMarker = 0;
                    while (true) {
                        ListPartsRequest listPartsRequest2 = new ListPartsRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId);
                        if (nextPartNumberMarker > 0) {
                            listPartsRequest2.setPartNumberMarker(Integer.valueOf(nextPartNumberMarker));
                        }
                        OSSAsyncTask<ListPartsResult> oSSAsyncTaskListParts2 = this.mApiOperation.listParts(listPartsRequest2, oSSCompletedCallback);
                        ListPartsResult listPartsResult2 = (ListPartsResult) oSSAsyncTaskListParts2.getResult();
                        zIsTruncated = listPartsResult2.isTruncated();
                        nextPartNumberMarker = listPartsResult2.getNextPartNumberMarker();
                        parts = listPartsResult2.getParts();
                        int[] iArr2 = this.mPartAttr;
                        int i122 = iArr2[c7];
                        int i132 = iArr2[1];
                        i10 = 0;
                        while (i10 < parts.size()) {
                            PartSummary partSummary = parts.get(i10);
                            PartETag partETag = new PartETag(partSummary.getPartNumber(), partSummary.getETag());
                            partETag.setPartSize(partSummary.getSize());
                            if (map != null && map.size() > 0 && map.containsKey(Integer.valueOf(partETag.getPartNumber()))) {
                                partETag.setCRC64(((Long) map.get(Integer.valueOf(partETag.getPartNumber()))).longValue());
                            }
                            OSSLog.logDebug(str2 + i10 + " part.getPartNumber() : " + partSummary.getPartNumber());
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append(str2);
                            sb4.append(i10);
                            sb4.append(" part.getSize() : ");
                            int i14 = i10;
                            sb4.append(partSummary.getSize());
                            OSSLog.logDebug(sb4.toString());
                            boolean z = partSummary.getPartNumber() == i132;
                            if (z) {
                                try {
                                    i11 = nextPartNumberMarker;
                                    map2 = map;
                                    try {
                                        if (partSummary.getSize() != this.mLastPartSize) {
                                            throw new ClientException("current part size " + partSummary.getSize() + " setting is inconsistent with PartSize : " + i122 + " or lastPartSize : " + this.mLastPartSize);
                                        }
                                    } catch (ServiceException e14) {
                                        e = e14;
                                        str = str2;
                                    }
                                } catch (ServiceException e15) {
                                    e = e15;
                                    map2 = map;
                                    str = str2;
                                }
                            } else {
                                i11 = nextPartNumberMarker;
                                map2 = map;
                            }
                            if (z) {
                                str = str2;
                            } else {
                                str = str2;
                                if (partSummary.getSize() != i122) {
                                    throw new ClientException("current part size " + partSummary.getSize() + " setting is inconsistent with PartSize : " + i122 + " or lastPartSize : " + this.mLastPartSize);
                                }
                                e = e;
                                nextPartNumberMarker = i11;
                                if (e.getStatusCode() == 404) {
                                    throw e;
                                }
                                this.mUploadId = null;
                                zIsTruncated = false;
                                oSSAsyncTaskListParts2.waitUntilFinished();
                                if (!zIsTruncated) {
                                    break;
                                }
                                str2 = str;
                                map = map2;
                                oSSCompletedCallback = null;
                                c7 = 0;
                            }
                            try {
                                this.mPartETags.add(partETag);
                                this.mUploadedLength += partSummary.getSize();
                                this.mAlreadyUploadIndex.add(Integer.valueOf(partSummary.getPartNumber()));
                                i10 = i14 + 1;
                                str2 = str;
                                map = map2;
                                nextPartNumberMarker = i11;
                            } catch (ServiceException e16) {
                                e = e16;
                            }
                        }
                        str = str2;
                        map2 = map;
                        oSSAsyncTaskListParts2.waitUntilFinished();
                        if (!zIsTruncated) {
                        }
                    }
                }
            }
            if (!this.mRecordFile.exists() && !this.mRecordFile.createNewFile()) {
                throw new ClientException("Can't create file at path: " + this.mRecordFile.getAbsolutePath() + "\nPlease make sure the directory exist!");
            }
        }
        if (OSSUtils.isEmptyString(this.mUploadId)) {
            this.mUploadId = ((InitiateMultipartUploadResult) this.mApiOperation.initMultipartUpload(new InitiateMultipartUploadRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), ((ResumableUploadRequest) this.mRequest).getMetadata()), null).getResult()).getUploadId();
            if (this.mRecordFile != null) {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.mRecordFile));
                bufferedWriter.write(this.mUploadId);
                bufferedWriter.close();
            }
        }
        ((ResumableUploadRequest) this.mRequest).setUploadId(this.mUploadId);
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void processException(Exception exc) {
        synchronized (this.mLock) {
            try {
                this.mPartExceptionCount++;
                this.mUploadException = exc;
                OSSLog.logThrowable2Local(exc);
                if (this.mContext.getCancellationHandler().isCancelled() && !this.mIsCancel) {
                    this.mIsCancel = true;
                    this.mLock.notify();
                }
                if (this.exceptionTerminationMode == ResumableUploadRequest.ExceptionTerminationMode.EXCEPTION || this.mPartETags.size() == this.mRunPartTaskCount - this.mPartExceptionCount) {
                    notifyMultipartThread();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public void uploadPartFinish(PartETag partETag) {
        if (!this.mContext.getCancellationHandler().isCancelled() || this.mSp.contains(this.mUploadId)) {
            return;
        }
        this.mSp.setStringValue(this.mUploadId, String.valueOf(this.mUploadedLength));
        onProgressCallback(this.mRequest, this.mUploadedLength, this.mFileLength);
    }

    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    public ResumableUploadResult doMultipartUpload() throws Throwable {
        ThreadPoolExecutor threadPoolExecutor;
        long j10 = this.mUploadedLength;
        checkCancel();
        int[] iArr = this.mPartAttr;
        final int i10 = iArr[0];
        final int i11 = iArr[1];
        if (this.mPartETags.size() > 0 && this.mAlreadyUploadIndex.size() > 0) {
            long jLongValue = this.mUploadedLength;
            if (jLongValue > this.mFileLength) {
                throw new ClientException("The uploading file is inconsistent with before");
            }
            if (!TextUtils.isEmpty(this.mSp.getStringValue(this.mUploadId))) {
                jLongValue = Long.valueOf(this.mSp.getStringValue(this.mUploadId)).longValue();
            }
            long j11 = jLongValue;
            OSSProgressCallback<Request> oSSProgressCallback = this.mProgressCallback;
            if (oSSProgressCallback != 0) {
                oSSProgressCallback.onProgress(this.mRequest, j11, this.mFileLength);
            }
            this.mSp.removeKey(this.mUploadId);
        }
        this.mRunPartTaskCount = this.mPartETags.size();
        for (final int i12 = 0; i12 < i11; i12++) {
            if (this.exceptionTerminationMode == ResumableUploadRequest.ExceptionTerminationMode.EXCEPTION) {
                checkException();
            }
            if ((this.mAlreadyUploadIndex.size() == 0 || !this.mAlreadyUploadIndex.contains(Integer.valueOf(i12 + 1))) && (threadPoolExecutor = this.mPoolExecutor) != null) {
                if (i12 == i11 - 1) {
                    i10 = (int) (this.mFileLength - j10);
                }
                j10 += i10;
                threadPoolExecutor.execute(new Runnable() { // from class: com.alibaba.sdk.android.oss.internal.ResumableUploadTask.1
                    @Override // java.lang.Runnable
                    public void run() throws Throwable {
                        ResumableUploadTask.this.uploadPart(i12, i10, i11);
                    }
                });
            }
        }
        if (checkWaitCondition(i11)) {
            synchronized (this.mLock) {
                this.mLock.wait();
            }
        }
        checkException();
        CompleteMultipartUploadResult completeMultipartUploadResult = completeMultipartUploadResult();
        ResumableUploadResult resumableUploadResult = completeMultipartUploadResult != null ? new ResumableUploadResult(completeMultipartUploadResult) : null;
        File file = this.mRecordFile;
        if (file != null) {
            file.delete();
        }
        File file2 = this.mCRC64RecordFile;
        if (file2 != null) {
            file2.delete();
        }
        releasePool();
        return resumableUploadResult;
    }
}

package com.alibaba.sdk.android.oss.internal;

import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.TaskCancelException;
import com.alibaba.sdk.android.oss.callback.OSSCompletedCallback;
import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.BinaryUtil;
import com.alibaba.sdk.android.oss.common.utils.CRC64;
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
import com.alibaba.sdk.android.oss.model.UploadPartRequest;
import com.alibaba.sdk.android.oss.model.UploadPartResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import g.b;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.zip.CheckedInputStream;

/* loaded from: classes.dex */
public class SequenceUploadTask extends BaseMultipartUploadTask<ResumableUploadRequest, ResumableUploadResult> implements Callable<ResumableUploadResult> {
    private List<Integer> mAlreadyUploadIndex;
    private File mCRC64RecordFile;
    private long mFirstPartSize;
    private File mRecordFile;
    private OSSSharedPreferences mSp;

    public SequenceUploadTask(ResumableUploadRequest resumableUploadRequest, OSSCompletedCallback<ResumableUploadRequest, ResumableUploadResult> oSSCompletedCallback, ExecutionContext executionContext, InternalRequestOperation internalRequestOperation) {
        super(internalRequestOperation, resumableUploadRequest, oSSCompletedCallback, executionContext);
        this.mAlreadyUploadIndex = new ArrayList();
        this.mSp = OSSSharedPreferences.instance(this.mContext.getApplicationContext());
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

    /* JADX WARN: Removed duplicated region for block: B:41:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x016f A[Catch: ClientException -> 0x01b5, ServiceException -> 0x01b7, TryCatch #6 {ClientException -> 0x01b5, ServiceException -> 0x01b7, blocks: (B:47:0x0156, B:48:0x0169, B:50:0x016f, B:52:0x018b, B:54:0x0191, B:56:0x019f, B:61:0x01b9, B:63:0x01d6), top: B:94:0x0156 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x022a  */
    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void initMultipartUploadId() throws ExecutionException, ServiceException, InterruptedException, ClientException, IOException {
        String strCalculateMd5Str;
        Map map;
        int nextPartNumberMarker;
        boolean zIsTruncated;
        List<PartSummary> parts;
        int i10;
        if (!OSSUtils.isEmptyString(((ResumableUploadRequest) this.mRequest).getRecordDirectory())) {
            if (this.mUploadUri != null) {
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
                strCalculateMd5Str = BinaryUtil.calculateMd5Str(this.mUploadFilePath);
            }
            StringBuilder sbM = b.m(strCalculateMd5Str);
            sbM.append(((ResumableUploadRequest) this.mRequest).getBucketName());
            sbM.append(((ResumableUploadRequest) this.mRequest).getObjectKey());
            sbM.append(String.valueOf(((ResumableUploadRequest) this.mRequest).getPartSize()));
            sbM.append(this.mCheckCRC64 ? "-crc64" : "");
            sbM.append("-sequence");
            String strCalculateMd5Str2 = BinaryUtil.calculateMd5Str(sbM.toString().getBytes());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(((ResumableUploadRequest) this.mRequest).getRecordDirectory());
            String str = File.separator;
            File file = new File(b.l(str, strCalculateMd5Str2, sb2));
            this.mRecordFile = file;
            if (file.exists()) {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(this.mRecordFile));
                this.mUploadId = bufferedReader.readLine();
                bufferedReader.close();
                OSSLog.logDebug("sequence [initUploadId] - Found record file, uploadid: " + this.mUploadId);
            }
            if (!OSSUtils.isEmptyString(this.mUploadId)) {
                if (this.mCheckCRC64) {
                    File file2 = new File(((ResumableUploadRequest) this.mRequest).getRecordDirectory() + str + this.mUploadId);
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
                                    nextPartNumberMarker = 0;
                                    do {
                                        ListPartsRequest listPartsRequest = new ListPartsRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId);
                                        if (nextPartNumberMarker > 0) {
                                        }
                                        OSSAsyncTask<ListPartsResult> oSSAsyncTaskListParts = this.mApiOperation.listParts(listPartsRequest, null);
                                        try {
                                            ListPartsResult listPartsResult = (ListPartsResult) oSSAsyncTaskListParts.getResult();
                                            zIsTruncated = listPartsResult.isTruncated();
                                            nextPartNumberMarker = listPartsResult.getNextPartNumberMarker();
                                            parts = listPartsResult.getParts();
                                            while (i10 < parts.size()) {
                                            }
                                        } catch (ClientException e10) {
                                            throw e10;
                                        } catch (ServiceException e11) {
                                            if (e11.getStatusCode() != 404) {
                                                throw e11;
                                            }
                                            this.mUploadId = null;
                                            zIsTruncated = false;
                                        }
                                        oSSAsyncTaskListParts.waitUntilFinished();
                                    } while (zIsTruncated);
                                    if (!this.mRecordFile.exists()) {
                                        throw new ClientException("Can't create file at path: " + this.mRecordFile.getAbsolutePath() + "\nPlease make sure the directory exist!");
                                    }
                                    if (OSSUtils.isEmptyString(this.mUploadId)) {
                                    }
                                    ((ResumableUploadRequest) this.mRequest).setUploadId(this.mUploadId);
                                }
                            } catch (ClassNotFoundException e12) {
                                e = e12;
                                map = null;
                            }
                        } finally {
                            objectInputStream.close();
                            file2.delete();
                        }
                    } else {
                        map = null;
                    }
                    nextPartNumberMarker = 0;
                    do {
                        ListPartsRequest listPartsRequest2 = new ListPartsRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId);
                        if (nextPartNumberMarker > 0) {
                            listPartsRequest2.setPartNumberMarker(Integer.valueOf(nextPartNumberMarker));
                        }
                        OSSAsyncTask<ListPartsResult> oSSAsyncTaskListParts2 = this.mApiOperation.listParts(listPartsRequest2, null);
                        ListPartsResult listPartsResult2 = (ListPartsResult) oSSAsyncTaskListParts2.getResult();
                        zIsTruncated = listPartsResult2.isTruncated();
                        nextPartNumberMarker = listPartsResult2.getNextPartNumberMarker();
                        parts = listPartsResult2.getParts();
                        for (i10 = 0; i10 < parts.size(); i10++) {
                            PartSummary partSummary = parts.get(i10);
                            PartETag partETag = new PartETag(partSummary.getPartNumber(), partSummary.getETag());
                            partETag.setPartSize(partSummary.getSize());
                            if (map != null && map.size() > 0 && map.containsKey(Integer.valueOf(partETag.getPartNumber()))) {
                                partETag.setCRC64(((Long) map.get(Integer.valueOf(partETag.getPartNumber()))).longValue());
                            }
                            this.mPartETags.add(partETag);
                            this.mUploadedLength += partSummary.getSize();
                            this.mAlreadyUploadIndex.add(Integer.valueOf(partSummary.getPartNumber()));
                            if (i10 == 0) {
                                this.mFirstPartSize = partSummary.getSize();
                            }
                        }
                        oSSAsyncTaskListParts2.waitUntilFinished();
                    } while (zIsTruncated);
                }
            }
            if (!this.mRecordFile.exists() && !this.mRecordFile.createNewFile()) {
                throw new ClientException("Can't create file at path: " + this.mRecordFile.getAbsolutePath() + "\nPlease make sure the directory exist!");
            }
        }
        if (OSSUtils.isEmptyString(this.mUploadId)) {
            InitiateMultipartUploadRequest initiateMultipartUploadRequest = new InitiateMultipartUploadRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), ((ResumableUploadRequest) this.mRequest).getMetadata());
            initiateMultipartUploadRequest.isSequential = true;
            this.mUploadId = ((InitiateMultipartUploadResult) this.mApiOperation.initMultipartUpload(initiateMultipartUploadRequest, null).getResult()).getUploadId();
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
        if (this.mUploadException == null || !exc.getMessage().equals(this.mUploadException.getMessage())) {
            this.mUploadException = exc;
        }
        OSSLog.logThrowable2Local(exc);
        if (!this.mContext.getCancellationHandler().isCancelled() || this.mIsCancel) {
            return;
        }
        this.mIsCancel = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01b5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:121:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ca A[Catch: all -> 0x00d6, Exception -> 0x00da, ServiceException -> 0x00de, TryCatch #11 {ServiceException -> 0x00de, blocks: (B:34:0x009a, B:36:0x00ca, B:43:0x00e2, B:45:0x00fb, B:56:0x011e, B:57:0x0130), top: B:110:0x009a }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00fb A[Catch: all -> 0x00d6, Exception -> 0x00da, ServiceException -> 0x00de, TRY_LEAVE, TryCatch #11 {ServiceException -> 0x00de, blocks: (B:34:0x009a, B:36:0x00ca, B:43:0x00e2, B:45:0x00fb, B:56:0x011e, B:57:0x0130), top: B:110:0x009a }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011e A[Catch: all -> 0x00d6, Exception -> 0x00da, ServiceException -> 0x00de, TRY_ENTER, TryCatch #11 {ServiceException -> 0x00de, blocks: (B:34:0x009a, B:36:0x00ca, B:43:0x00e2, B:45:0x00fb, B:56:0x011e, B:57:0x0130), top: B:110:0x009a }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0144 A[Catch: IOException -> 0x010b, TRY_ENTER, TryCatch #8 {IOException -> 0x010b, blocks: (B:47:0x0107, B:51:0x010f, B:53:0x0114, B:68:0x0144, B:70:0x0149, B:72:0x014e, B:84:0x01a5, B:86:0x01aa, B:88:0x01af), top: B:105:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0149 A[Catch: IOException -> 0x010b, TryCatch #8 {IOException -> 0x010b, blocks: (B:47:0x0107, B:51:0x010f, B:53:0x0114, B:68:0x0144, B:70:0x0149, B:72:0x014e, B:84:0x01a5, B:86:0x01aa, B:88:0x01af), top: B:105:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x014e A[Catch: IOException -> 0x010b, TRY_LEAVE, TryCatch #8 {IOException -> 0x010b, blocks: (B:47:0x0107, B:51:0x010f, B:53:0x0114, B:68:0x0144, B:70:0x0149, B:72:0x014e, B:84:0x01a5, B:86:0x01aa, B:88:0x01af), top: B:105:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x015c A[Catch: all -> 0x00d6, TryCatch #16 {all -> 0x00d6, blocks: (B:33:0x0081, B:34:0x009a, B:36:0x00ca, B:43:0x00e2, B:45:0x00fb, B:56:0x011e, B:57:0x0130, B:76:0x0154, B:78:0x015c, B:79:0x0160, B:81:0x017a, B:82:0x0198), top: B:106:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0160 A[Catch: all -> 0x00d6, TryCatch #16 {all -> 0x00d6, blocks: (B:33:0x0081, B:34:0x009a, B:36:0x00ca, B:43:0x00e2, B:45:0x00fb, B:56:0x011e, B:57:0x0130, B:76:0x0154, B:78:0x015c, B:79:0x0160, B:81:0x017a, B:82:0x0198), top: B:106:0x0081 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01a5 A[Catch: IOException -> 0x010b, TRY_ENTER, TryCatch #8 {IOException -> 0x010b, blocks: (B:47:0x0107, B:51:0x010f, B:53:0x0114, B:68:0x0144, B:70:0x0149, B:72:0x014e, B:84:0x01a5, B:86:0x01aa, B:88:0x01af), top: B:105:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01aa A[Catch: IOException -> 0x010b, TryCatch #8 {IOException -> 0x010b, blocks: (B:47:0x0107, B:51:0x010f, B:53:0x0114, B:68:0x0144, B:70:0x0149, B:72:0x014e, B:84:0x01a5, B:86:0x01aa, B:88:0x01af), top: B:105:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01af A[Catch: IOException -> 0x010b, TRY_LEAVE, TryCatch #8 {IOException -> 0x010b, blocks: (B:47:0x0107, B:51:0x010f, B:53:0x0114, B:68:0x0144, B:70:0x0149, B:72:0x014e, B:84:0x01a5, B:86:0x01aa, B:88:0x01af), top: B:105:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01bd A[Catch: IOException -> 0x01b9, TryCatch #0 {IOException -> 0x01b9, blocks: (B:91:0x01b5, B:95:0x01bd, B:97:0x01c2), top: B:103:0x01b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01c2 A[Catch: IOException -> 0x01b9, TRY_LEAVE, TryCatch #0 {IOException -> 0x01b9, blocks: (B:91:0x01b5, B:95:0x01bd, B:97:0x01c2), top: B:103:0x01b5 }] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.alibaba.sdk.android.oss.model.UploadPartRequest] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask, com.alibaba.sdk.android.oss.internal.SequenceUploadTask] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.BufferedInputStream] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    @Override // com.alibaba.sdk.android.oss.internal.BaseMultipartUploadTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void uploadPart(int i10, int i11, int i12) throws Throwable {
        InputStream inputStream;
        ?? bufferedInputStream;
        ?? randomAccessFile;
        UploadPartRequest uploadPartRequest;
        ?? r02 = 0;
        r02 = 0;
        r02 = 0;
        r02 = 0;
        r02 = 0;
        r02 = 0;
        r02 = 0;
        r02 = 0;
        r02 = 0;
        try {
            try {
            } catch (IOException e7) {
                OSSLog.logThrowable2Local(e7);
                return;
            }
        } catch (ServiceException e10) {
            e = e10;
            inputStream = r02;
            randomAccessFile = inputStream;
            bufferedInputStream = randomAccessFile;
        } catch (Exception e11) {
            e = e11;
            inputStream = r02;
            bufferedInputStream = inputStream;
            r02 = r02;
        } catch (Throwable th2) {
            th = th2;
            inputStream = r02;
            bufferedInputStream = inputStream;
        }
        if (this.mContext.getCancellationHandler().isCancelled()) {
            return;
        }
        this.mRunPartTaskCount++;
        preUploadPart(i10, i11, i12);
        long partSize = i10 * ((ResumableUploadRequest) this.mRequest).getPartSize();
        byte[] bArr = new byte[i11];
        if (this.mUploadUri != null) {
            InputStream inputStreamOpenInputStream = this.mContext.getApplicationContext().getContentResolver().openInputStream(this.mUploadUri);
            try {
                bufferedInputStream = new BufferedInputStream(inputStreamOpenInputStream);
                try {
                    bufferedInputStream.skip(partSize);
                    bufferedInputStream.read(bArr, 0, i11);
                    inputStream = inputStreamOpenInputStream;
                    randomAccessFile = 0;
                    bufferedInputStream = bufferedInputStream;
                    try {
                        try {
                            try {
                                uploadPartRequest = new UploadPartRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId, i10 + 1);
                            } catch (ServiceException e12) {
                                e = e12;
                            }
                            try {
                                uploadPartRequest.setPartContent(bArr);
                                uploadPartRequest.setMd5Digest(BinaryUtil.calculateBase64Md5(bArr));
                                uploadPartRequest.setCRC64(((ResumableUploadRequest) this.mRequest).getCRC64());
                                UploadPartResult uploadPartResultSyncUploadPart = this.mApiOperation.syncUploadPart(uploadPartRequest);
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
                                    TaskCancelException taskCancelException = new TaskCancelException("sequence upload task cancel");
                                    throw new ClientException(taskCancelException.getMessage(), taskCancelException, Boolean.TRUE);
                                }
                                onProgressCallback(this.mRequest, this.mUploadedLength, this.mFileLength);
                                if (randomAccessFile != 0) {
                                    randomAccessFile.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (bufferedInputStream != 0) {
                                    bufferedInputStream.close();
                                    return;
                                }
                                return;
                            } catch (ServiceException e13) {
                                e = e13;
                                r02 = uploadPartRequest;
                                if (e.getStatusCode() != 409) {
                                    processException(e);
                                } else {
                                    PartETag partETag2 = new PartETag(r02.getPartNumber(), e.getPartEtag());
                                    partETag2.setPartSize(r02.getPartContent().length);
                                    if (this.mCheckCRC64) {
                                        partETag2.setCRC64(new CheckedInputStream(new ByteArrayInputStream(r02.getPartContent()), new CRC64()).getChecksum().getValue());
                                    }
                                    this.mPartETags.add(partETag2);
                                    this.mUploadedLength += i11;
                                }
                                if (randomAccessFile != 0) {
                                    randomAccessFile.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (bufferedInputStream != 0) {
                                    bufferedInputStream.close();
                                    return;
                                }
                                return;
                            }
                        } catch (Exception e14) {
                            e = e14;
                            r02 = randomAccessFile;
                            bufferedInputStream = bufferedInputStream;
                            try {
                                processException(e);
                                if (r02 != 0) {
                                    r02.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (bufferedInputStream != 0) {
                                    bufferedInputStream.close();
                                    return;
                                }
                                return;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        r02 = randomAccessFile;
                        if (r02 != 0) {
                        }
                        if (inputStream != null) {
                        }
                        if (bufferedInputStream != 0) {
                        }
                        throw th;
                    }
                } catch (ServiceException e15) {
                    e = e15;
                    inputStream = inputStreamOpenInputStream;
                    randomAccessFile = 0;
                    if (e.getStatusCode() != 409) {
                    }
                    if (randomAccessFile != 0) {
                    }
                    if (inputStream != null) {
                    }
                    if (bufferedInputStream != 0) {
                    }
                } catch (Exception e16) {
                    e = e16;
                    inputStream = inputStreamOpenInputStream;
                    bufferedInputStream = bufferedInputStream;
                    processException(e);
                    if (r02 != 0) {
                    }
                    if (inputStream != null) {
                    }
                    if (bufferedInputStream != 0) {
                    }
                } catch (Throwable th5) {
                    th = th5;
                    inputStream = inputStreamOpenInputStream;
                    if (r02 != 0) {
                    }
                    if (inputStream != null) {
                    }
                    if (bufferedInputStream != 0) {
                    }
                    throw th;
                }
            } catch (ServiceException e17) {
                e = e17;
                bufferedInputStream = 0;
                inputStream = inputStreamOpenInputStream;
                randomAccessFile = 0;
            } catch (Exception e18) {
                e = e18;
                bufferedInputStream = 0;
            } catch (Throwable th6) {
                th = th6;
                bufferedInputStream = 0;
            }
        } else {
            randomAccessFile = new RandomAccessFile(this.mUploadFile, "r");
            try {
                randomAccessFile.seek(partSize);
                randomAccessFile.readFully(bArr, 0, i11);
                inputStream = null;
                bufferedInputStream = 0;
                randomAccessFile = randomAccessFile;
                uploadPartRequest = new UploadPartRequest(((ResumableUploadRequest) this.mRequest).getBucketName(), ((ResumableUploadRequest) this.mRequest).getObjectKey(), this.mUploadId, i10 + 1);
                uploadPartRequest.setPartContent(bArr);
                uploadPartRequest.setMd5Digest(BinaryUtil.calculateBase64Md5(bArr));
                uploadPartRequest.setCRC64(((ResumableUploadRequest) this.mRequest).getCRC64());
                UploadPartResult uploadPartResultSyncUploadPart2 = this.mApiOperation.syncUploadPart(uploadPartRequest);
                PartETag partETag3 = new PartETag(uploadPartRequest.getPartNumber(), uploadPartResultSyncUploadPart2.getETag());
                long j102 = i11;
                partETag3.setPartSize(j102);
                if (this.mCheckCRC64) {
                }
                this.mPartETags.add(partETag3);
                this.mUploadedLength += j102;
                uploadPartFinish(partETag3);
                if (!this.mContext.getCancellationHandler().isCancelled()) {
                }
            } catch (ServiceException e19) {
                e = e19;
                inputStream = null;
                bufferedInputStream = 0;
                if (e.getStatusCode() != 409) {
                }
                if (randomAccessFile != 0) {
                }
                if (inputStream != null) {
                }
                if (bufferedInputStream != 0) {
                }
            } catch (Exception e20) {
                e = e20;
                inputStream = null;
                bufferedInputStream = 0;
                r02 = randomAccessFile;
                bufferedInputStream = bufferedInputStream;
                processException(e);
                if (r02 != 0) {
                }
                if (inputStream != null) {
                }
                if (bufferedInputStream != 0) {
                }
            } catch (Throwable th7) {
                th = th7;
                inputStream = null;
                bufferedInputStream = 0;
                r02 = randomAccessFile;
                if (r02 != 0) {
                }
                if (inputStream != null) {
                }
                if (bufferedInputStream != 0) {
                }
                throw th;
            }
        }
        if (r02 != 0) {
            try {
                r02.close();
            } catch (IOException e21) {
                OSSLog.logThrowable2Local(e21);
            }
        }
        if (inputStream != null) {
            inputStream.close();
        }
        if (bufferedInputStream != 0) {
            bufferedInputStream.close();
        }
        throw th;
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
        long j10 = this.mUploadedLength;
        checkCancel();
        int[] iArr = this.mPartAttr;
        int i10 = iArr[0];
        int i11 = iArr[1];
        if (this.mPartETags.size() > 0 && this.mAlreadyUploadIndex.size() > 0) {
            long jLongValue = this.mUploadedLength;
            if (jLongValue > this.mFileLength) {
                throw new ClientException("The uploading file is inconsistent with before");
            }
            if (this.mFirstPartSize != i10) {
                throw new ClientException("The part size setting is inconsistent with before");
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
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.mAlreadyUploadIndex.size() == 0 || !this.mAlreadyUploadIndex.contains(Integer.valueOf(i12 + 1))) {
                if (i12 == i11 - 1) {
                    i10 = (int) (this.mFileLength - j10);
                }
                OSSLog.logDebug("upload part readByte : " + i10);
                j10 += (long) i10;
                uploadPart(i12, i10, i11);
                if (this.mUploadException != null) {
                    break;
                }
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
        return resumableUploadResult;
    }
}

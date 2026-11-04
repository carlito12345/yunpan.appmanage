package com.alibaba.sdk.android.oss.network;

import android.os.ParcelFileDescriptor;
import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.common.HttpMethod;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.CRC64;
import com.alibaba.sdk.android.oss.common.utils.DateUtil;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.internal.OSSRetryHandler;
import com.alibaba.sdk.android.oss.internal.OSSRetryType;
import com.alibaba.sdk.android.oss.internal.RequestMessage;
import com.alibaba.sdk.android.oss.internal.ResponseMessage;
import com.alibaba.sdk.android.oss.internal.ResponseParser;
import com.alibaba.sdk.android.oss.internal.ResponseParsers;
import com.alibaba.sdk.android.oss.model.GetObjectRequest;
import com.alibaba.sdk.android.oss.model.ListBucketsRequest;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import com.alibaba.sdk.android.oss.model.OSSResult;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.CheckedInputStream;
import okhttp3.Call;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* loaded from: classes.dex */
public class OSSRequestTask<T extends OSSResult> implements Callable<T> {
    private OkHttpClient client;
    private ExecutionContext context;
    private int currentRetryCount = 0;
    private RequestMessage message;
    private ResponseParser<T> responseParser;
    private OSSRetryHandler retryHandler;

    /* renamed from: com.alibaba.sdk.android.oss.network.OSSRequestTask$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod;

        static {
            int[] iArr = new int[HttpMethod.values().length];
            $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod = iArr;
            try {
                iArr[HttpMethod.POST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.PUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.GET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.HEAD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[HttpMethod.DELETE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public OSSRequestTask(RequestMessage requestMessage, ResponseParser responseParser, ExecutionContext executionContext, int i10) {
        this.responseParser = responseParser;
        this.message = requestMessage;
        this.context = executionContext;
        this.client = executionContext.getClient();
        this.retryHandler = new OSSRetryHandler(i10);
    }

    private ResponseMessage buildResponseMessage(RequestMessage requestMessage, Response response) {
        ResponseMessage responseMessage = new ResponseMessage();
        responseMessage.setRequest(requestMessage);
        responseMessage.setResponse(response);
        HashMap map = new HashMap();
        Headers headers = response.headers();
        for (int i10 = 0; i10 < headers.size(); i10++) {
            map.put(headers.name(i10), headers.value(i10));
        }
        responseMessage.setHeaders(map);
        responseMessage.setStatusCode(response.code());
        responseMessage.setContentLength(response.body().contentLength());
        responseMessage.setContent(response.body().byteStream());
        return responseMessage;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0323 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01a0 A[Catch: Exception -> 0x001a, TryCatch #3 {Exception -> 0x001a, blocks: (B:3:0x0004, B:5:0x000c, B:8:0x001f, B:10:0x0046, B:12:0x004f, B:14:0x005c, B:15:0x006e, B:17:0x0074, B:18:0x008b, B:72:0x0205, B:29:0x00d2, B:30:0x00d8, B:31:0x00de, B:35:0x00e9, B:37:0x00f6, B:65:0x01a0, B:67:0x01a8, B:68:0x01b3, B:70:0x01d4, B:71:0x01f1, B:40:0x010d, B:42:0x0117, B:45:0x0133, B:46:0x013a, B:47:0x013b, B:49:0x0143, B:52:0x0171, B:58:0x017b, B:59:0x017e, B:60:0x017f, B:62:0x0187, B:63:0x0195, B:13:0x0056, B:90:0x02d0, B:91:0x02d7), top: B:157:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01d2  */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public T call() throws Exception {
        Call callNewCall;
        Request requestBuild;
        Exception clientException;
        ResponseMessage responseMessageBuildResponseMessage;
        OSSRetryType oSSRetryTypeShouldRetry;
        OSSRequest request;
        long statSize;
        String stringBody;
        InputStream content;
        long contentLength;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        try {
            if (this.context.getApplicationContext() != null) {
                OSSLog.logInfo(OSSUtils.buildBaseLogInfo(this.context.getApplicationContext()));
            }
            OSSLog.logDebug("[call] - ");
            request = this.context.getRequest();
            OSSUtils.ensureRequestValid(request, this.message);
            this.message.getSigner().sign(this.message);
        } catch (Exception e7) {
            e = e7;
            callNewCall = null;
            requestBuild = null;
        }
        if (this.context.getCancellationHandler().isCancelled()) {
            throw new InterruptedIOException("This task is cancelled!");
        }
        Request.Builder builderUrl = new Request.Builder().url(request instanceof ListBucketsRequest ? this.message.buildOSSServiceURL() : this.message.buildCanonicalURL());
        for (String str : this.message.getHeaders().keySet()) {
            builderUrl = builderUrl.addHeader(str, (String) this.message.getHeaders().get(str));
        }
        String str2 = (String) this.message.getHeaders().get("Content-Type");
        OSSLog.logDebug("request method = " + this.message.getMethod());
        int i10 = AnonymousClass1.$SwitchMap$com$alibaba$sdk$android$oss$common$HttpMethod[this.message.getMethod().ordinal()];
        if (i10 == 1 || i10 == 2) {
            OSSUtils.assertTrue(str2 != null, "Content type can't be null when upload!");
            if (this.message.getUploadData() != null) {
                content = new ByteArrayInputStream(this.message.getUploadData());
                contentLength = this.message.getUploadData().length;
            } else {
                if (this.message.getUploadFilePath() != null) {
                    File file = new File(this.message.getUploadFilePath());
                    FileInputStream fileInputStream = new FileInputStream(file);
                    long length = file.length();
                    if (length <= 0) {
                        throw new ClientException("the length of file is 0!");
                    }
                    stringBody = null;
                    content = fileInputStream;
                    statSize = length;
                } else if (this.message.getUploadUri() != null) {
                    content = this.context.getApplicationContext().getContentResolver().openInputStream(this.message.getUploadUri());
                    try {
                        parcelFileDescriptorOpenFileDescriptor = this.context.getApplicationContext().getContentResolver().openFileDescriptor(this.message.getUploadUri(), "r");
                        try {
                            statSize = parcelFileDescriptorOpenFileDescriptor.getStatSize();
                            parcelFileDescriptorOpenFileDescriptor.close();
                            stringBody = null;
                        } catch (Throwable th2) {
                            th = th2;
                            if (parcelFileDescriptorOpenFileDescriptor != null) {
                                parcelFileDescriptorOpenFileDescriptor.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        parcelFileDescriptorOpenFileDescriptor = null;
                    }
                } else if (this.message.getContent() != null) {
                    content = this.message.getContent();
                    contentLength = this.message.getContentLength();
                } else {
                    statSize = 0;
                    stringBody = this.message.getStringBody();
                    content = null;
                }
                if (content == null) {
                    if (this.message.isCheckCRC64()) {
                        content = new CheckedInputStream(content, new CRC64());
                    }
                    this.message.setContent(content);
                    this.message.setContentLength(statSize);
                    builderUrl = builderUrl.method(this.message.getMethod().toString(), NetworkProgressHelper.addProgressRequestBody(content, statSize, str2, this.context));
                } else {
                    builderUrl = stringBody != null ? builderUrl.method(this.message.getMethod().toString(), RequestBody.create(MediaType.parse(str2), stringBody.getBytes(HTTP.UTF_8))) : builderUrl.method(this.message.getMethod().toString(), RequestBody.create((MediaType) null, new byte[0]));
                }
            }
            statSize = contentLength;
            stringBody = null;
            if (content == null) {
            }
        } else if (i10 == 3) {
            builderUrl = builderUrl.get();
        } else if (i10 == 4) {
            builderUrl = builderUrl.head();
        } else if (i10 == 5) {
            builderUrl = builderUrl.delete();
        }
        requestBuild = builderUrl.build();
        try {
            if (request instanceof GetObjectRequest) {
                this.client = NetworkProgressHelper.addProgressResponseListener(this.client, this.context);
                OSSLog.logDebug("getObject");
            }
            callNewCall = this.client.newCall(requestBuild);
            try {
                this.context.getCancellationHandler().setCall(callNewCall);
                Response responseExecute = callNewCall.execute();
                if (OSSLog.isEnableLog()) {
                    Map<String, List<String>> multimap = responseExecute.headers().toMultimap();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("response:---------------------\n");
                    sb2.append("response code: " + responseExecute.code() + " for url: " + requestBuild.url() + SignParameters.NEW_LINE);
                    for (String str3 : multimap.keySet()) {
                        sb2.append("responseHeader [" + str3 + "]: ");
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(multimap.get(str3).get(0));
                        sb3.append(SignParameters.NEW_LINE);
                        sb2.append(sb3.toString());
                    }
                    OSSLog.logDebug(sb2.toString());
                }
                responseMessageBuildResponseMessage = buildResponseMessage(this.message, responseExecute);
                clientException = null;
            } catch (Exception e10) {
                e = e10;
                OSSLog.logError("Encounter local execpiton: " + e.toString());
                if (OSSLog.isEnableLog()) {
                    e.printStackTrace();
                }
                clientException = new ClientException(e.getMessage(), e);
                responseMessageBuildResponseMessage = null;
                if (clientException != null) {
                    if (clientException == null) {
                    }
                }
                clientException = callNewCall == null ? new ClientException("Task is cancelled!", clientException.getCause(), Boolean.TRUE) : new ClientException("Task is cancelled!", clientException.getCause(), Boolean.TRUE);
                oSSRetryTypeShouldRetry = this.retryHandler.shouldRetry(clientException, this.currentRetryCount);
                OSSLog.logError("[run] - retry, retry type: " + oSSRetryTypeShouldRetry);
                if (oSSRetryTypeShouldRetry != OSSRetryType.OSSRetryTypeShouldRetry) {
                }
            }
        } catch (Exception e11) {
            e = e11;
            callNewCall = null;
        }
        if (clientException != null && (responseMessageBuildResponseMessage.getStatusCode() == 203 || responseMessageBuildResponseMessage.getStatusCode() >= 300)) {
            clientException = ResponseParsers.parseResponseErrorXML(responseMessageBuildResponseMessage, requestBuild.method().equals("HEAD"));
        } else if (clientException == null) {
            try {
                T t10 = (T) this.responseParser.parse(responseMessageBuildResponseMessage);
                if (this.context.getCompletedCallback() != null) {
                    this.context.getCompletedCallback().onSuccess(this.context.getRequest(), t10);
                }
                return t10;
            } catch (IOException e12) {
                clientException = new ClientException(e12.getMessage(), e12);
            }
        }
        if ((callNewCall == null && callNewCall.isCanceled()) || this.context.getCancellationHandler().isCancelled()) {
        }
        oSSRetryTypeShouldRetry = this.retryHandler.shouldRetry(clientException, this.currentRetryCount);
        OSSLog.logError("[run] - retry, retry type: " + oSSRetryTypeShouldRetry);
        if (oSSRetryTypeShouldRetry != OSSRetryType.OSSRetryTypeShouldRetry) {
            this.currentRetryCount++;
            if (this.context.getRetryCallback() != null) {
                this.context.getRetryCallback().onRetryCallback();
            }
            try {
                Thread.sleep(this.retryHandler.timeInterval(this.currentRetryCount, oSSRetryTypeShouldRetry));
            } catch (InterruptedException e13) {
                Thread.currentThread().interrupt();
                e13.printStackTrace();
            }
            return (T) call();
        }
        if (oSSRetryTypeShouldRetry != OSSRetryType.OSSRetryTypeShouldFixedTimeSkewedAndRetry) {
            if (clientException instanceof ClientException) {
                if (this.context.getCompletedCallback() == null) {
                    throw clientException;
                }
                this.context.getCompletedCallback().onFailure(this.context.getRequest(), (ClientException) clientException, null);
                throw clientException;
            }
            if (this.context.getCompletedCallback() == null) {
                throw clientException;
            }
            this.context.getCompletedCallback().onFailure(this.context.getRequest(), null, (ServiceException) clientException);
            throw clientException;
        }
        if (responseMessageBuildResponseMessage != null) {
            String str4 = (String) responseMessageBuildResponseMessage.getHeaders().get("Date");
            try {
                DateUtil.setCurrentServerTime(DateUtil.parseRfc822Date(str4).getTime());
                this.message.getHeaders().put("Date", str4);
            } catch (Exception unused) {
                OSSLog.logError("[error] - synchronize time, reponseDate:" + str4);
            }
        }
        this.currentRetryCount++;
        if (this.context.getRetryCallback() != null) {
            this.context.getRetryCallback().onRetryCallback();
        }
        return (T) call();
    }
}

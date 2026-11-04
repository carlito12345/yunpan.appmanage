package com.alibaba.sdk.android.oss.network;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import fg.e0;
import fg.i;
import fg.k;
import fg.n;
import fg.z;
import okhttp3.MediaType;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public class ProgressTouchableResponseBody<T extends OSSRequest> extends ResponseBody {
    private k mBufferedSource;
    private OSSProgressCallback mProgressListener;
    private final ResponseBody mResponseBody;
    private T request;

    public ProgressTouchableResponseBody(ResponseBody responseBody, ExecutionContext executionContext) {
        this.mResponseBody = responseBody;
        this.mProgressListener = executionContext.getProgressCallback();
        this.request = (T) executionContext.getRequest();
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.mResponseBody.contentLength();
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        return this.mResponseBody.contentType();
    }

    @Override // okhttp3.ResponseBody
    public k source() {
        if (this.mBufferedSource == null) {
            this.mBufferedSource = e0.c(source(this.mResponseBody.source()));
        }
        return this.mBufferedSource;
    }

    private z source(z zVar) {
        return new n(zVar) { // from class: com.alibaba.sdk.android.oss.network.ProgressTouchableResponseBody.1
            private long totalBytesRead = 0;

            @Override // fg.n, fg.z
            public long read(i iVar, long j10) {
                long j11 = super.read(iVar, j10);
                this.totalBytesRead += j11 != -1 ? j11 : 0L;
                if (ProgressTouchableResponseBody.this.mProgressListener != null && j11 != -1 && this.totalBytesRead != 0) {
                    ProgressTouchableResponseBody.this.mProgressListener.onProgress(ProgressTouchableResponseBody.this.request, this.totalBytesRead, ProgressTouchableResponseBody.this.mResponseBody.contentLength());
                }
                return j11;
            }
        };
    }
}

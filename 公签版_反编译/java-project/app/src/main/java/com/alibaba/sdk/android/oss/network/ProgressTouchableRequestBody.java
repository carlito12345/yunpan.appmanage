package com.alibaba.sdk.android.oss.network;

import com.alibaba.sdk.android.oss.callback.OSSProgressCallback;
import com.alibaba.sdk.android.oss.model.OSSRequest;
import fg.c0;
import fg.j;
import fg.r;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Logger;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import ue.d;

/* loaded from: classes.dex */
public class ProgressTouchableRequestBody<T extends OSSRequest> extends RequestBody {
    private static final int SEGMENT_SIZE = 2048;
    private OSSProgressCallback callback;
    private long contentLength;
    private String contentType;
    private InputStream inputStream;
    private T request;

    public ProgressTouchableRequestBody(InputStream inputStream, long j10, String str, ExecutionContext executionContext) {
        this.inputStream = inputStream;
        this.contentType = str;
        this.contentLength = j10;
        this.callback = executionContext.getProgressCallback();
        this.request = (T) executionContext.getRequest();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return MediaType.parse(this.contentType);
    }

    @Override // okhttp3.RequestBody
    public void writeTo(j jVar) throws IOException {
        InputStream inputStream = this.inputStream;
        Logger logger = r.f5868a;
        d.e(inputStream, "<this>");
        fg.d dVar = new fg.d(inputStream, new c0());
        long j10 = 0;
        while (true) {
            long j11 = this.contentLength;
            if (j10 >= j11) {
                break;
            }
            long j12 = dVar.read(jVar.buffer(), Math.min(j11 - j10, 2048L));
            if (j12 == -1) {
                break;
            }
            j10 += j12;
            jVar.flush();
            OSSProgressCallback oSSProgressCallback = this.callback;
            if (oSSProgressCallback != null && j10 != 0) {
                oSSProgressCallback.onProgress(this.request, j10, this.contentLength);
            }
        }
        dVar.close();
    }
}

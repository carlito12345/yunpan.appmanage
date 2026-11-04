package j9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import fg.i;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;

/* loaded from: classes.dex */
public final class a implements Interceptor {

    /* renamed from: d, reason: collision with root package name */
    public static final Charset f9809d = Charset.forName(HTTP.UTF_8);

    /* renamed from: a, reason: collision with root package name */
    public volatile int f9810a = 1;

    /* renamed from: b, reason: collision with root package name */
    public Level f9811b;

    /* renamed from: c, reason: collision with root package name */
    public final Logger f9812c;

    public a(String str) {
        this.f9812c = Logger.getLogger(str);
    }

    public static boolean b(MediaType mediaType) {
        if (mediaType == null) {
            return false;
        }
        if (mediaType.type() != null && mediaType.type().equals("text")) {
            return true;
        }
        String strSubtype = mediaType.subtype();
        if (strSubtype != null) {
            String lowerCase = strSubtype.toLowerCase();
            if (lowerCase.contains("x-www-form-urlencoded") || lowerCase.contains("json") || lowerCase.contains("xml") || lowerCase.contains("html")) {
                return true;
            }
        }
        return false;
    }

    public final void a(Request request) {
        try {
            RequestBody requestBodyBody = request.newBuilder().build().body();
            if (requestBodyBody == null) {
                return;
            }
            i iVar = new i();
            requestBodyBody.writeTo(iVar);
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            Charset charset = f9809d;
            Charset charset2 = mediaTypeContentType != null ? mediaTypeContentType.charset(charset) : charset;
            if (charset2 != null) {
                charset = charset2;
            }
            c("\tbody:".concat(iVar.t(charset)));
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public final void c(String str) {
        this.f9812c.log(this.f9811b, str);
    }

    public final void d(int i10) {
        if (this.f9810a == 0) {
            throw new NullPointerException("printLevel == null. Use Level.NONE instead.");
        }
        this.f9810a = i10;
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws Exception {
        StringBuilder sb2;
        Request request = chain.request();
        if (this.f9810a == 1) {
            return chain.proceed(request);
        }
        Connection connection = chain.connection();
        boolean z = this.f9810a == 4;
        boolean z4 = this.f9810a == 4 || this.f9810a == 3;
        RequestBody requestBodyBody = request.body();
        boolean z10 = requestBodyBody != null;
        try {
            try {
                c("--> " + request.method() + ' ' + request.url() + ' ' + (connection != null ? connection.protocol() : Protocol.HTTP_1_1));
                if (z4) {
                    if (z10) {
                        if (requestBodyBody.contentType() != null) {
                            c("\tContent-Type: " + requestBodyBody.contentType());
                        }
                        if (requestBodyBody.contentLength() != -1) {
                            c("\tContent-Length: " + requestBodyBody.contentLength());
                        }
                    }
                    Headers headers = request.headers();
                    int size = headers.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        String strName = headers.name(i10);
                        if (!"Content-Type".equalsIgnoreCase(strName) && !"Content-Length".equalsIgnoreCase(strName)) {
                            c("\t" + strName + ": " + headers.value(i10));
                        }
                    }
                    c(" ");
                    if (z && z10) {
                        if (b(requestBodyBody.contentType())) {
                            a(request);
                        } else {
                            c("\tbody: maybe [binary body], omitted!");
                        }
                    }
                }
                sb2 = new StringBuilder("--> END ");
            } finally {
                c("--> END " + request.method());
            }
        } catch (Exception e7) {
            e7.printStackTrace();
            sb2 = new StringBuilder("--> END ");
        }
        sb2.append(request.method());
        c(sb2.toString());
        long jNanoTime = System.nanoTime();
        try {
            Response responseProceed = chain.proceed(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            Response responseBuild = responseProceed.newBuilder().build();
            ResponseBody responseBodyBody = responseBuild.body();
            boolean z11 = this.f9810a == 4;
            boolean z12 = this.f9810a == 4 || this.f9810a == 3;
            try {
                try {
                    c("<-- " + responseBuild.code() + ' ' + responseBuild.message() + ' ' + responseBuild.request().url() + " (" + millis + "ms）");
                    if (z12) {
                        Headers headers2 = responseBuild.headers();
                        int size2 = headers2.size();
                        for (int i11 = 0; i11 < size2; i11++) {
                            c("\t" + headers2.name(i11) + ": " + headers2.value(i11));
                        }
                        c(" ");
                        if (z11 && HttpHeaders.hasBody(responseBuild) && responseBodyBody != null) {
                            if (b(responseBodyBody.contentType())) {
                                InputStream inputStreamByteStream = responseBodyBody.byteStream();
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int i12 = inputStreamByteStream.read(bArr);
                                    if (i12 == -1) {
                                        break;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, i12);
                                }
                                byteArrayOutputStream.close();
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                MediaType mediaTypeContentType = responseBodyBody.contentType();
                                Charset charset = f9809d;
                                Charset charset2 = mediaTypeContentType != null ? mediaTypeContentType.charset(charset) : charset;
                                if (charset2 != null) {
                                    charset = charset2;
                                }
                                c("\tbody:" + new String(byteArray, charset));
                                responseProceed = responseProceed.newBuilder().body(ResponseBody.create(responseBodyBody.contentType(), byteArray)).build();
                            } else {
                                c("\tbody: maybe [binary body], omitted!");
                            }
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                c("<-- END HTTP");
                return responseProceed;
            } finally {
                c("<-- END HTTP");
            }
        } catch (Exception e11) {
            c("<-- HTTP FAILED: " + e11);
            throw e11;
        }
    }
}

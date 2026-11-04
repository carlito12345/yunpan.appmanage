package b9;

import android.os.Handler;
import android.os.Looper;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.Call;
import okhttp3.OkHttpClient;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: b, reason: collision with root package name */
    public OkHttpClient f2667b;

    /* renamed from: a, reason: collision with root package name */
    public final Handler f2666a = new Handler(Looper.getMainLooper());

    /* renamed from: c, reason: collision with root package name */
    public final int f2668c = 3;

    /* renamed from: d, reason: collision with root package name */
    public final int f2669d = 2;

    public b() throws NoSuchAlgorithmException, IOException, CertificateException, KeyStoreException, KeyManagementException {
        X509TrustManager x509TrustManager;
        OkHttpClient.Builder builder = new OkHttpClient.Builder();
        j9.a aVar = new j9.a("OkGo");
        aVar.d(4);
        aVar.f9811b = Level.INFO;
        builder.addInterceptor(aVar);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.readTimeout(60000L, timeUnit);
        builder.writeTimeout(60000L, timeUnit);
        builder.connectTimeout(60000L, timeUnit);
        try {
            TrustManager[] trustManagerArrA = i9.b.a(new InputStream[0]);
            if (trustManagerArrA != null) {
                int length = trustManagerArrA.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        x509TrustManager = null;
                        break;
                    }
                    TrustManager trustManager = trustManagerArrA[i10];
                    if (trustManager instanceof X509TrustManager) {
                        x509TrustManager = (X509TrustManager) trustManager;
                        break;
                    }
                    i10++;
                }
            } else {
                x509TrustManager = i9.b.f8649a;
            }
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            builder.sslSocketFactory(sSLContext.getSocketFactory(), x509TrustManager);
            builder.hostnameVerifier(i9.b.f8650b);
            this.f2667b = builder.build();
        } catch (KeyManagementException e7) {
            throw new AssertionError(e7);
        } catch (NoSuchAlgorithmException e10) {
            throw new AssertionError(e10);
        }
    }

    public static void b(OkHttpClient okHttpClient, Object obj) {
        if (okHttpClient == null || obj == null) {
            return;
        }
        for (Call call : okHttpClient.dispatcher().queuedCalls()) {
            if (obj.equals(call.request().tag())) {
                call.cancel();
            }
        }
        for (Call call2 : okHttpClient.dispatcher().runningCalls()) {
            if (obj.equals(call2.request().tag())) {
                call2.cancel();
            }
        }
    }

    public final void a(Object obj) {
        if (obj == null) {
            return;
        }
        n9.a.b(this.f2667b, "please call OkGo.getInstance().setOkHttpClient() first in application!");
        for (Call call : this.f2667b.dispatcher().queuedCalls()) {
            if (obj.equals(call.request().tag())) {
                call.cancel();
            }
        }
        n9.a.b(this.f2667b, "please call OkGo.getInstance().setOkHttpClient() first in application!");
        for (Call call2 : this.f2667b.dispatcher().runningCalls()) {
            if (obj.equals(call2.request().tag())) {
                call2.cancel();
            }
        }
    }
}

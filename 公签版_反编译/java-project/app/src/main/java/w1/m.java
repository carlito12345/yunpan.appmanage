package w1;

import android.net.TrafficStats;
import android.net.Uri;
import android.os.Build;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hsae.autosdk.core.NoConst;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import u1.f0;
import u7.d1;
import ua.i8;

/* loaded from: classes.dex */
public final class m extends c {

    /* renamed from: e, reason: collision with root package name */
    public final int f17386e;

    /* renamed from: f, reason: collision with root package name */
    public final int f17387f;

    /* renamed from: g, reason: collision with root package name */
    public final i8 f17388g;

    /* renamed from: h, reason: collision with root package name */
    public final i8 f17389h;

    /* renamed from: i, reason: collision with root package name */
    public j f17390i;

    /* renamed from: j, reason: collision with root package name */
    public HttpURLConnection f17391j;

    /* renamed from: k, reason: collision with root package name */
    public InputStream f17392k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public int f17393m;

    /* renamed from: n, reason: collision with root package name */
    public long f17394n;

    /* renamed from: p, reason: collision with root package name */
    public long f17395p;

    public m(int i10, int i11, i8 i8Var) {
        super(true);
        this.f17386e = i10;
        this.f17387f = i11;
        this.f17388g = i8Var;
        this.f17389h = new i8(6);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // w1.h
    public final void close() {
        try {
            InputStream inputStream = this.f17392k;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e7) {
                    String str = f0.f15206a;
                    throw new q(e7, NoConst.MIN_HEARTBEAT_INTERVAL, 3);
                }
            }
        } finally {
            this.f17392k = null;
            o();
            if (this.l) {
                this.l = false;
                l();
            }
            this.f17391j = null;
            this.f17390i = null;
            TrafficStats.clearThreadStatsTag();
        }
    }

    @Override // w1.c, w1.h
    public final Map g() {
        HttpURLConnection httpURLConnection = this.f17391j;
        return httpURLConnection == null ? d1.f15447g : new l(httpURLConnection.getHeaderFields());
    }

    @Override // w1.h
    public final Uri getUri() {
        HttpURLConnection httpURLConnection = this.f17391j;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        j jVar = this.f17390i;
        if (jVar != null) {
            return jVar.f17367a;
        }
        return null;
    }

    @Override // w1.h
    public final long j(j jVar) throws IOException, NumberFormatException {
        this.f17390i = jVar;
        long j10 = 0;
        this.f17395p = 0L;
        this.f17394n = 0L;
        m();
        try {
            Thread threadCurrentThread = Thread.currentThread();
            TrafficStats.setThreadStatsTag((int) (Build.VERSION.SDK_INT < 36 ? threadCurrentThread.getId() : threadCurrentThread.threadId()));
            HttpURLConnection httpURLConnectionP = p(new URL(jVar.f17367a.toString()), jVar.f17368b, jVar.f17369c, jVar.f17371e, jVar.f17372f, (jVar.f17373g & 1) == 1, true, jVar.f17370d);
            this.f17391j = httpURLConnectionP;
            this.f17393m = httpURLConnectionP.getResponseCode();
            httpURLConnectionP.getResponseMessage();
            int i10 = this.f17393m;
            long j11 = jVar.f17371e;
            long j12 = jVar.f17372f;
            if (i10 < 200 || i10 > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionP.getHeaderFields();
                if (this.f17393m == 416 && j11 == t.b(httpURLConnectionP.getHeaderField("Content-Range"))) {
                    this.l = true;
                    n(jVar);
                    if (j12 != -1) {
                        return j12;
                    }
                    return 0L;
                }
                InputStream errorStream = httpURLConnectionP.getErrorStream();
                try {
                    if (errorStream != null) {
                        v7.g.c(errorStream);
                    } else {
                        String str = f0.f15206a;
                    }
                } catch (IOException unused) {
                    String str2 = f0.f15206a;
                }
                o();
                throw new s(this.f17393m, this.f17393m == 416 ? new i(2008) : null, headerFields);
            }
            httpURLConnectionP.getContentType();
            if (this.f17393m == 200 && j11 != 0) {
                j10 = j11;
            }
            boolean zEqualsIgnoreCase = "gzip".equalsIgnoreCase(httpURLConnectionP.getHeaderField("Content-Encoding"));
            if (zEqualsIgnoreCase || j12 != -1) {
                this.f17394n = j12;
            } else {
                long jA = t.a(httpURLConnectionP.getHeaderField("Content-Length"), httpURLConnectionP.getHeaderField("Content-Range"));
                this.f17394n = jA != -1 ? jA - j10 : -1L;
            }
            try {
                this.f17392k = httpURLConnectionP.getInputStream();
                if (zEqualsIgnoreCase) {
                    this.f17392k = new GZIPInputStream(this.f17392k);
                }
                this.l = true;
                n(jVar);
                try {
                    q(j10);
                    return this.f17394n;
                } catch (IOException e7) {
                    o();
                    if (e7 instanceof q) {
                        throw ((q) e7);
                    }
                    throw new q(e7, NoConst.MIN_HEARTBEAT_INTERVAL, 1);
                }
            } catch (IOException e10) {
                o();
                throw new q(e10, NoConst.MIN_HEARTBEAT_INTERVAL, 1);
            }
        } catch (IOException e11) {
            o();
            throw q.b(e11, 1);
        }
    }

    public final void o() {
        HttpURLConnection httpURLConnection = this.f17391j;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e7) {
                u1.a.g("Unexpected error while disconnecting", e7);
            }
        }
    }

    public final HttpURLConnection p(URL url, int i10, byte[] bArr, long j10, long j11, boolean z, boolean z4, Map map) throws IOException {
        String string;
        String str;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.f17386e);
        httpURLConnection.setReadTimeout(this.f17387f);
        HashMap map2 = new HashMap();
        i8 i8Var = this.f17388g;
        if (i8Var != null) {
            map2.putAll(i8Var.t());
        }
        map2.putAll(this.f17389h.t());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        Pattern pattern = t.f17402a;
        if (j10 == 0 && j11 == -1) {
            string = null;
        } else {
            StringBuilder sbW = android.support.v4.media.session.a.w(j10, "bytes=", "-");
            if (j11 != -1) {
                sbW.append((j10 + j11) - 1);
            }
            string = sbW.toString();
        }
        if (string != null) {
            httpURLConnection.setRequestProperty(HttpHeaders.RANGE, string);
        }
        httpURLConnection.setRequestProperty("Accept-Encoding", z ? "gzip" : HTTP.IDENTITY_CODING);
        httpURLConnection.setInstanceFollowRedirects(z4);
        httpURLConnection.setDoOutput(bArr != null);
        int i11 = j.f17366h;
        if (i10 == 1) {
            str = "GET";
        } else if (i10 == 2) {
            str = "POST";
        } else {
            if (i10 != 3) {
                throw new IllegalStateException();
            }
            str = "HEAD";
        }
        httpURLConnection.setRequestMethod(str);
        if (bArr != null) {
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnection.connect();
        }
        return httpURLConnection;
    }

    public final void q(long j10) throws IOException {
        if (j10 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j10 > 0) {
            int iMin = (int) Math.min(j10, 4096);
            InputStream inputStream = this.f17392k;
            String str = f0.f15206a;
            int i10 = inputStream.read(bArr, 0, iMin);
            if (Thread.currentThread().isInterrupted()) {
                throw new q(new InterruptedIOException(), NoConst.MIN_HEARTBEAT_INTERVAL, 1);
            }
            if (i10 == -1) {
                throw new q();
            }
            j10 -= i10;
            k(i10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0029 A[Catch: IOException -> 0x0033, TRY_LEAVE, TryCatch #0 {IOException -> 0x0033, blocks: (B:4:0x0004, B:6:0x000d, B:9:0x0018, B:10:0x001e, B:13:0x0029), top: B:19:0x0004 }] */
    @Override // r1.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i11 == 0) {
            return 0;
        }
        try {
            long j10 = this.f17394n;
            if (j10 != -1) {
                long j11 = j10 - this.f17395p;
                if (j11 != 0) {
                    i11 = (int) Math.min(i11, j11);
                    InputStream inputStream = this.f17392k;
                    String str = f0.f15206a;
                    i12 = inputStream.read(bArr, i10, i11);
                    if (i12 == -1) {
                        this.f17395p += i12;
                        k(i12);
                        return i12;
                    }
                }
            } else {
                InputStream inputStream2 = this.f17392k;
                String str2 = f0.f15206a;
                i12 = inputStream2.read(bArr, i10, i11);
                if (i12 == -1) {
                }
            }
            return -1;
        } catch (IOException e7) {
            String str3 = f0.f15206a;
            throw q.b(e7, 2);
        }
    }
}

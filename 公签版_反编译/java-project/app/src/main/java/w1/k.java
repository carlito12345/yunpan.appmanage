package w1;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import u1.f0;

/* loaded from: classes.dex */
public final class k implements h {

    /* renamed from: a, reason: collision with root package name */
    public final Context f17374a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f17375b;

    /* renamed from: c, reason: collision with root package name */
    public final h f17376c;

    /* renamed from: d, reason: collision with root package name */
    public o f17377d;

    /* renamed from: e, reason: collision with root package name */
    public b f17378e;

    /* renamed from: f, reason: collision with root package name */
    public e f17379f;

    /* renamed from: g, reason: collision with root package name */
    public h f17380g;

    /* renamed from: h, reason: collision with root package name */
    public z f17381h;

    /* renamed from: i, reason: collision with root package name */
    public f f17382i;

    /* renamed from: j, reason: collision with root package name */
    public v f17383j;

    /* renamed from: k, reason: collision with root package name */
    public h f17384k;

    public k(Context context, h hVar) {
        this.f17374a = context.getApplicationContext();
        hVar.getClass();
        this.f17376c = hVar;
        this.f17375b = new ArrayList();
    }

    public static void l(h hVar, x xVar) {
        if (hVar != null) {
            hVar.f(xVar);
        }
    }

    @Override // w1.h
    public final void close() {
        h hVar = this.f17384k;
        if (hVar != null) {
            try {
                hVar.close();
            } finally {
                this.f17384k = null;
            }
        }
    }

    @Override // w1.h
    public final void f(x xVar) {
        xVar.getClass();
        this.f17376c.f(xVar);
        this.f17375b.add(xVar);
        l(this.f17377d, xVar);
        l(this.f17378e, xVar);
        l(this.f17379f, xVar);
        l(this.f17380g, xVar);
        l(this.f17381h, xVar);
        l(this.f17382i, xVar);
        l(this.f17383j, xVar);
    }

    @Override // w1.h
    public final Map g() {
        h hVar = this.f17384k;
        return hVar == null ? Collections.emptyMap() : hVar.g();
    }

    @Override // w1.h
    public final Uri getUri() {
        h hVar = this.f17384k;
        if (hVar == null) {
            return null;
        }
        return hVar.getUri();
    }

    @Override // w1.h
    public final long j(j jVar) {
        a9.o.t(this.f17384k == null);
        String scheme = jVar.f17367a.getScheme();
        String str = f0.f15206a;
        Uri uri = jVar.f17367a;
        String scheme2 = uri.getScheme();
        boolean zIsEmpty = TextUtils.isEmpty(scheme2);
        Context context = this.f17374a;
        if (zIsEmpty || Objects.equals(scheme2, "file")) {
            String path = uri.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f17377d == null) {
                    o oVar = new o();
                    this.f17377d = oVar;
                    k(oVar);
                }
                this.f17384k = this.f17377d;
            } else {
                if (this.f17378e == null) {
                    b bVar = new b(context);
                    this.f17378e = bVar;
                    k(bVar);
                }
                this.f17384k = this.f17378e;
            }
        } else if ("asset".equals(scheme)) {
            if (this.f17378e == null) {
                b bVar2 = new b(context);
                this.f17378e = bVar2;
                k(bVar2);
            }
            this.f17384k = this.f17378e;
        } else if ("content".equals(scheme)) {
            if (this.f17379f == null) {
                e eVar = new e(context);
                this.f17379f = eVar;
                k(eVar);
            }
            this.f17384k = this.f17379f;
        } else {
            boolean zEquals = "rtmp".equals(scheme);
            h hVar = this.f17376c;
            if (zEquals) {
                if (this.f17380g == null) {
                    try {
                        h hVar2 = (h) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                        this.f17380g = hVar2;
                        k(hVar2);
                    } catch (ClassNotFoundException unused) {
                        u1.a.p("Attempting to play RTMP stream without depending on the RTMP extension");
                    } catch (Exception e7) {
                        throw new RuntimeException("Error instantiating RTMP extension", e7);
                    }
                    if (this.f17380g == null) {
                        this.f17380g = hVar;
                    }
                }
                this.f17384k = this.f17380g;
            } else if ("udp".equals(scheme)) {
                if (this.f17381h == null) {
                    z zVar = new z();
                    this.f17381h = zVar;
                    k(zVar);
                }
                this.f17384k = this.f17381h;
            } else if ("data".equals(scheme)) {
                if (this.f17382i == null) {
                    f fVar = new f();
                    this.f17382i = fVar;
                    k(fVar);
                }
                this.f17384k = this.f17382i;
            } else if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
                if (this.f17383j == null) {
                    v vVar = new v(context);
                    this.f17383j = vVar;
                    k(vVar);
                }
                this.f17384k = this.f17383j;
            } else {
                this.f17384k = hVar;
            }
        }
        return this.f17384k.j(jVar);
    }

    public final void k(h hVar) {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f17375b;
            if (i10 >= arrayList.size()) {
                return;
            }
            hVar.f((x) arrayList.get(i10));
            i10++;
        }
    }

    @Override // r1.h
    public final int read(byte[] bArr, int i10, int i11) {
        h hVar = this.f17384k;
        hVar.getClass();
        return hVar.read(bArr, i10, i11);
    }
}

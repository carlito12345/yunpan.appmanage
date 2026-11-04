package w1;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class w implements h {

    /* renamed from: a, reason: collision with root package name */
    public final h f17410a;

    /* renamed from: b, reason: collision with root package name */
    public long f17411b;

    /* renamed from: c, reason: collision with root package name */
    public Uri f17412c;

    /* renamed from: d, reason: collision with root package name */
    public Map f17413d;

    public w(h hVar) {
        hVar.getClass();
        this.f17410a = hVar;
        this.f17412c = Uri.EMPTY;
        this.f17413d = Collections.emptyMap();
    }

    @Override // w1.h
    public final void close() {
        this.f17410a.close();
    }

    @Override // w1.h
    public final void f(x xVar) {
        xVar.getClass();
        this.f17410a.f(xVar);
    }

    @Override // w1.h
    public final Map g() {
        return this.f17410a.g();
    }

    @Override // w1.h
    public final Uri getUri() {
        return this.f17410a.getUri();
    }

    @Override // w1.h
    public final long j(j jVar) {
        h hVar = this.f17410a;
        this.f17412c = jVar.f17367a;
        this.f17413d = Collections.emptyMap();
        try {
            return hVar.j(jVar);
        } finally {
            Uri uri = hVar.getUri();
            if (uri != null) {
                this.f17412c = uri;
            }
            this.f17413d = hVar.g();
        }
    }

    @Override // r1.h
    public final int read(byte[] bArr, int i10, int i11) {
        int i12 = this.f17410a.read(bArr, i10, i11);
        if (i12 != -1) {
            this.f17411b += i12;
        }
        return i12;
    }
}

package y1;

import android.text.TextUtils;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final String f18608a;

    /* renamed from: b, reason: collision with root package name */
    public final r1.p f18609b;

    /* renamed from: c, reason: collision with root package name */
    public final r1.p f18610c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18611d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18612e;

    public d(String str, r1.p pVar, r1.p pVar2, int i10, int i11) {
        a9.o.k(i10 == 0 || i11 == 0);
        a9.o.k(true ^ TextUtils.isEmpty(str));
        this.f18608a = str;
        pVar.getClass();
        this.f18609b = pVar;
        pVar2.getClass();
        this.f18610c = pVar2;
        this.f18611d = i10;
        this.f18612e = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f18611d == dVar.f18611d && this.f18612e == dVar.f18612e && this.f18608a.equals(dVar.f18608a) && this.f18609b.equals(dVar.f18609b) && this.f18610c.equals(dVar.f18610c);
    }

    public final int hashCode() {
        return this.f18610c.hashCode() + ((this.f18609b.hashCode() + org.bouncycastle.jcajce.provider.digest.a.c((((527 + this.f18611d) * 31) + this.f18612e) * 31, 31, this.f18608a)) * 31);
    }
}

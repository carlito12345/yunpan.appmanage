package w5;

import a6.q;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.i;
import f5.h;
import f5.m;
import h5.l;
import o5.j;
import o5.n;
import o5.s;
import o5.u;

/* loaded from: classes.dex */
public abstract class a implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public int f17567a;

    /* renamed from: d, reason: collision with root package name */
    public int f17570d;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17575i;

    /* renamed from: m, reason: collision with root package name */
    public boolean f17578m;

    /* renamed from: n, reason: collision with root package name */
    public Resources.Theme f17579n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f17580p;
    public boolean r;

    /* renamed from: b, reason: collision with root package name */
    public l f17568b = l.f6608d;

    /* renamed from: c, reason: collision with root package name */
    public i f17569c = i.NORMAL;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17571e = true;

    /* renamed from: f, reason: collision with root package name */
    public int f17572f = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f17573g = -1;

    /* renamed from: h, reason: collision with root package name */
    public f5.f f17574h = z5.c.f19436b;

    /* renamed from: j, reason: collision with root package name */
    public f5.i f17576j = new f5.i();

    /* renamed from: k, reason: collision with root package name */
    public a6.d f17577k = new a6.d();
    public Class l = Object.class;

    /* renamed from: q, reason: collision with root package name */
    public boolean f17581q = true;

    public static boolean i(int i10, int i11) {
        return (i10 & i11) != 0;
    }

    public a a(a aVar) {
        if (this.f17580p) {
            return clone().a(aVar);
        }
        int i10 = aVar.f17567a;
        if (i(aVar.f17567a, 1048576)) {
            this.r = aVar.r;
        }
        if (i(aVar.f17567a, 4)) {
            this.f17568b = aVar.f17568b;
        }
        if (i(aVar.f17567a, 8)) {
            this.f17569c = aVar.f17569c;
        }
        if (i(aVar.f17567a, 16)) {
            this.f17570d = 0;
            this.f17567a &= -33;
        }
        if (i(aVar.f17567a, 32)) {
            this.f17570d = aVar.f17570d;
            this.f17567a &= -17;
        }
        if (i(aVar.f17567a, 64)) {
            this.f17567a &= -129;
        }
        if (i(aVar.f17567a, 128)) {
            this.f17567a &= -65;
        }
        if (i(aVar.f17567a, 256)) {
            this.f17571e = aVar.f17571e;
        }
        if (i(aVar.f17567a, 512)) {
            this.f17573g = aVar.f17573g;
            this.f17572f = aVar.f17572f;
        }
        if (i(aVar.f17567a, 1024)) {
            this.f17574h = aVar.f17574h;
        }
        if (i(aVar.f17567a, 4096)) {
            this.l = aVar.l;
        }
        if (i(aVar.f17567a, 8192)) {
            this.f17567a &= -16385;
        }
        if (i(aVar.f17567a, 16384)) {
            this.f17567a &= -8193;
        }
        if (i(aVar.f17567a, 32768)) {
            this.f17579n = aVar.f17579n;
        }
        if (i(aVar.f17567a, 131072)) {
            this.f17575i = aVar.f17575i;
        }
        if (i(aVar.f17567a, 2048)) {
            this.f17577k.putAll(aVar.f17577k);
            this.f17581q = aVar.f17581q;
        }
        this.f17567a |= aVar.f17567a;
        this.f17576j.f5624b.g(aVar.f17576j.f5624b);
        r();
        return this;
    }

    public a b() {
        if (this.f17578m && !this.f17580p) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.f17580p = true;
        return j();
    }

    @Override // 
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public a clone() {
        try {
            a aVar = (a) super.clone();
            f5.i iVar = new f5.i();
            aVar.f17576j = iVar;
            iVar.f5624b.g(this.f17576j.f5624b);
            a6.d dVar = new a6.d();
            aVar.f17577k = dVar;
            dVar.putAll(this.f17577k);
            aVar.f17578m = false;
            aVar.f17580p = false;
            return aVar;
        } catch (CloneNotSupportedException e7) {
            throw new RuntimeException(e7);
        }
    }

    public a d(Class cls) {
        if (this.f17580p) {
            return clone().d(cls);
        }
        this.l = cls;
        this.f17567a |= 4096;
        r();
        return this;
    }

    public a e(l lVar) {
        if (this.f17580p) {
            return clone().e(lVar);
        }
        this.f17568b = lVar;
        this.f17567a |= 4;
        r();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            return h((a) obj);
        }
        return false;
    }

    public a f(n nVar) {
        return s(n.f11609g, nVar);
    }

    public a g(int i10) {
        if (this.f17580p) {
            return clone().g(i10);
        }
        this.f17570d = i10;
        this.f17567a = (this.f17567a | 32) & (-17);
        r();
        return this;
    }

    public final boolean h(a aVar) {
        aVar.getClass();
        return Float.compare(1.0f, 1.0f) == 0 && this.f17570d == aVar.f17570d && q.b(null, null) && q.b(null, null) && q.b(null, null) && this.f17571e == aVar.f17571e && this.f17572f == aVar.f17572f && this.f17573g == aVar.f17573g && this.f17575i == aVar.f17575i && this.f17568b.equals(aVar.f17568b) && this.f17569c == aVar.f17569c && this.f17576j.equals(aVar.f17576j) && this.f17577k.equals(aVar.f17577k) && this.l.equals(aVar.l) && this.f17574h.equals(aVar.f17574h) && q.b(this.f17579n, aVar.f17579n);
    }

    public int hashCode() {
        char[] cArr = q.f446a;
        return q.h(q.h(q.h(q.h(q.h(q.h(q.h(q.g(0, q.g(0, q.g(1, q.g(this.f17575i ? 1 : 0, q.g(this.f17573g, q.g(this.f17572f, q.g(this.f17571e ? 1 : 0, q.h(q.g(0, q.h(q.g(0, q.h(q.g(this.f17570d, q.g(Float.floatToIntBits(1.0f), 17)), null)), null)), null)))))))), this.f17568b), this.f17569c), this.f17576j), this.f17577k), this.l), this.f17574h), this.f17579n);
    }

    public a j() {
        this.f17578m = true;
        return this;
    }

    public a k() {
        return n(n.f11606d, new o5.i());
    }

    public a l() {
        a aVarN = n(n.f11605c, new j());
        aVarN.f17581q = true;
        return aVarN;
    }

    public a m() {
        a aVarN = n(n.f11604b, new u());
        aVarN.f17581q = true;
        return aVarN;
    }

    public final a n(n nVar, o5.e eVar) {
        if (this.f17580p) {
            return clone().n(nVar, eVar);
        }
        f(nVar);
        return w(eVar, false);
    }

    public a o(int i10, int i11) {
        if (this.f17580p) {
            return clone().o(i10, i11);
        }
        this.f17573g = i10;
        this.f17572f = i11;
        this.f17567a |= 512;
        r();
        return this;
    }

    public a p() {
        i iVar = i.LOW;
        if (this.f17580p) {
            return clone().p();
        }
        this.f17569c = iVar;
        this.f17567a |= 8;
        r();
        return this;
    }

    public final a q(h hVar) {
        if (this.f17580p) {
            return clone().q(hVar);
        }
        this.f17576j.f5624b.remove(hVar);
        r();
        return this;
    }

    public final void r() {
        if (this.f17578m) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
    }

    public a s(h hVar, Object obj) {
        if (this.f17580p) {
            return clone().s(hVar, obj);
        }
        a6.h.b(hVar);
        a6.h.b(obj);
        this.f17576j.f5624b.put(hVar, obj);
        r();
        return this;
    }

    public a t(f5.f fVar) {
        if (this.f17580p) {
            return clone().t(fVar);
        }
        this.f17574h = fVar;
        this.f17567a |= 1024;
        r();
        return this;
    }

    public a u() {
        if (this.f17580p) {
            return clone().u();
        }
        this.f17571e = false;
        this.f17567a |= 256;
        r();
        return this;
    }

    public a v(Resources.Theme theme) {
        if (this.f17580p) {
            return clone().v(theme);
        }
        this.f17579n = theme;
        if (theme != null) {
            this.f17567a |= 32768;
            return s(q5.c.f13028b, theme);
        }
        this.f17567a &= -32769;
        return q(q5.c.f13028b);
    }

    public final a w(m mVar, boolean z) {
        if (this.f17580p) {
            return clone().w(mVar, z);
        }
        s sVar = new s(mVar, z);
        x(Bitmap.class, mVar, z);
        x(Drawable.class, sVar, z);
        x(BitmapDrawable.class, sVar, z);
        x(s5.b.class, new s5.d(mVar), z);
        r();
        return this;
    }

    public final a x(Class cls, m mVar, boolean z) {
        if (this.f17580p) {
            return clone().x(cls, mVar, z);
        }
        a6.h.b(mVar);
        this.f17577k.put(cls, mVar);
        int i10 = this.f17567a;
        this.f17567a = 67584 | i10;
        this.f17581q = false;
        if (z) {
            this.f17567a = i10 | 198656;
            this.f17575i = true;
        }
        r();
        return this;
    }

    public a y() {
        if (this.f17580p) {
            return clone().y();
        }
        this.r = true;
        this.f17567a |= 1048576;
        r();
        return this;
    }
}

package uh;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* loaded from: classes3.dex */
public final class m {

    /* renamed from: f, reason: collision with root package name */
    public static final s5.c f16144f = new s5.c(17);

    /* renamed from: a, reason: collision with root package name */
    public m f16145a;

    /* renamed from: b, reason: collision with root package name */
    public final m f16146b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f16147c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f16148d;

    /* renamed from: e, reason: collision with root package name */
    public int f16149e;

    static {
        HashMap map = new HashMap();
        map.put('G', wh.a.ERA);
        map.put('y', wh.a.YEAR_OF_ERA);
        map.put('u', wh.a.YEAR);
        int i10 = wh.i.f17925a;
        wh.d dVar = wh.g.f17918a;
        map.put('Q', dVar);
        map.put('q', dVar);
        wh.a aVar = wh.a.MONTH_OF_YEAR;
        map.put('M', aVar);
        map.put(Character.valueOf(Matrix.MATRIX_TYPE_RANDOM_LT), aVar);
        map.put('D', wh.a.DAY_OF_YEAR);
        map.put('d', wh.a.DAY_OF_MONTH);
        map.put('F', wh.a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        wh.a aVar2 = wh.a.DAY_OF_WEEK;
        map.put('E', aVar2);
        map.put('c', aVar2);
        map.put('e', aVar2);
        map.put('a', wh.a.AMPM_OF_DAY);
        map.put('H', wh.a.HOUR_OF_DAY);
        map.put('k', wh.a.CLOCK_HOUR_OF_DAY);
        map.put('K', wh.a.HOUR_OF_AMPM);
        map.put('h', wh.a.CLOCK_HOUR_OF_AMPM);
        map.put('m', wh.a.MINUTE_OF_HOUR);
        map.put('s', wh.a.SECOND_OF_MINUTE);
        wh.a aVar3 = wh.a.NANO_OF_SECOND;
        map.put('S', aVar3);
        map.put('A', wh.a.MILLI_OF_DAY);
        map.put('n', aVar3);
        map.put('N', wh.a.NANO_OF_DAY);
    }

    public m() {
        this.f16145a = this;
        this.f16147c = new ArrayList();
        this.f16149e = -1;
        this.f16146b = null;
        this.f16148d = false;
    }

    public final void a(a aVar) {
        d dVar = aVar.f16113a;
        if (dVar.f16121b) {
            dVar = new d(dVar.f16120a, false);
        }
        b(dVar);
    }

    public final int b(e eVar) {
        p000if.a.t0(eVar, "pp");
        m mVar = this.f16145a;
        mVar.getClass();
        mVar.f16147c.add(eVar);
        this.f16145a.f16149e = -1;
        return r2.f16147c.size() - 1;
    }

    public final void c(char c7) {
        b(new c(c7));
    }

    public final void d(String str) {
        if (str.length() > 0) {
            if (str.length() == 1) {
                b(new c(str.charAt(0)));
            } else {
                b(new k(str));
            }
        }
    }

    public final void e(wh.a aVar, HashMap map) {
        p000if.a.t0(aVar, "field");
        b(new l(aVar, new b(new com.bumptech.glide.h(Collections.singletonMap(s.FULL, new LinkedHashMap(map))))));
    }

    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, wh.m] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Enum, wh.m] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, wh.m] */
    public final void f(h hVar) {
        int i10;
        h hVar2 = hVar;
        m mVar = this.f16145a;
        int i11 = mVar.f16149e;
        if (i11 < 0 || !(mVar.f16147c.get(i11) instanceof h)) {
            this.f16145a.f16149e = b(hVar);
            return;
        }
        m mVar2 = this.f16145a;
        int i12 = mVar2.f16149e;
        h hVar3 = (h) mVar2.f16147c.get(i12);
        int i13 = hVar2.f16128b;
        int i14 = hVar2.f16129c;
        if (i13 == i14 && (i10 = hVar2.f16130d) == 4) {
            h hVar4 = new h(hVar3.f16127a, hVar3.f16128b, hVar3.f16129c, hVar3.f16130d, hVar3.f16131e + i14);
            if (hVar2.f16131e != -1) {
                hVar2 = new h(hVar2.f16127a, i13, i14, i10, -1);
            }
            b(hVar2);
            this.f16145a.f16149e = i12;
            hVar3 = hVar4;
        } else {
            if (hVar3.f16131e != -1) {
                hVar3 = new h(hVar3.f16127a, hVar3.f16128b, hVar3.f16129c, hVar3.f16130d, -1);
            }
            this.f16145a.f16149e = b(hVar);
        }
        this.f16145a.f16147c.set(i12, hVar3);
    }

    public final void g(wh.m mVar, int i10) {
        p000if.a.t0(mVar, "field");
        if (i10 < 1 || i10 > 19) {
            throw new IllegalArgumentException(da.b.a(i10, "The width must be from 1 to 19 inclusive but was "));
        }
        f(new h(mVar, i10, i10, 4));
    }

    public final void h(wh.m mVar, int i10, int i11, int i12) {
        if (i10 == i11 && i12 == 4) {
            g(mVar, i11);
            return;
        }
        p000if.a.t0(mVar, "field");
        if (i12 == 0) {
            throw new NullPointerException(g.b.j("signStyle", " must not be null"));
        }
        if (i10 < 1 || i10 > 19) {
            throw new IllegalArgumentException(da.b.a(i10, "The minimum width must be from 1 to 19 inclusive but was "));
        }
        if (i11 < 1 || i11 > 19) {
            throw new IllegalArgumentException(da.b.a(i11, "The maximum width must be from 1 to 19 inclusive but was "));
        }
        if (i11 < i10) {
            throw new IllegalArgumentException(android.support.v4.media.session.a.o("The maximum width must exceed or equal the minimum width but ", i11, i10, " < "));
        }
        f(new h(mVar, i10, i11, i12));
    }

    public final void i() {
        m mVar = this.f16145a;
        if (mVar.f16146b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (mVar.f16147c.size() <= 0) {
            this.f16145a = this.f16145a.f16146b;
            return;
        }
        m mVar2 = this.f16145a;
        d dVar = new d(mVar2.f16147c, mVar2.f16148d);
        this.f16145a = this.f16145a.f16146b;
        b(dVar);
    }

    public final void j() {
        m mVar = this.f16145a;
        mVar.f16149e = -1;
        this.f16145a = new m(mVar);
    }

    public final a k() {
        Locale locale = Locale.getDefault();
        p000if.a.t0(locale, "locale");
        while (this.f16145a.f16146b != null) {
            i();
        }
        return new a(new d(this.f16147c, false), locale, p.f16154a, q.SMART, null);
    }

    public final a l(q qVar) {
        a aVarK = k();
        if (p000if.a.z(aVarK.f16116d, qVar)) {
            return aVarK;
        }
        return new a(aVarK.f16113a, aVarK.f16114b, aVarK.f16115c, qVar, aVarK.f16117e);
    }

    public m(m mVar) {
        this.f16145a = this;
        this.f16147c = new ArrayList();
        this.f16149e = -1;
        this.f16146b = mVar;
        this.f16148d = true;
    }
}

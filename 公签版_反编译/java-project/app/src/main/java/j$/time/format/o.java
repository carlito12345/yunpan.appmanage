package j$.time.format;

import j$.time.x;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import org.bouncycastle.pqc.legacy.math.linearalgebra.Matrix;

/* loaded from: classes2.dex */
public final class o {

    /* renamed from: f, reason: collision with root package name */
    private static final b f8865f = new j$.time.temporal.t() { // from class: j$.time.format.b
        @Override // j$.time.temporal.t
        public final Object a(j$.time.temporal.o oVar) {
            j$.time.w wVar = (j$.time.w) oVar.v(j$.time.temporal.n.k());
            if (wVar == null || (wVar instanceof x)) {
                return null;
            }
            return wVar;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    private o f8866a;

    /* renamed from: b, reason: collision with root package name */
    private final o f8867b;

    /* renamed from: c, reason: collision with root package name */
    private final ArrayList f8868c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f8869d;

    /* renamed from: e, reason: collision with root package name */
    private int f8870e;

    /* JADX WARN: Type inference failed for: r0v0, types: [j$.time.format.b] */
    static {
        HashMap map = new HashMap();
        map.put('G', j$.time.temporal.a.ERA);
        map.put('y', j$.time.temporal.a.YEAR_OF_ERA);
        map.put('u', j$.time.temporal.a.YEAR);
        j$.time.temporal.r rVar = j$.time.temporal.j.f8928a;
        map.put('Q', rVar);
        map.put('q', rVar);
        j$.time.temporal.a aVar = j$.time.temporal.a.MONTH_OF_YEAR;
        map.put('M', aVar);
        map.put(Character.valueOf(Matrix.MATRIX_TYPE_RANDOM_LT), aVar);
        map.put('D', j$.time.temporal.a.DAY_OF_YEAR);
        map.put('d', j$.time.temporal.a.DAY_OF_MONTH);
        map.put('F', j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH);
        j$.time.temporal.a aVar2 = j$.time.temporal.a.DAY_OF_WEEK;
        map.put('E', aVar2);
        map.put('c', aVar2);
        map.put('e', aVar2);
        map.put('a', j$.time.temporal.a.AMPM_OF_DAY);
        map.put('H', j$.time.temporal.a.HOUR_OF_DAY);
        map.put('k', j$.time.temporal.a.CLOCK_HOUR_OF_DAY);
        map.put('K', j$.time.temporal.a.HOUR_OF_AMPM);
        map.put('h', j$.time.temporal.a.CLOCK_HOUR_OF_AMPM);
        map.put('m', j$.time.temporal.a.MINUTE_OF_HOUR);
        map.put('s', j$.time.temporal.a.SECOND_OF_MINUTE);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.NANO_OF_SECOND;
        map.put('S', aVar3);
        map.put('A', j$.time.temporal.a.MILLI_OF_DAY);
        map.put('n', aVar3);
        map.put('N', j$.time.temporal.a.NANO_OF_DAY);
        map.put('g', j$.time.temporal.l.f8935a);
    }

    public o() {
        this.f8866a = this;
        this.f8868c = new ArrayList();
        this.f8870e = -1;
        this.f8867b = null;
        this.f8869d = false;
    }

    private o(o oVar) {
        this.f8866a = this;
        this.f8868c = new ArrayList();
        this.f8870e = -1;
        this.f8867b = oVar;
        this.f8869d = true;
    }

    public final void q() {
        d(l.SENSITIVE);
    }

    public final void p() {
        d(l.INSENSITIVE);
    }

    public final void s() {
        d(l.STRICT);
    }

    public final void r() {
        d(l.LENIENT);
    }

    public final void k(j$.time.temporal.r rVar, int i10) {
        Objects.requireNonNull(rVar, "field");
        if (i10 < 1 || i10 > 19) {
            throw new IllegalArgumentException("The width must be from 1 to 19 inclusive but was " + i10);
        }
        j(new j(rVar, i10, i10, v.NOT_NEGATIVE));
    }

    public final void l(j$.time.temporal.r rVar, int i10, int i11, v vVar) {
        if (i10 == i11 && vVar == v.NOT_NEGATIVE) {
            k(rVar, i11);
            return;
        }
        Objects.requireNonNull(rVar, "field");
        Objects.requireNonNull(vVar, "signStyle");
        if (i10 < 1 || i10 > 19) {
            throw new IllegalArgumentException("The minimum width must be from 1 to 19 inclusive but was " + i10);
        }
        if (i11 < 1 || i11 > 19) {
            throw new IllegalArgumentException("The maximum width must be from 1 to 19 inclusive but was " + i11);
        }
        if (i11 < i10) {
            throw new IllegalArgumentException("The maximum width must exceed or equal the minimum width but " + i11 + " < " + i10);
        }
        j(new j(rVar, i10, i11, vVar));
    }

    private void j(j jVar) {
        j jVarB;
        o oVar = this.f8866a;
        int i10 = oVar.f8870e;
        if (i10 >= 0) {
            j jVar2 = (j) oVar.f8868c.get(i10);
            int i11 = jVar.f8849b;
            int i12 = jVar.f8850c;
            if (i11 == i12 && jVar.f8851d == v.NOT_NEGATIVE) {
                jVarB = jVar2.c(i12);
                d(jVar.b());
                this.f8866a.f8870e = i10;
            } else {
                jVarB = jVar2.b();
                this.f8866a.f8870e = d(jVar);
            }
            this.f8866a.f8868c.set(i10, jVarB);
            return;
        }
        oVar.f8870e = d(jVar);
    }

    public final void b(j$.time.temporal.a aVar) {
        h hVar = new h(aVar, 0, 9, true, 0);
        Objects.requireNonNull(aVar, "field");
        if (aVar.j().g()) {
            d(hVar);
        } else {
            throw new IllegalArgumentException("Field must have a fixed set of values: " + aVar);
        }
    }

    public final void i(j$.time.temporal.a aVar, HashMap map) {
        Objects.requireNonNull(aVar, "field");
        Objects.requireNonNull(map, "textLookup");
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        w wVar = w.FULL;
        d(new n(aVar, wVar, new c(new s(Collections.singletonMap(wVar, linkedHashMap)))));
    }

    public final void c() {
        d(new i());
    }

    public final void h() {
        d(k.f8854e);
    }

    public final void g(String str, String str2) {
        d(new k(str, str2));
    }

    public final void m() {
        d(new m(f8865f, 1));
    }

    public final void e(char c7) {
        d(new e(c7));
    }

    public final void f(String str) {
        Objects.requireNonNull(str, "literal");
        if (str.isEmpty()) {
            return;
        }
        if (str.length() == 1) {
            d(new e(str.charAt(0)));
        } else {
            d(new m(str, 0));
        }
    }

    public final void a(a aVar) {
        Objects.requireNonNull(aVar, "formatter");
        d(aVar.e());
    }

    public final void o() {
        o oVar = this.f8866a;
        oVar.f8870e = -1;
        this.f8866a = new o(oVar);
    }

    public final void n() {
        o oVar = this.f8866a;
        if (oVar.f8867b == null) {
            throw new IllegalStateException("Cannot call optionalEnd() as there was no previous call to optionalStart()");
        }
        if (oVar.f8868c.size() > 0) {
            o oVar2 = this.f8866a;
            f fVar = new f(oVar2.f8868c, oVar2.f8869d);
            this.f8866a = this.f8866a.f8867b;
            d(fVar);
            return;
        }
        this.f8866a = this.f8866a.f8867b;
    }

    private int d(g gVar) {
        Objects.requireNonNull(gVar, "pp");
        o oVar = this.f8866a;
        oVar.getClass();
        oVar.f8868c.add(gVar);
        this.f8866a.f8870e = -1;
        return r2.f8868c.size() - 1;
    }

    public final void v() {
        u(Locale.getDefault(), u.SMART, null);
    }

    final a t(u uVar, j$.time.chrono.u uVar2) {
        return u(Locale.getDefault(), uVar, uVar2);
    }

    private a u(Locale locale, u uVar, j$.time.chrono.u uVar2) {
        Objects.requireNonNull(locale, "locale");
        while (this.f8866a.f8867b != null) {
            n();
        }
        f fVar = new f(this.f8868c, false);
        t tVar = t.f8879a;
        return new a(fVar, locale, uVar, uVar2);
    }
}

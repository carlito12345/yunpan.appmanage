package uh;

import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: f, reason: collision with root package name */
    public static final a f16112f;

    /* renamed from: a, reason: collision with root package name */
    public final d f16113a;

    /* renamed from: b, reason: collision with root package name */
    public final Locale f16114b;

    /* renamed from: c, reason: collision with root package name */
    public final p f16115c;

    /* renamed from: d, reason: collision with root package name */
    public final q f16116d;

    /* renamed from: e, reason: collision with root package name */
    public final th.e f16117e;

    static {
        m mVar = new m();
        wh.a aVar = wh.a.YEAR;
        mVar.h(aVar, 4, 10, 5);
        mVar.c('-');
        wh.a aVar2 = wh.a.MONTH_OF_YEAR;
        mVar.g(aVar2, 2);
        mVar.c('-');
        wh.a aVar3 = wh.a.DAY_OF_MONTH;
        mVar.g(aVar3, 2);
        q qVar = q.STRICT;
        a aVarL = mVar.l(qVar);
        th.e eVar = th.e.f15102a;
        a aVarA = aVarL.a(eVar);
        m mVar2 = new m();
        j jVar = j.INSENSITIVE;
        mVar2.b(jVar);
        mVar2.a(aVarA);
        i iVar = i.f16133d;
        mVar2.b(iVar);
        mVar2.l(qVar).a(eVar);
        m mVar3 = new m();
        mVar3.b(jVar);
        mVar3.a(aVarA);
        mVar3.j();
        mVar3.b(iVar);
        mVar3.l(qVar).a(eVar);
        m mVar4 = new m();
        wh.a aVar4 = wh.a.HOUR_OF_DAY;
        mVar4.g(aVar4, 2);
        mVar4.c(':');
        wh.a aVar5 = wh.a.MINUTE_OF_HOUR;
        mVar4.g(aVar5, 2);
        mVar4.j();
        mVar4.c(':');
        wh.a aVar6 = wh.a.SECOND_OF_MINUTE;
        mVar4.g(aVar6, 2);
        mVar4.j();
        mVar4.b(new f(wh.a.NANO_OF_SECOND));
        a aVarL2 = mVar4.l(qVar);
        m mVar5 = new m();
        mVar5.b(jVar);
        mVar5.a(aVarL2);
        mVar5.b(iVar);
        mVar5.l(qVar);
        m mVar6 = new m();
        mVar6.b(jVar);
        mVar6.a(aVarL2);
        mVar6.j();
        mVar6.b(iVar);
        mVar6.l(qVar);
        m mVar7 = new m();
        mVar7.b(jVar);
        mVar7.a(aVarA);
        mVar7.c('T');
        mVar7.a(aVarL2);
        a aVarA2 = mVar7.l(qVar).a(eVar);
        m mVar8 = new m();
        mVar8.b(jVar);
        mVar8.a(aVarA2);
        mVar8.b(iVar);
        a aVarA3 = mVar8.l(qVar).a(eVar);
        m mVar9 = new m();
        mVar9.a(aVarA3);
        mVar9.j();
        mVar9.c('[');
        j jVar2 = j.SENSITIVE;
        mVar9.b(jVar2);
        mVar9.b(new g(1));
        mVar9.c(']');
        mVar9.l(qVar).a(eVar);
        m mVar10 = new m();
        mVar10.a(aVarA2);
        mVar10.j();
        mVar10.b(iVar);
        mVar10.j();
        mVar10.c('[');
        mVar10.b(jVar2);
        mVar10.b(new g(1));
        mVar10.c(']');
        mVar10.l(qVar).a(eVar);
        m mVar11 = new m();
        mVar11.b(jVar);
        mVar11.h(aVar, 4, 10, 5);
        mVar11.c('-');
        mVar11.g(wh.a.DAY_OF_YEAR, 3);
        mVar11.j();
        mVar11.b(iVar);
        mVar11.l(qVar).a(eVar);
        m mVar12 = new m();
        mVar12.b(jVar);
        int i10 = wh.i.f17925a;
        mVar12.h(wh.g.f17920c, 4, 10, 5);
        mVar12.d("-W");
        mVar12.g(wh.g.f17919b, 2);
        mVar12.c('-');
        wh.a aVar7 = wh.a.DAY_OF_WEEK;
        mVar12.g(aVar7, 1);
        mVar12.j();
        mVar12.b(iVar);
        mVar12.l(qVar).a(eVar);
        m mVar13 = new m();
        mVar13.b(jVar);
        mVar13.b(new g(0));
        f16112f = mVar13.l(qVar);
        m mVar14 = new m();
        mVar14.b(jVar);
        mVar14.g(aVar, 4);
        mVar14.g(aVar2, 2);
        mVar14.g(aVar3, 2);
        mVar14.j();
        mVar14.b(new i("Z", "+HHMMss"));
        mVar14.l(qVar).a(eVar);
        HashMap map = new HashMap();
        map.put(1L, "Mon");
        map.put(2L, "Tue");
        map.put(3L, "Wed");
        map.put(4L, "Thu");
        map.put(5L, "Fri");
        map.put(6L, "Sat");
        map.put(7L, "Sun");
        HashMap map2 = new HashMap();
        map2.put(1L, "Jan");
        map2.put(2L, "Feb");
        map2.put(3L, "Mar");
        map2.put(4L, "Apr");
        map2.put(5L, "May");
        map2.put(6L, "Jun");
        map2.put(7L, "Jul");
        map2.put(8L, "Aug");
        map2.put(9L, "Sep");
        map2.put(10L, "Oct");
        map2.put(11L, "Nov");
        map2.put(12L, "Dec");
        m mVar15 = new m();
        mVar15.b(jVar);
        mVar15.b(j.LENIENT);
        mVar15.j();
        mVar15.e(aVar7, map);
        mVar15.d(", ");
        mVar15.i();
        mVar15.h(aVar3, 1, 2, 4);
        mVar15.c(' ');
        mVar15.e(aVar2, map2);
        mVar15.c(' ');
        mVar15.g(aVar, 4);
        mVar15.c(' ');
        mVar15.g(aVar4, 2);
        mVar15.c(':');
        mVar15.g(aVar5, 2);
        mVar15.j();
        mVar15.c(':');
        mVar15.g(aVar6, 2);
        mVar15.i();
        mVar15.c(' ');
        mVar15.b(new i("GMT", "+HHMM"));
        mVar15.l(q.SMART).a(eVar);
    }

    public a(d dVar, Locale locale, p pVar, q qVar, th.e eVar) {
        p000if.a.t0(dVar, "printerParser");
        this.f16113a = dVar;
        p000if.a.t0(locale, "locale");
        this.f16114b = locale;
        p000if.a.t0(pVar, "decimalStyle");
        this.f16115c = pVar;
        p000if.a.t0(qVar, "resolverStyle");
        this.f16116d = qVar;
        this.f16117e = eVar;
    }

    public final a a(th.e eVar) {
        if (p000if.a.z(this.f16117e, eVar)) {
            return this;
        }
        return new a(this.f16113a, this.f16114b, this.f16115c, this.f16116d, eVar);
    }

    public final String toString() {
        String string = this.f16113a.toString();
        return string.startsWith("[") ? string : android.support.v4.media.session.a.l(1, 1, string);
    }
}

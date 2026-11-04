package ph;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.stream.Collectors;
import j$.util.stream.Stream;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.regex.Pattern;
import l5.y;
import qh.e0;
import qh.f0;
import qh.h0;

/* loaded from: classes3.dex */
public class l extends q implements Iterable, Iterable {

    /* renamed from: g, reason: collision with root package name */
    public static final List f12719g = Collections.emptyList();

    /* renamed from: h, reason: collision with root package name */
    public static final k f12720h = new k(0);

    /* renamed from: i, reason: collision with root package name */
    public static final String f12721i;

    /* renamed from: d, reason: collision with root package name */
    public final f0 f12722d;

    /* renamed from: e, reason: collision with root package name */
    public k f12723e;

    /* renamed from: f, reason: collision with root package name */
    public c f12724f;

    static {
        Pattern.compile("\\s+");
        f12721i = "/baseUri";
    }

    public l(f0 f0Var, String str, c cVar) {
        nh.b.d0(f0Var);
        this.f12723e = f12720h;
        this.f12724f = cVar;
        this.f12722d = f0Var;
        if (str != null) {
            F(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void C(StringBuilder sb2, x xVar) {
        String strA = xVar.A();
        l lVar = xVar.f12741a;
        if (lVar instanceof l) {
            int i10 = 0;
            while ((lVar.f12722d.f13286d & 64) == 0) {
                lVar = lVar.f12741a;
                i10++;
                if (i10 >= 6 || lVar == null) {
                    if (!(xVar instanceof d)) {
                        oh.f.a(sb2, strA, x.D(sb2));
                        return;
                    }
                }
            }
        } else if (!(xVar instanceof d)) {
        }
        sb2.append(strA);
    }

    public final void A(q qVar) {
        nh.b.d0(qVar);
        l lVar = qVar.f12741a;
        if (lVar != null) {
            lVar.x(qVar);
        }
        qVar.f12741a = this;
        h();
        this.f12723e.add(qVar);
        qVar.f12742b = this.f12723e.size() - 1;
    }

    public final l B(String str) {
        String str2 = this.f12722d.f13283a;
        h hVarT = t();
        e0 e0Var = hVarT != null ? hVarT.f12716k : new e0(new qh.c());
        if (e0Var.f13282d == null) {
            e0Var.f13279a.getClass();
            e0Var.f13282d = new h0(h0.f13288c);
        }
        h0 h0Var = e0Var.f13282d;
        h0Var.getClass();
        l lVar = new l(h0Var.d(str, oh.a.d(str), str2, e0Var.f13281c.f13277a), d(), null);
        A(lVar);
        return lVar;
    }

    public final List D() {
        List list;
        Integer num;
        if (this.f12723e.size() == 0) {
            return f12719g;
        }
        Map mapL = c().l();
        WeakReference weakReference = (WeakReference) mapL.get("jsoup.childEls");
        if (weakReference == null || (list = (List) weakReference.get()) == null || (num = (Integer) mapL.get("jsoup.childElsMod")) == null || num.intValue() != this.f12723e.b()) {
            list = null;
        }
        if (list != null) {
            return list;
        }
        List listH = H(l.class);
        Map mapL2 = c().l();
        mapL2.put("jsoup.childEls", new WeakReference(listH));
        mapL2.put("jsoup.childElsMod", Integer.valueOf(this.f12723e.b()));
        return listH;
    }

    @Override // ph.q
    /* renamed from: E */
    public l clone() {
        return (l) super.clone();
    }

    public final void F(String str) {
        c().j(f12721i, str);
    }

    public final int G() {
        l lVar = this.f12741a;
        if (lVar == null) {
            return 0;
        }
        List listD = lVar.D();
        int size = listD.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (listD.get(i10) == this) {
                return i10;
            }
        }
        return 0;
    }

    public final List H(Class cls) {
        return (List) Collection.EL.stream(this.f12723e).filter(new com.hierynomus.smbj.auth.a(6, cls)).map(new mg.b(1, cls)).collect(Collectors.collectingAndThen(Collectors.toList(), new a2.n(5)));
    }

    public final l I() {
        for (q qVarI = i(); qVarI != null; qVarI = qVarI.n()) {
            if (qVarI instanceof l) {
                return (l) qVarI;
            }
        }
        return null;
    }

    public void J(oh.a aVar, g gVar) {
        if (this.f12723e.isEmpty()) {
            return;
        }
        oh.a aVarB = aVar.b("</");
        int i10 = gVar.f12714f;
        f0 f0Var = this.f12722d;
        aVarB.b(i10 == 2 ? a.a(2, f0Var.f13284b) : f0Var.f13284b).a('>');
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String K() {
        StringBuilder sbB = oh.f.b();
        for (int i10 = 0; i10 < this.f12723e.size(); i10++) {
            q qVar = (q) this.f12723e.get(i10);
            if (qVar instanceof x) {
                C(sbB, (x) qVar);
            } else if (qVar.l("br") && !x.D(sbB)) {
                sbB.append(" ");
            }
        }
        return oh.f.l(sbB).trim();
    }

    public final rh.e L(String str) {
        Stream streamFilter;
        nh.b.b0(str);
        rh.p pVarR = rh.v.R(str);
        if (pVarR.f()) {
            pVarR.e();
            streamFilter = q4.a.b0(this, l.class).filter(new rh.f(pVarR, this, 1));
        } else {
            pVarR.e();
            streamFilter = q4.a.b0(this, l.class).filter(new rh.f(pVarR, this, 0));
        }
        return (rh.e) streamFilter.collect(Collectors.toCollection(new ah.a(7)));
    }

    public final String M() {
        StringBuilder sbB = oh.f.b();
        org.bouncycastle.jcajce.provider.digest.a.a(new y(11, sbB), this);
        return oh.f.l(sbB).trim();
    }

    @Override // ph.q
    public final c c() {
        if (this.f12724f == null) {
            this.f12724f = new c();
        }
        return this.f12724f;
    }

    @Override // ph.q
    public final String d() {
        for (l lVar = this; lVar != null; lVar = lVar.f12741a) {
            c cVar = lVar.f12724f;
            if (cVar != null) {
                String str = f12721i;
                if (cVar.g(str) != -1) {
                    return lVar.f12724f.d(str);
                }
            }
        }
        return "";
    }

    @Override // ph.q
    public final int e() {
        return this.f12723e.size();
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        q4.a.b0(this, l.class).forEach(consumer);
    }

    @Override // ph.q
    public final q g(q qVar) {
        l lVar = (l) super.g(qVar);
        k kVar = new k(this.f12723e.size());
        lVar.f12723e = kVar;
        kVar.addAll(this.f12723e);
        c cVar = this.f12724f;
        if (cVar != null) {
            c cVarC = cVar.clone();
            lVar.f12724f = cVarC;
            cVarC.l().put("jsoup.childEls", null);
        }
        return lVar;
    }

    @Override // ph.q
    public final List h() {
        if (this.f12723e == f12720h) {
            this.f12723e = new k(4);
        }
        return this.f12723e;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new r(this, l.class);
    }

    @Override // ph.q
    public final boolean k() {
        return this.f12724f != null;
    }

    @Override // ph.q
    public String o() {
        return this.f12722d.f13284b;
    }

    @Override // ph.q
    public final String p() {
        return (String) Collection.EL.stream(this.f12723e).map(new a2.n(6)).collect(oh.f.k(""));
    }

    @Override // ph.q
    public final String q() {
        return this.f12722d.f13285c;
    }

    @Override // ph.q
    public void s(oh.a aVar, g gVar) {
        int i10 = gVar.f12714f;
        f0 f0Var = this.f12722d;
        String strA = i10 == 2 ? a.a(2, f0Var.f13284b) : f0Var.f13284b;
        aVar.a('<').b(strA);
        c cVar = this.f12724f;
        if (cVar != null) {
            cVar.f(aVar, gVar);
        }
        if (!this.f12723e.isEmpty()) {
            aVar.a('>');
            return;
        }
        f0 f0Var2 = this.f12722d;
        boolean z = gVar.f12714f == 2 || !f0Var2.f13283a.equals("http://www.w3.org/1999/xhtml");
        if (z && (f0Var2.b(32) || (f0Var2.c() && ((f0Var2.f13286d & 2) != 0 || f0Var2.d())))) {
            aVar.b(" />");
        } else if (z || (f0Var2.f13286d & 2) == 0) {
            aVar.b("></").b(strA).a('>');
        } else {
            aVar.a('>');
        }
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(Iterable.CC.$default$spliterator(this));
    }

    @Override // ph.q
    public final l u() {
        return this.f12741a;
    }

    @Override // ph.q
    public final q z() {
        l lVar = this;
        while (true) {
            l lVar2 = lVar.f12741a;
            if (lVar2 == null) {
                return lVar;
            }
            lVar = lVar2;
        }
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final /* synthetic */ j$.util.Spliterator spliterator() {
        return Iterable.CC.$default$spliterator(this);
    }
}

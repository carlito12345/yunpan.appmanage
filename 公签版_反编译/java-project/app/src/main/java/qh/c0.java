package qh;

import java.util.Map;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes3.dex */
public abstract class c0 {
    public static final String A;
    public static final /* synthetic */ c0[] B;

    /* renamed from: a, reason: collision with root package name */
    public static final n f13254a;

    /* renamed from: b, reason: collision with root package name */
    public static final t f13255b;

    /* renamed from: c, reason: collision with root package name */
    public static final u f13256c;

    /* renamed from: d, reason: collision with root package name */
    public static final v f13257d;

    /* renamed from: e, reason: collision with root package name */
    public static final w f13258e;

    /* renamed from: f, reason: collision with root package name */
    public static final x f13259f;

    /* renamed from: g, reason: collision with root package name */
    public static final y f13260g;

    /* renamed from: h, reason: collision with root package name */
    public static final z f13261h;

    /* renamed from: i, reason: collision with root package name */
    public static final a0 f13262i;

    /* renamed from: j, reason: collision with root package name */
    public static final d f13263j;

    /* renamed from: k, reason: collision with root package name */
    public static final e f13264k;
    public static final f l;

    /* renamed from: m, reason: collision with root package name */
    public static final g f13265m;

    /* renamed from: n, reason: collision with root package name */
    public static final h f13266n;

    /* renamed from: p, reason: collision with root package name */
    public static final i f13267p;

    /* renamed from: q, reason: collision with root package name */
    public static final j f13268q;
    public static final k r;

    /* renamed from: s, reason: collision with root package name */
    public static final l f13269s;

    /* renamed from: t, reason: collision with root package name */
    public static final m f13270t;

    /* renamed from: v, reason: collision with root package name */
    public static final o f13271v;

    /* renamed from: w, reason: collision with root package name */
    public static final p f13272w;

    /* renamed from: x, reason: collision with root package name */
    public static final q f13273x;

    /* renamed from: y, reason: collision with root package name */
    public static final r f13274y;
    public static final s z;

    static {
        n nVar = new n();
        f13254a = nVar;
        t tVar = new t();
        f13255b = tVar;
        u uVar = new u();
        f13256c = uVar;
        v vVar = new v();
        f13257d = vVar;
        w wVar = new w();
        f13258e = wVar;
        x xVar = new x();
        f13259f = xVar;
        y yVar = new y();
        f13260g = yVar;
        z zVar = new z();
        f13261h = zVar;
        a0 a0Var = new a0();
        f13262i = a0Var;
        d dVar = new d();
        f13263j = dVar;
        e eVar = new e();
        f13264k = eVar;
        f fVar = new f();
        l = fVar;
        g gVar = new g();
        f13265m = gVar;
        h hVar = new h();
        f13266n = hVar;
        i iVar = new i();
        f13267p = iVar;
        j jVar = new j();
        f13268q = jVar;
        k kVar = new k();
        r = kVar;
        l lVar = new l();
        f13269s = lVar;
        m mVar = new m();
        f13270t = mVar;
        o oVar = new o();
        f13271v = oVar;
        p pVar = new p();
        f13272w = pVar;
        q qVar = new q();
        f13273x = qVar;
        r rVar = new r();
        f13274y = rVar;
        s sVar = new s();
        z = sVar;
        B = new c0[]{nVar, tVar, uVar, vVar, wVar, xVar, yVar, zVar, a0Var, dVar, eVar, fVar, gVar, hVar, iVar, jVar, kVar, lVar, mVar, oVar, pVar, qVar, rVar, sVar};
        A = String.valueOf((char) 0);
    }

    public c0(String str, int i10) {
    }

    public static boolean a(r0 r0Var) {
        if (r0Var.a()) {
            return oh.f.f(((j0) r0Var).f13291d.R());
        }
        return false;
    }

    public static void b(o0 o0Var, c cVar, k3 k3Var) {
        if (k3Var != null) {
            cVar.f13235c.o(k3Var);
        }
        cVar.f13244m = cVar.l;
        cVar.l = f13261h;
        cVar.w(o0Var);
    }

    public static void c(o0 o0Var, ph.l lVar) {
        ph.c cVar = o0Var.f13333g;
        if (cVar != null) {
            cVar.getClass();
            ph.b bVar = new ph.b(cVar);
            while (bVar.hasNext()) {
                ph.a aVar = (ph.a) bVar.next();
                ph.c cVarC = lVar.c();
                String str = aVar.f12700a;
                if (cVarC.g(str) == -1) {
                    ph.c cVar2 = aVar.f12702c;
                    if (cVar2 == null || cVar2.g(str) == -1) {
                        int i10 = ph.u.f12750c;
                    } else {
                        Map map = (Map) (cVar2.g("/jsoup.userdata") != -1 ? cVar2.l().get("jsoup.attrs") : null);
                        if (map == null || ((ph.u) map.get(str)) == null) {
                            int i11 = ph.u.f12750c;
                        }
                    }
                    String str2 = aVar.f12701b;
                    if (str2 == null) {
                        str2 = "";
                    }
                    cVarC.j(aVar.f12700a, str2);
                    aVar.f12702c = cVarC;
                }
            }
        }
    }

    public static c0 valueOf(String str) {
        return (c0) Enum.valueOf(c0.class, str);
    }

    public static c0[] values() {
        return (c0[]) B.clone();
    }

    public abstract boolean d(r0 r0Var, c cVar);
}

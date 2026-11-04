package q4;

import java.util.HashMap;
import x4.u;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: d, reason: collision with root package name */
    public static final j f13008d;

    /* renamed from: e, reason: collision with root package name */
    public static final j f13009e;

    /* renamed from: f, reason: collision with root package name */
    public static final j f13010f;

    /* renamed from: g, reason: collision with root package name */
    public static final j f13011g;

    /* renamed from: h, reason: collision with root package name */
    public static final j f13012h;

    /* renamed from: i, reason: collision with root package name */
    public static final j f13013i;

    /* renamed from: j, reason: collision with root package name */
    public static final j f13014j;

    /* renamed from: k, reason: collision with root package name */
    public static final j f13015k;
    public static final j l;

    /* renamed from: m, reason: collision with root package name */
    public static final j f13016m;

    /* renamed from: n, reason: collision with root package name */
    public static final j f13017n;

    /* renamed from: o, reason: collision with root package name */
    public static final HashMap f13018o;

    /* renamed from: a, reason: collision with root package name */
    public final String f13019a;

    /* renamed from: b, reason: collision with root package name */
    public final y4.c f13020b;

    /* renamed from: c, reason: collision with root package name */
    public final u f13021c;

    static {
        j jVar = new j(y4.c.f18948g);
        f13008d = jVar;
        j jVar2 = new j(y4.c.f18949h);
        f13009e = jVar2;
        j jVar3 = new j(y4.c.f18950i);
        f13010f = jVar3;
        j jVar4 = new j(y4.c.f18951j);
        f13011g = jVar4;
        j jVar5 = new j(y4.c.f18952k);
        f13012h = jVar5;
        j jVar6 = new j(y4.c.l);
        f13013i = jVar6;
        j jVar7 = new j(y4.c.f18953m);
        f13014j = jVar7;
        j jVar8 = new j(y4.c.f18954n);
        f13015k = jVar8;
        j jVar9 = new j(y4.c.f18955p);
        l = jVar9;
        f13016m = new j(y4.c.f18959v);
        f13017n = new j(y4.c.f18960w);
        HashMap map = new HashMap();
        f13018o = map;
        map.put(Boolean.TYPE, jVar);
        map.put(Byte.TYPE, jVar2);
        map.put(Character.TYPE, jVar3);
        map.put(Double.TYPE, jVar4);
        map.put(Float.TYPE, jVar5);
        map.put(Integer.TYPE, jVar6);
        map.put(Long.TYPE, jVar7);
        map.put(Short.TYPE, jVar8);
        map.put(Void.TYPE, jVar9);
    }

    public j(String str, y4.c cVar) {
        if (str == null || cVar == null) {
            throw null;
        }
        this.f13019a = str;
        this.f13020b = cVar;
        u uVar = new u(cVar);
        u uVar2 = (u) u.f18138c.putIfAbsent(cVar, uVar);
        this.f13021c = uVar2 != null ? uVar2 : uVar;
    }

    public static j a(Class cls) {
        if (cls.isPrimitive()) {
            return (j) f13018o.get(cls);
        }
        String strReplace = cls.getName().replace('.', '/');
        if (!cls.isArray()) {
            strReplace = "L" + strReplace + ';';
        }
        try {
            return new j(strReplace, strReplace.equals("V") ? y4.c.f18955p : y4.c.e(strReplace));
        } catch (NullPointerException unused) {
            throw new NullPointerException("descriptor == null");
        }
    }

    public final i b(j jVar, String str, j... jVarArr) {
        return new i(this, jVar, str, new k(jVarArr));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof j) && ((j) obj).f13019a.equals(this.f13019a);
    }

    public final int hashCode() {
        return this.f13019a.hashCode();
    }

    public final String toString() {
        return this.f13019a;
    }

    public j(y4.c cVar) {
        this(cVar.f18963a, cVar);
    }
}

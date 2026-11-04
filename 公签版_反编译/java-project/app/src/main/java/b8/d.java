package b8;

import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import l2.z;
import z7.a0;
import z7.b0;

/* loaded from: classes.dex */
public final class d implements b0, Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public static final d f2620c = new d();

    /* renamed from: a, reason: collision with root package name */
    public final List f2621a = Collections.emptyList();

    /* renamed from: b, reason: collision with root package name */
    public final List f2622b = Collections.emptyList();

    @Override // z7.b0
    public final a0 a(z7.m mVar, g8.a aVar) {
        Class cls = aVar.f6121a;
        boolean zB = b(cls, true);
        boolean zB2 = b(cls, false);
        if (zB || zB2) {
            return new c(this, zB2, zB, mVar, aVar);
        }
        return null;
    }

    public final boolean b(Class cls, boolean z) {
        if (!z && !Enum.class.isAssignableFrom(cls)) {
            p000if.a aVar = e8.c.f4819a;
            if (!Modifier.isStatic(cls.getModifiers()) && (cls.isAnonymousClass() || cls.isLocalClass())) {
                return true;
            }
        }
        Iterator it = (z ? this.f2621a : this.f2622b).iterator();
        if (it.hasNext()) {
            throw z.d(it);
        }
        return false;
    }

    public final Object clone() {
        try {
            return (d) super.clone();
        } catch (CloneNotSupportedException e7) {
            throw new AssertionError(e7);
        }
    }
}

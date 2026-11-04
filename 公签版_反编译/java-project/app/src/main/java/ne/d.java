package ne;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import ue.g;
import ue.h;

/* loaded from: classes.dex */
public abstract class d implements ue.c, le.a, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final le.a f11356a;

    public d(le.a aVar) {
        this.f11356a = aVar;
        if (aVar != null && aVar.getContext() != le.b.f10713a) {
            throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext");
        }
    }

    @Override // le.a
    public final void a(Object obj) {
        le.a aVar = this;
        while (true) {
            d dVar = (d) aVar;
            le.a aVar2 = dVar.f11356a;
            ue.d.b(aVar2);
            try {
                obj = dVar.c(obj);
                if (obj == me.a.COROUTINE_SUSPENDED) {
                    return;
                }
            } catch (Throwable th2) {
                obj = new ie.c(th2);
            }
            dVar.getClass();
            if (!(aVar2 instanceof d)) {
                aVar2.a(obj);
                return;
            }
            aVar = aVar2;
        }
    }

    public abstract le.a b(Object obj, le.a aVar);

    public abstract Object c(Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.StackTraceElement] */
    public final String g() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        int iIntValue;
        String strC;
        Method method;
        Object objInvoke;
        Method method2;
        Object objInvoke2;
        StringBuilder sb2 = new StringBuilder("Continuation at ");
        a aVar = (a) getClass().getAnnotation(a.class);
        String name = null;
        if (aVar != null && aVar.v() >= 1) {
            try {
                Field declaredField = getClass().getDeclaredField(AnnotatedPrivateKey.LABEL);
                declaredField.setAccessible(true);
                Object obj = declaredField.get(this);
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                iIntValue = (num != null ? num.intValue() : 0) - 1;
            } catch (Exception unused) {
                iIntValue = -1;
            }
            int i10 = iIntValue >= 0 ? aVar.l()[iIntValue] : -1;
            b bVar = c.f11355b;
            b bVar2 = c.f11354a;
            if (bVar == null) {
                try {
                    b bVar3 = new b(Class.class.getDeclaredMethod("getModule", null), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", null), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", null));
                    c.f11355b = bVar3;
                    bVar = bVar3;
                } catch (Exception unused2) {
                    c.f11355b = bVar2;
                    bVar = bVar2;
                }
            }
            if (bVar != bVar2 && (method = bVar.f11351a) != null && (objInvoke = method.invoke(getClass(), null)) != null && (method2 = bVar.f11352b) != null && (objInvoke2 = method2.invoke(objInvoke, null)) != null) {
                Method method3 = bVar.f11353c;
                String strInvoke = method3 != null ? method3.invoke(objInvoke2, null) : null;
                if (strInvoke instanceof String) {
                    name = strInvoke;
                }
            }
            if (name == null) {
                strC = aVar.c();
            } else {
                strC = name + '/' + aVar.c();
            }
            name = new StackTraceElement(strC, aVar.m(), aVar.f(), i10);
        }
        if (name == null) {
            name = getClass().getName();
        }
        sb2.append((Object) name);
        return sb2.toString();
    }

    @Override // le.a
    public final le.b getContext() {
        return le.b.f10713a;
    }

    public final String toString() {
        if (this.f11356a != null) {
            return g();
        }
        g.f16110a.getClass();
        String strA = h.a(this);
        ue.d.d(strA, "renderLambdaToString(...)");
        return strA;
    }

    public void d() {
    }
}

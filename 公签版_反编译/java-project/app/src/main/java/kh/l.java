package kh;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes3.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final Method f10361a;

    /* renamed from: b, reason: collision with root package name */
    public final ThreadMode f10362b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f10363c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10364d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10365e;

    /* renamed from: f, reason: collision with root package name */
    public String f10366f;

    public l(Method method, Class cls, ThreadMode threadMode, int i10, boolean z) {
        this.f10361a = method;
        this.f10362b = threadMode;
        this.f10363c = cls;
        this.f10364d = i10;
        this.f10365e = z;
    }

    public final synchronized void a() {
        if (this.f10366f == null) {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append(this.f10361a.getDeclaringClass().getName());
            sb2.append('#');
            sb2.append(this.f10361a.getName());
            sb2.append('(');
            sb2.append(this.f10363c.getName());
            this.f10366f = sb2.toString();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        a();
        l lVar = (l) obj;
        lVar.a();
        return this.f10366f.equals(lVar.f10366f);
    }

    public final int hashCode() {
        return this.f10361a.hashCode();
    }
}

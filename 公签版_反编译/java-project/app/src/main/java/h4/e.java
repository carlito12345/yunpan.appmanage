package h4;

import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class e extends u {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6424a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f6425b;

    public e(ViewGroup viewGroup) {
        this.f6425b = viewGroup;
    }

    @Override // h4.u, h4.s
    public final void a() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        android.support.v4.media.session.b.I(this.f6425b, false);
    }

    @Override // h4.u, h4.s
    public final void b() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        android.support.v4.media.session.b.I(this.f6425b, false);
        this.f6424a = true;
    }

    @Override // h4.s
    public final void c(t tVar) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (!this.f6424a) {
            android.support.v4.media.session.b.I(this.f6425b, false);
        }
        tVar.v(this);
    }

    @Override // h4.u, h4.s
    public final void e() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        android.support.v4.media.session.b.I(this.f6425b, true);
    }
}

package q7;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
public abstract class q {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f13111a;

    /* renamed from: b, reason: collision with root package name */
    public final p f13112b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f13113c;

    /* renamed from: d, reason: collision with root package name */
    public final CheckableImageButton f13114d;

    public q(p pVar) {
        this.f13111a = pVar.f13091a;
        this.f13112b = pVar;
        this.f13113c = pVar.getContext();
        this.f13114d = pVar.f13097g;
    }

    public int c() {
        return 0;
    }

    public int d() {
        return 0;
    }

    public View.OnFocusChangeListener e() {
        return null;
    }

    public View.OnClickListener f() {
        return null;
    }

    public View.OnFocusChangeListener g() {
        return null;
    }

    public y0.d h() {
        return null;
    }

    public boolean i(int i10) {
        return true;
    }

    public boolean j() {
        return false;
    }

    public boolean k() {
        return this instanceof l;
    }

    public boolean l() {
        return false;
    }

    public final void q() {
        this.f13112b.f(false);
    }

    public void a() {
    }

    public void b() {
    }

    public void r() {
    }

    public void s() {
    }

    public void m(EditText editText) {
    }

    public void n(y0.n nVar) {
    }

    public void o(AccessibilityEvent accessibilityEvent) {
    }

    public void p(boolean z) {
    }
}

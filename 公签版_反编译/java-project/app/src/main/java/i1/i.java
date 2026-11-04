package i1;

import android.widget.EditText;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class i extends androidx.emoji2.text.i {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f8421a;

    public i(EditText editText) {
        this.f8421a = new WeakReference(editText);
    }

    @Override // androidx.emoji2.text.i
    public final void a() {
        j.a(1, (EditText) this.f8421a.get());
    }
}

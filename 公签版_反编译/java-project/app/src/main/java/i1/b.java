package i1;

import android.text.Editable;
import androidx.emoji2.text.v;

/* loaded from: classes.dex */
public final class b extends Editable.Factory {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f8406a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static volatile b f8407b;

    /* renamed from: c, reason: collision with root package name */
    public static Class f8408c;

    public b() {
        try {
            f8408c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, b.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f8408c;
        return cls != null ? new v(cls, charSequence) : super.newEditable(charSequence);
    }
}

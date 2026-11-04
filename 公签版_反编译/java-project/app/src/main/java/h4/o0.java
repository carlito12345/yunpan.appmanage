package h4;

import android.view.View;
import android.view.WindowId;

/* loaded from: classes.dex */
public final class o0 implements p0 {

    /* renamed from: a, reason: collision with root package name */
    public final WindowId f6471a;

    public o0(View view) {
        this.f6471a = view.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof o0) && ((o0) obj).f6471a.equals(this.f6471a);
    }

    public final int hashCode() {
        return this.f6471a.hashCode();
    }
}

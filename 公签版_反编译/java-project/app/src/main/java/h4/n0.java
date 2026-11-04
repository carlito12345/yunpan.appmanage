package h4;

import android.os.IBinder;

/* loaded from: classes.dex */
public final class n0 implements p0 {

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f6464a;

    public n0(IBinder iBinder) {
        this.f6464a = iBinder;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof n0) && ((n0) obj).f6464a.equals(this.f6464a);
    }

    public final int hashCode() {
        return this.f6464a.hashCode();
    }
}

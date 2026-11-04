package r6;

import android.animation.TimeInterpolator;
import com.alibaba.sdk.android.oss.signer.SignParameters;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final long f13716a;

    /* renamed from: b, reason: collision with root package name */
    public final long f13717b;

    /* renamed from: c, reason: collision with root package name */
    public final TimeInterpolator f13718c;

    /* renamed from: d, reason: collision with root package name */
    public int f13719d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f13720e = 1;

    public c(long j10, long j11, TimeInterpolator timeInterpolator) {
        this.f13716a = j10;
        this.f13717b = j11;
        this.f13718c = timeInterpolator;
    }

    public final TimeInterpolator a() {
        TimeInterpolator timeInterpolator = this.f13718c;
        return timeInterpolator != null ? timeInterpolator : a.f13711b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f13716a == cVar.f13716a && this.f13717b == cVar.f13717b && this.f13719d == cVar.f13719d && this.f13720e == cVar.f13720e) {
            return a().getClass().equals(cVar.a().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f13716a;
        long j11 = this.f13717b;
        return ((((a().getClass().hashCode() + (((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31)) * 31) + this.f13719d) * 31) + this.f13720e;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(SignParameters.NEW_LINE);
        sb2.append(c.class.getName());
        sb2.append('{');
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" delay: ");
        sb2.append(this.f13716a);
        sb2.append(" duration: ");
        sb2.append(this.f13717b);
        sb2.append(" interpolator: ");
        sb2.append(a().getClass());
        sb2.append(" repeatCount: ");
        sb2.append(this.f13719d);
        sb2.append(" repeatMode: ");
        return android.support.v4.media.session.a.s(sb2, this.f13720e, "}\n");
    }
}

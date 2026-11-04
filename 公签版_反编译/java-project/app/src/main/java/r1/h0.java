package r1;

import java.util.Locale;

/* loaded from: classes.dex */
public final class h0 {

    /* renamed from: d, reason: collision with root package name */
    public static final h0 f13451d = new h0(1.0f, 1.0f);

    /* renamed from: a, reason: collision with root package name */
    public final float f13452a;

    /* renamed from: b, reason: collision with root package name */
    public final float f13453b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13454c;

    static {
        u1.f0.B(0);
        u1.f0.B(1);
    }

    public h0(float f10, float f11) {
        a9.o.k(f10 > 0.0f);
        a9.o.k(f11 > 0.0f);
        this.f13452a = f10;
        this.f13453b = f11;
        this.f13454c = Math.round(f10 * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h0.class != obj.getClass()) {
            return false;
        }
        h0 h0Var = (h0) obj;
        return this.f13452a == h0Var.f13452a && this.f13453b == h0Var.f13453b;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f13453b) + ((Float.floatToRawIntBits(this.f13452a) + 527) * 31);
    }

    public final String toString() {
        Object[] objArr = {Float.valueOf(this.f13452a), Float.valueOf(this.f13453b)};
        String str = u1.f0.f15206a;
        return String.format(Locale.US, "PlaybackParameters(speed=%.2f, pitch=%.2f)", objArr);
    }
}

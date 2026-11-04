package r1;

import android.media.AudioAttributes;
import android.os.Build;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: d, reason: collision with root package name */
    public static final d f13426d = new d(0, 1);

    /* renamed from: a, reason: collision with root package name */
    public final int f13427a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13428b;

    /* renamed from: c, reason: collision with root package name */
    public AudioAttributes f13429c;

    static {
        org.bouncycastle.jcajce.provider.digest.a.m(0, 1, 2, 3, 4);
        u1.f0.B(5);
        u1.f0.B(6);
    }

    public d(int i10, int i11) {
        this.f13427a = i10;
        this.f13428b = i11;
    }

    public final AudioAttributes a() {
        if (this.f13429c == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.f13427a).setFlags(0).setUsage(this.f13428b);
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 29) {
                usage.setAllowedCapturePolicy(1);
                usage.setHapticChannelsMuted(true);
            }
            if (i10 >= 32) {
                usage.setSpatializationBehavior(0);
                usage.setIsContentSpatialized(false);
            }
            this.f13429c = usage.build();
        }
        return this.f13429c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f13427a == dVar.f13427a && this.f13428b == dVar.f13428b;
    }

    public final int hashCode() {
        return ((((((527 + this.f13427a) * 961) + this.f13428b) * 31) + 1) * 29791) + 1;
    }
}

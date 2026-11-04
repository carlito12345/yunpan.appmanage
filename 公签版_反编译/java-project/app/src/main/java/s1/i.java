package s1;

import j$.util.Objects;
import u1.f0;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: e, reason: collision with root package name */
    public static final i f13904e = new i(-1, -1, -1);

    /* renamed from: a, reason: collision with root package name */
    public final int f13905a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13906b;

    /* renamed from: c, reason: collision with root package name */
    public final int f13907c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13908d;

    public i(int i10, int i11, int i12) {
        this.f13905a = i10;
        this.f13906b = i11;
        this.f13907c = i12;
        this.f13908d = f0.D(i12) ? f0.o(i12) * i11 : -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f13905a == iVar.f13905a && this.f13906b == iVar.f13906b && this.f13907c == iVar.f13907c;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f13905a), Integer.valueOf(this.f13906b), Integer.valueOf(this.f13907c));
    }

    public final String toString() {
        return "AudioFormat[sampleRate=" + this.f13905a + ", channelCount=" + this.f13906b + ", encoding=" + this.f13907c + ']';
    }
}

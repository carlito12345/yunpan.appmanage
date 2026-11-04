package f3;

import l2.g0;
import u1.f0;

/* loaded from: classes.dex */
public final class a implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5454a = 1;

    /* renamed from: b, reason: collision with root package name */
    public int f5455b;

    /* renamed from: c, reason: collision with root package name */
    public long f5456c;

    /* renamed from: d, reason: collision with root package name */
    public int f5457d;

    public a(int i10, int i11, long j10) {
        this.f5455b = i10;
        this.f5456c = j10;
        this.f5457d = i11;
    }

    public String toString() {
        switch (this.f5454a) {
            case 0:
                StringBuilder sb2 = new StringBuilder("AtomSizeTooSmall{type=");
                sb2.append(f0.Q(this.f5455b));
                sb2.append(", size=");
                sb2.append(this.f5456c);
                sb2.append(", minHeaderSize=");
                return android.support.v4.media.session.a.s(sb2, this.f5457d, "}");
            default:
                return super.toString();
        }
    }

    public a() {
    }
}

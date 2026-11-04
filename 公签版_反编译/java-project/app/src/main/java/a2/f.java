package a2;

import android.os.Build;
import j$.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: d, reason: collision with root package name */
    public static final f f154d;

    /* renamed from: a, reason: collision with root package name */
    public final int f155a;

    /* renamed from: b, reason: collision with root package name */
    public final int f156b;

    /* renamed from: c, reason: collision with root package name */
    public final u7.j0 f157c;

    static {
        f fVar;
        if (Build.VERSION.SDK_INT >= 33) {
            u7.i0 i0Var = new u7.i0();
            for (int i10 = 1; i10 <= 10; i10++) {
                i0Var.b(Integer.valueOf(u1.f0.n(i10)));
            }
            fVar = new f(2, i0Var.h());
        } else {
            fVar = new f(2, 10);
        }
        f154d = fVar;
    }

    public f(int i10, Set set) {
        this.f155a = i10;
        u7.j0 j0VarL = u7.j0.l(set);
        this.f157c = j0VarL;
        u7.o1 it = j0VarL.iterator();
        int iMax = 0;
        while (it.hasNext()) {
            iMax = Math.max(iMax, Integer.bitCount(((Integer) it.next()).intValue()));
        }
        this.f156b = iMax;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f155a == fVar.f155a && this.f156b == fVar.f156b && Objects.equals(this.f157c, fVar.f157c);
    }

    public final int hashCode() {
        int i10 = ((this.f155a * 31) + this.f156b) * 31;
        u7.j0 j0Var = this.f157c;
        return i10 + (j0Var == null ? 0 : j0Var.hashCode());
    }

    public final String toString() {
        return "AudioProfile[format=" + this.f155a + ", maxChannelCount=" + this.f156b + ", channelMasks=" + this.f157c + "]";
    }

    public f(int i10, int i11) {
        this.f155a = i10;
        this.f156b = i11;
        this.f157c = null;
    }
}

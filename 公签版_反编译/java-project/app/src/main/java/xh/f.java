package xh;

import java.io.DataInput;
import java.io.IOException;
import java.io.ObjectOutput;
import java.io.Serializable;
import org.mozilla.universalchardet.prober.HebrewProber;
import sh.p;

/* loaded from: classes3.dex */
public final class f implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final sh.h f18503a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f18504b;

    /* renamed from: c, reason: collision with root package name */
    public final sh.b f18505c;

    /* renamed from: d, reason: collision with root package name */
    public final sh.g f18506d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18507e;

    /* renamed from: f, reason: collision with root package name */
    public final int f18508f;

    /* renamed from: g, reason: collision with root package name */
    public final p f18509g;

    /* renamed from: h, reason: collision with root package name */
    public final p f18510h;

    /* renamed from: i, reason: collision with root package name */
    public final p f18511i;

    public f(sh.h hVar, int i10, sh.b bVar, sh.g gVar, int i11, int i12, p pVar, p pVar2, p pVar3) {
        this.f18503a = hVar;
        this.f18504b = (byte) i10;
        this.f18505c = bVar;
        this.f18506d = gVar;
        this.f18507e = i11;
        this.f18508f = i12;
        this.f18509g = pVar;
        this.f18510h = pVar2;
        this.f18511i = pVar3;
    }

    public static f a(DataInput dataInput) throws IOException {
        int i10 = dataInput.readInt();
        sh.h hVarQ = sh.h.q(i10 >>> 28);
        int i11 = ((264241152 & i10) >>> 22) - 32;
        int i12 = (3670016 & i10) >>> 19;
        sh.b bVarN = i12 == 0 ? null : sh.b.n(i12);
        int i13 = (507904 & i10) >>> 14;
        int i14 = d0.f.d(3)[(i10 & 12288) >>> 12];
        int i15 = (i10 & 4080) >>> 4;
        int i16 = (i10 & 12) >>> 2;
        int i17 = i10 & 3;
        int i18 = i13 == 31 ? dataInput.readInt() : i13 * 3600;
        p pVarR = p.r(i15 == 255 ? dataInput.readInt() : (i15 - 128) * 900);
        int i19 = pVarR.f14619a;
        p pVarR2 = p.r(i16 == 3 ? dataInput.readInt() : (i16 * 1800) + i19);
        p pVarR3 = i17 == 3 ? p.r(dataInput.readInt()) : p.r((i17 * 1800) + i19);
        if (i11 < -28 || i11 > 31 || i11 == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        long j10 = ((i18 % 86400) + 86400) % 86400;
        sh.g gVar = sh.g.f14588e;
        wh.a.SECOND_OF_DAY.h(j10);
        int i20 = (int) (j10 / 3600);
        long j11 = j10 - (i20 * 3600);
        return new f(hVarQ, i11, bVarN, sh.g.n(i20, (int) (j11 / 60), (int) (j11 - (r9 * 60)), 0), i18 >= 0 ? i18 / 86400 : ((i18 + 1) / 86400) - 1, i14, pVarR, pVarR2, pVarR3);
    }

    private Object writeReplace() {
        return new a((byte) 3, this);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f18503a == fVar.f18503a && this.f18504b == fVar.f18504b && this.f18505c == fVar.f18505c && this.f18508f == fVar.f18508f && this.f18507e == fVar.f18507e && this.f18506d.equals(fVar.f18506d) && this.f18509g.equals(fVar.f18509g) && this.f18510h.equals(fVar.f18510h) && this.f18511i.equals(fVar.f18511i);
    }

    public final int hashCode() {
        int iX = ((this.f18506d.x() + this.f18507e) << 15) + (this.f18503a.ordinal() << 11) + ((this.f18504b + HebrewProber.SPACE) << 5);
        sh.b bVar = this.f18505c;
        return ((this.f18509g.f14619a ^ (d0.f.c(this.f18508f) + (iX + ((bVar == null ? 7 : bVar.ordinal()) << 2)))) ^ this.f18510h.f14619a) ^ this.f18511i.f14619a;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("TransitionRule[");
        p pVar = this.f18510h;
        p pVar2 = this.f18511i;
        sb2.append(pVar2.f14619a - pVar.f14619a > 0 ? "Gap " : "Overlap ");
        sb2.append(pVar);
        sb2.append(" to ");
        sb2.append(pVar2);
        sb2.append(", ");
        sh.h hVar = this.f18503a;
        byte b10 = this.f18504b;
        sh.b bVar = this.f18505c;
        if (bVar == null) {
            sb2.append(hVar.name());
            sb2.append(' ');
            sb2.append((int) b10);
        } else if (b10 == -1) {
            sb2.append(bVar.name());
            sb2.append(" on or before last day of ");
            sb2.append(hVar.name());
        } else if (b10 < 0) {
            sb2.append(bVar.name());
            sb2.append(" on or before last day minus ");
            sb2.append((-b10) - 1);
            sb2.append(" of ");
            sb2.append(hVar.name());
        } else {
            sb2.append(bVar.name());
            sb2.append(" on or after ");
            sb2.append(hVar.name());
            sb2.append(' ');
            sb2.append((int) b10);
        }
        sb2.append(" at ");
        sh.g gVar = this.f18506d;
        int i10 = this.f18507e;
        if (i10 == 0) {
            sb2.append(gVar);
        } else {
            long jX = (i10 * 1440) + (gVar.x() / 60);
            long jC = p000if.a.C(jX, 60L);
            if (jC < 10) {
                sb2.append(0);
            }
            sb2.append(jC);
            sb2.append(':');
            long jD = p000if.a.D(60, jX);
            if (jD < 10) {
                sb2.append(0);
            }
            sb2.append(jD);
        }
        sb2.append(" ");
        int i11 = this.f18508f;
        sb2.append(i11 != 1 ? i11 != 2 ? i11 != 3 ? "null" : "STANDARD" : "WALL" : "UTC");
        sb2.append(", standard offset ");
        sb2.append(this.f18509g);
        sb2.append(']');
        return sb2.toString();
    }

    public final void writeExternal(ObjectOutput objectOutput) {
        sh.g gVar = this.f18506d;
        int iX = (this.f18507e * 86400) + gVar.x();
        p pVar = this.f18509g;
        int i10 = this.f18510h.f14619a;
        int i11 = pVar.f14619a;
        int i12 = i10 - i11;
        int i13 = this.f18511i.f14619a;
        int i14 = i13 - i11;
        byte b10 = (iX % 3600 != 0 || iX > 86400) ? (byte) 31 : iX == 86400 ? (byte) 24 : gVar.f14591a;
        int i15 = i11 % 900 == 0 ? (i11 / 900) + 128 : 255;
        int i16 = (i12 == 0 || i12 == 1800 || i12 == 3600) ? i12 / 1800 : 3;
        int i17 = (i14 == 0 || i14 == 1800 || i14 == 3600) ? i14 / 1800 : 3;
        sh.b bVar = this.f18505c;
        objectOutput.writeInt((this.f18503a.n() << 28) + ((this.f18504b + HebrewProber.SPACE) << 22) + ((bVar == null ? 0 : bVar.m()) << 19) + (b10 << 14) + (d0.f.c(this.f18508f) << 12) + (i15 << 4) + (i16 << 2) + i17);
        if (b10 == 31) {
            objectOutput.writeInt(iX);
        }
        if (i15 == 255) {
            objectOutput.writeInt(i11);
        }
        if (i16 == 3) {
            objectOutput.writeInt(i10);
        }
        if (i17 == 3) {
            objectOutput.writeInt(i13);
        }
    }
}

package q3;

import android.graphics.Bitmap;
import android.graphics.Rect;
import i3.d;
import i3.i;
import i3.j;
import j$.nio.charset.StandardCharsets;
import java.util.List;
import java.util.zip.Inflater;
import u1.f;
import u1.f0;
import u1.q;
import u7.e0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class b implements j {

    /* renamed from: e, reason: collision with root package name */
    public static final i3.a f12960e;

    /* renamed from: a, reason: collision with root package name */
    public final q f12961a = new q();

    /* renamed from: b, reason: collision with root package name */
    public final q f12962b = new q();

    /* renamed from: c, reason: collision with root package name */
    public final a f12963c;

    /* renamed from: d, reason: collision with root package name */
    public Inflater f12964d;

    static {
        e0 e0Var = g0.f15471b;
        f12960e = new i3.a(-9223372036854775807L, -9223372036854775807L, y0.f15549e);
    }

    public b(List list) throws NumberFormatException {
        int i10;
        a aVar = new a();
        this.f12963c = aVar;
        String strTrim = new String((byte[]) list.get(0), StandardCharsets.UTF_8).trim();
        String str = f0.f15206a;
        for (String str2 : strTrim.split("\\r?\\n", -1)) {
            if (str2.startsWith("palette: ")) {
                String[] strArrSplit = str2.substring(9).split(",", -1);
                aVar.f12954f = new int[strArrSplit.length];
                for (int i11 = 0; i11 < strArrSplit.length; i11++) {
                    int[] iArr = aVar.f12954f;
                    try {
                        i10 = Integer.parseInt(strArrSplit[i11].trim(), 16);
                    } catch (RuntimeException e7) {
                        u1.a.q("Parsing color failed", e7);
                        i10 = 0;
                    }
                    iArr[i11] = i10;
                }
            } else if (str2.startsWith("size: ")) {
                String[] strArrSplit2 = str2.substring(6).trim().split("x", -1);
                if (strArrSplit2.length != 2) {
                    u1.a.p("Ignoring malformed IDX size line: '" + str2 + "'");
                } else {
                    try {
                        aVar.f12955g = Integer.parseInt(strArrSplit2[0]);
                        aVar.f12956h = Integer.parseInt(strArrSplit2[1]);
                        aVar.f12952d = true;
                    } catch (RuntimeException e10) {
                        u1.a.q("Parsing IDX failed", e10);
                    }
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x00be. Please report as an issue. */
    @Override // i3.j
    public final void b(byte[] bArr, int i10, int i11, i iVar, f fVar) {
        i3.a aVar;
        boolean z;
        boolean z4;
        t1.b bVar;
        long j10;
        Rect rect;
        q qVar = this.f12961a;
        qVar.M(i10 + i11, bArr);
        qVar.O(i10);
        if (this.f12964d == null) {
            this.f12964d = new Inflater();
        }
        Inflater inflater = this.f12964d;
        String str = f0.f15206a;
        if (qVar.a() > 0 && qVar.k() == 120) {
            q qVar2 = this.f12962b;
            if (f0.A(qVar, qVar2, inflater)) {
                qVar.M(qVar2.f15268c, qVar2.f15266a);
            }
        }
        a aVar2 = this.f12963c;
        aVar2.f12950b = -9223372036854775807L;
        aVar2.f12951c = -9223372036854775807L;
        boolean z10 = false;
        aVar2.f12953e = false;
        aVar2.f12957i = null;
        aVar2.f12958j = -1;
        aVar2.f12959k = -1;
        int iA = qVar.a();
        if (iA < 2 || qVar.I() != iA) {
            aVar = f12960e;
        } else {
            if (aVar2.f12954f == null) {
                u1.a.p("Skipping SPU (no palette)");
            } else if (aVar2.f12952d) {
                int i12 = qVar.f15267b - 2;
                qVar.O(qVar.I() + i12);
                while (true) {
                    if (qVar.a() < 4) {
                        z = false;
                    } else {
                        int i13 = qVar.f15267b;
                        int I = qVar.I() * 10000;
                        int I2 = qVar.I() + i12;
                        z = I2 != i13 && I2 < qVar.f15268c;
                        int i14 = z ? I2 : qVar.f15268c;
                        boolean z11 = true;
                        while (qVar.f15267b < i14 && z11) {
                            long j11 = I;
                            int iB = qVar.B();
                            if (iB != 255) {
                                int[] iArr = aVar2.f12949a;
                                switch (iB) {
                                    case 0:
                                        z11 = true;
                                        break;
                                    case 1:
                                        aVar2.f12950b = j11;
                                        z11 = true;
                                        break;
                                    case 2:
                                        aVar2.f12951c = j11;
                                        z11 = true;
                                        break;
                                    case 3:
                                        if (qVar.a() < 2) {
                                            u1.a.p("Incomplete color command");
                                            z10 = false;
                                            z11 = z10;
                                            break;
                                        } else {
                                            int iB2 = qVar.B();
                                            int iB3 = qVar.B();
                                            iArr[3] = a.a(iB2 >> 4, aVar2.f12954f);
                                            iArr[2] = a.a(iB2 & 15, aVar2.f12954f);
                                            iArr[1] = a.a(iB3 >> 4, aVar2.f12954f);
                                            iArr[0] = a.a(iB3 & 15, aVar2.f12954f);
                                            aVar2.f12953e = true;
                                            z10 = true;
                                            z11 = z10;
                                        }
                                    case 4:
                                        if (qVar.a() >= 2) {
                                            if (aVar2.f12953e) {
                                                int iB4 = qVar.B();
                                                int iB5 = qVar.B();
                                                iArr[3] = a.c(iArr[3], iB4 >> 4);
                                                iArr[2] = a.c(iArr[2], iB4 & 15);
                                                iArr[1] = a.c(iArr[1], iB5 >> 4);
                                                iArr[0] = a.c(iArr[0], iB5 & 15);
                                                z10 = true;
                                                z11 = z10;
                                                break;
                                            } else {
                                                u1.a.p("Ignoring alpha command before color command");
                                            }
                                        } else {
                                            u1.a.p("Incomplete alpha command");
                                        }
                                        z10 = false;
                                        z11 = z10;
                                    case 5:
                                        if (qVar.a() < 6) {
                                            u1.a.p("Incomplete area command");
                                            z11 = z10;
                                            break;
                                        } else {
                                            int iB6 = qVar.B();
                                            int iB7 = qVar.B();
                                            int i15 = (iB6 << 4) | (iB7 >> 4);
                                            int iB8 = ((iB7 & 15) << 8) | qVar.B();
                                            int iB9 = qVar.B();
                                            int iB10 = qVar.B();
                                            aVar2.f12957i = new Rect(i15, (iB9 << 4) | (iB10 >> 4), iB8 + 1, (((iB10 & 15) << 8) | qVar.B()) + 1);
                                            z10 = true;
                                            z11 = z10;
                                        }
                                    case 6:
                                        if (qVar.a() < 4) {
                                            u1.a.p("Incomplete offsets command");
                                            z4 = false;
                                        } else {
                                            aVar2.f12958j = qVar.I();
                                            aVar2.f12959k = qVar.I();
                                            z4 = true;
                                        }
                                        z11 = z4;
                                        break;
                                    default:
                                        org.bouncycastle.jcajce.provider.digest.a.o(iB, "Unrecognized command: ");
                                        z11 = false;
                                        break;
                                }
                            } else {
                                z11 = false;
                            }
                            z10 = false;
                        }
                        if (z) {
                            qVar.O(I2);
                        }
                    }
                    if (z) {
                        z10 = false;
                    }
                }
            } else {
                u1.a.p("Skipping SPU (no plane)");
            }
            if (aVar2.f12954f == null || !aVar2.f12952d || !aVar2.f12953e || (rect = aVar2.f12957i) == null || aVar2.f12958j == -1 || aVar2.f12959k == -1 || rect.width() < 2 || aVar2.f12957i.height() < 2) {
                bVar = null;
            } else {
                Rect rect2 = aVar2.f12957i;
                int[] iArr2 = new int[rect2.height() * rect2.width()];
                j3.f fVar2 = new j3.f();
                qVar.O(aVar2.f12958j);
                fVar2.l(qVar);
                aVar2.b(fVar2, true, rect2, iArr2);
                qVar.O(aVar2.f12959k);
                fVar2.l(qVar);
                aVar2.b(fVar2, false, rect2, iArr2);
                bVar = new t1.b(null, null, null, Bitmap.createBitmap(iArr2, rect2.width(), rect2.height(), Bitmap.Config.ARGB_8888), rect2.top / aVar2.f12956h, 0, 0, rect2.left / aVar2.f12955g, 0, Integer.MIN_VALUE, -3.4028235E38f, rect2.width() / aVar2.f12955g, rect2.height() / aVar2.f12956h, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
            }
            long j12 = aVar2.f12951c;
            if (j12 != -9223372036854775807L) {
                long j13 = aVar2.f12950b;
                if (j13 != -9223372036854775807L && j12 > j13) {
                    j12 -= j13;
                }
                j10 = j12;
            } else {
                j10 = -9223372036854775807L;
            }
            aVar = new i3.a(aVar2.f12950b, j10, bVar != null ? g0.r(bVar) : y0.f15549e);
        }
        fVar.accept(aVar);
    }

    @Override // i3.j
    public final /* synthetic */ d e(int i10, int i11, byte[] bArr) {
        return g.b.a(this, bArr, i11);
    }

    @Override // i3.j
    public final /* synthetic */ void reset() {
    }
}

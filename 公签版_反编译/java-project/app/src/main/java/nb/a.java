package nb;

import android.text.TextUtils;
import d3.g;
import j$.util.Objects;
import java.text.Bidi;
import mb.h;
import mb.i;

/* loaded from: classes.dex */
public final class a implements i {

    /* renamed from: a, reason: collision with root package name */
    public final g[] f11331a = new g[64];

    /* renamed from: b, reason: collision with root package name */
    public boolean f11332b;

    public a(mb.g gVar) {
        Objects.requireNonNull(gVar);
        gVar.a(this);
    }

    @Override // mb.i
    public final /* synthetic */ void b(mb.g gVar) {
    }

    @Override // mb.i
    public final synchronized void c(mb.g gVar, int i10, int i11, int i12, int i13, CharSequence charSequence) {
        int i14 = i12 - i10;
        int i15 = 0;
        while (true) {
            try {
                g[] gVarArr = this.f11331a;
                if (i15 < gVarArr.length) {
                    g gVar2 = gVarArr[i15];
                    if (gVar2 != null) {
                        int i16 = gVar2.f4436b;
                        if (i16 > i10) {
                            gVar2.f4436b = i16 + i14;
                        } else if (i16 == i10) {
                            gVarArr[i15] = null;
                        }
                    }
                    i15++;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // mb.i
    public final synchronized void k(mb.g gVar, int i10, int i11, int i12, int i13, StringBuilder sb2) {
        int i14;
        int i15 = i12 - i10;
        int i16 = 0;
        while (true) {
            try {
                g[] gVarArr = this.f11331a;
                if (i16 < gVarArr.length) {
                    g gVar2 = gVarArr[i16];
                    if (gVar2 != null && (i14 = gVar2.f4436b) >= i10) {
                        if (i14 > i12) {
                            gVar2.f4436b = i14 - i15;
                        } else {
                            gVarArr[i16] = null;
                        }
                    }
                    i16++;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final b s(int i10, h hVar) {
        b bVar;
        boolean z = this.f11332b;
        long jG = sb.h.g(0, 0);
        if (!z) {
            return new b(new long[]{jG}, hVar.f11076c);
        }
        synchronized (this) {
            int i11 = 0;
            while (true) {
                try {
                    g[] gVarArr = this.f11331a;
                    if (i11 >= gVarArr.length) {
                        int i12 = hVar.f11076c;
                        if (hVar.f11077d > 0) {
                            char[] cArrE = sb.h.e(i12);
                            TextUtils.getChars(hVar, 0, i12, cArrE, 0);
                            Bidi bidi = new Bidi(cArrE, 0, null, 0, hVar.f11076c, -2);
                            int runCount = bidi.getRunCount();
                            long[] jArr = new long[runCount];
                            for (int i13 = 0; i13 < runCount; i13++) {
                                jArr[i13] = sb.h.g(bidi.getRunStart(i13), bidi.getRunLevel(i13));
                            }
                            sb.h.h(cArrE);
                            bVar = new b(jArr, i12);
                        } else {
                            bVar = new b(new long[]{jG}, i12);
                        }
                        synchronized (this) {
                            g[] gVarArr2 = this.f11331a;
                            System.arraycopy(gVarArr2, 0, gVarArr2, 1, gVarArr2.length - 1);
                            this.f11331a[0] = new g(i10, 3, bVar);
                        }
                        return bVar;
                    }
                    g gVar = gVarArr[i11];
                    if (gVar != null && gVar.f4436b == i10) {
                        return (b) gVar.f4437c;
                    }
                    i11++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // mb.i
    public final void j(mb.g gVar) {
    }
}

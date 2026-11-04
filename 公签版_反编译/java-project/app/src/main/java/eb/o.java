package eb;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import l5.y;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: o, reason: collision with root package name */
    public static final a2.m f4879o = new a2.m(8);

    /* renamed from: d, reason: collision with root package name */
    public mb.h f4883d;

    /* renamed from: e, reason: collision with root package name */
    public nb.b f4884e;

    /* renamed from: f, reason: collision with root package name */
    public int f4885f;

    /* renamed from: g, reason: collision with root package name */
    public int f4886g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f4887h;

    /* renamed from: i, reason: collision with root package name */
    public List f4888i;

    /* renamed from: j, reason: collision with root package name */
    public p f4889j;

    /* renamed from: k, reason: collision with root package name */
    public c f4890k;
    public d3.g l;

    /* renamed from: a, reason: collision with root package name */
    public final RectF f4880a = new RectF();

    /* renamed from: b, reason: collision with root package name */
    public final int[] f4881b = new int[4];

    /* renamed from: c, reason: collision with root package name */
    public final lb.a f4882c = p000if.a.q0(0);

    /* renamed from: m, reason: collision with root package name */
    public int f4891m = -1;

    /* renamed from: n, reason: collision with root package name */
    public int f4892n = -1;

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
    
        r31 = r10;
        r32 = r12;
     */
    /* JADX WARN: Removed duplicated region for block: B:158:0x017f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0184  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static float a(o oVar, ArrayList arrayList, boolean z, j jVar, Canvas canvas, float f10, i iVar) {
        Iterator it;
        float f11;
        int i10;
        int size;
        int i11;
        int i12;
        int i13;
        int i14;
        float fI;
        int i15;
        boolean z4;
        float f12;
        boolean z10;
        int i16;
        int i17;
        boolean z11;
        oVar.getClass();
        Iterator it2 = (z ? new sb.g(arrayList) : arrayList).iterator();
        float f13 = 0.0f;
        while (it2.hasNext()) {
            wb.i iVar2 = (wb.i) it2.next();
            iVar2.getClass();
            float f14 = f10 + f13;
            boolean z12 = iVar2.f17803c;
            int i18 = z12 ? iVar2.f17802b : iVar2.f17801a;
            int i19 = z12 ? iVar2.f17801a - 1 : iVar2.f17802b;
            float f15 = oVar.f4889j.f4893a * oVar.f4890k.f4828a;
            int i20 = z12 ? iVar2.f17802b - 1 : iVar2.f17801a;
            float f16 = 0.0f;
            while (true) {
                if (z12) {
                    if (i20 < i19) {
                        break;
                    }
                    if (i20 != i19 || oVar.f4883d.charAt(i20) == '\t') {
                        int i21 = !z12 ? i20 + 1 : i18;
                        int i22 = !z12 ? i18 : i20;
                        float f17 = f14 + f16;
                        i10 = jVar.f4863a;
                        int i23 = !z12 ? i22 - 1 : i21;
                        size = oVar.f4887h.size();
                        while (true) {
                            i11 = i10 + 1;
                            i12 = i10;
                            if (i11 >= size || ((lb.a) ((jb.c) oVar.f4887h.get(i11))).f10706a > i23) {
                                break;
                            }
                            i10 = i11;
                        }
                        if (!z12) {
                            int i24 = i12;
                            int i25 = i22;
                            fI = 0.0f;
                            while (true) {
                                if (i25 <= i21) {
                                    it = it2;
                                    f11 = f13;
                                    i13 = i20;
                                    i14 = i19;
                                    break;
                                }
                                jb.c cVar = (jb.c) oVar.f4887h.get(i24);
                                if (i24 == 0) {
                                    i17 = 0;
                                    z11 = false;
                                } else {
                                    i17 = ((lb.a) cVar).f10706a;
                                    z11 = true;
                                }
                                int iMax = Math.max(i21, i17);
                                int i26 = i21;
                                it = it2;
                                i13 = i20;
                                f11 = f13;
                                i14 = i19;
                                fI += oVar.i(iMax, i25, z12, cVar, canvas, f17 + fI, iVar);
                                if (z11) {
                                    i24--;
                                }
                                if (f17 + fI > iVar.f4850c) {
                                    break;
                                }
                                i20 = i13;
                                i19 = i14;
                                i25 = iMax;
                                i21 = i26;
                                it2 = it;
                                f13 = f11;
                            }
                        } else {
                            it = it2;
                            f11 = f13;
                            i13 = i20;
                            i14 = i19;
                            int i27 = i12;
                            int i28 = i21;
                            fI = 0.0f;
                            while (i28 < i22) {
                                int i29 = i27 + 1;
                                if (i29 >= size) {
                                    i15 = oVar.f4886g;
                                    z4 = false;
                                } else {
                                    i15 = ((lb.a) ((jb.c) oVar.f4887h.get(i29))).f10706a;
                                    z4 = true;
                                }
                                int iMin = Math.min(i22, i15);
                                int i30 = size;
                                int i31 = i22;
                                fI += oVar.i(i28, iMin, z12, (jb.c) oVar.f4887h.get(i27), canvas, f17 + fI, iVar);
                                if (z4) {
                                    i27 = i29;
                                }
                                if (f17 + fI > iVar.f4850c) {
                                    break;
                                }
                                i28 = iMin;
                                size = i30;
                                i22 = i31;
                            }
                        }
                        float f18 = f16 + fI;
                        f12 = f14 + f18;
                        if (f12 > iVar.f4850c) {
                            if (i13 != i14) {
                                int i32 = iVar.f4851d;
                                if (i13 == i32 || ((i16 = i13 + 1) == i32 && i16 == oVar.f4886g)) {
                                    float f19 = i13 == i32 ? 0.0f : f15;
                                    if (z12) {
                                        iVar.f4852e = (f18 + f15) - f19;
                                    } else {
                                        iVar.f4852e = f19 + f18;
                                    }
                                    iVar.f4850c = 0.0f;
                                }
                                float f20 = iVar.f4853f;
                                if (f20 != -1.0f) {
                                    float f21 = (f20 - f14) - f18;
                                    if (z12) {
                                        f21 = f15 - f21;
                                    }
                                    if (f21 > f15 / 2.0f) {
                                        iVar.f4854g = i13 + 1;
                                    } else {
                                        iVar.f4854g = i13;
                                    }
                                }
                                l lVar = iVar.l;
                                if (lVar != null && i13 >= iVar.f4857j && i13 < iVar.f4858k) {
                                    lVar.b(f12, f12 + f15);
                                }
                                d3.g gVar = iVar.f4862p;
                                if (gVar != null) {
                                    ((float[][]) gVar.f4437c)[i13 / 262144][i13 % 262144] = f15;
                                }
                                tb.h hVar = iVar.f4860n;
                                if (hVar == null || i13 < iVar.f4857j || i13 >= iVar.f4858k) {
                                    z10 = z12;
                                } else {
                                    z10 = z12;
                                    hVar.a(canvas, oVar.f4883d, i13, 1, i13, 1, z10, f12, f15, oVar.f4889j, null);
                                }
                                f18 += f15;
                            } else {
                                z10 = z12;
                            }
                            f16 = f18;
                            i18 = z10 ? i13 : i13 + 1;
                            if (f14 + f16 > iVar.f4850c) {
                                break;
                            }
                        } else {
                            f16 = f18;
                            break;
                        }
                    } else {
                        it = it2;
                        f11 = f13;
                        i13 = i20;
                        i14 = i19;
                        z10 = z12;
                    }
                    int i33 = (z10 ? -1 : 1) + i13;
                    z12 = z10;
                    i19 = i14;
                    it2 = it;
                    f13 = f11;
                    i20 = i33;
                } else {
                    if (i20 > i19) {
                        break;
                    }
                    if (i20 != i19) {
                        if (!z12) {
                        }
                        if (!z12) {
                        }
                        float f172 = f14 + f16;
                        i10 = jVar.f4863a;
                        if (!z12) {
                        }
                        size = oVar.f4887h.size();
                        while (true) {
                            i11 = i10 + 1;
                            i12 = i10;
                            if (i11 >= size) {
                                break;
                            }
                            break;
                            break;
                            i10 = i11;
                        }
                        if (!z12) {
                        }
                        float f182 = f16 + fI;
                        f12 = f14 + f182;
                        if (f12 > iVar.f4850c) {
                        }
                    }
                }
            }
            float f22 = iVar.f4853f;
            if (f22 != -1.0f) {
                iVar.f4855h = iVar2;
                float f23 = f10 + f11;
                iVar.f4856i = f23 <= f22 && f22 <= f23 + f16;
            }
            f13 = f11 + f16;
            if (f10 + f13 > iVar.f4850c) {
                break;
            }
            it2 = it;
        }
        return f13;
    }

    public final void b(int i10, int i11, int i12, int i13, boolean z, Canvas canvas, float f10, float f11, i iVar) {
        int i14 = i11 - i10;
        if (i14 < 64 || this.l == null) {
            tb.h hVar = iVar.f4860n;
            if (hVar != null) {
                hVar.a(canvas, this.f4883d, i10, i14, i12, i13 - i12, z, f10, f11, this.f4889j, iVar.f4861o);
                return;
            } else {
                c(i10, i11, i12, i13, z, canvas, f10, f11);
                return;
            }
        }
        float fMax = Math.max(0.0f, iVar.f4849b - f10) - this.f4890k.f4828a;
        float fMin = Math.min(f11, iVar.f4850c - f10) + this.f4890k.f4828a;
        int iE = e(i10, i11, i12, i13, z, fMax);
        int iE2 = e(i10, i11, i12, i13, z, fMin);
        int iMin = Math.min(iE, iE2);
        int iMax = Math.max(iE, iE2);
        if (iMin < iMax) {
            int i15 = iMin;
            while (true) {
                int i16 = i15 - 1;
                if (i16 < i12 || this.f4883d.charAt(i16) == ' ' || iMax - i15 >= 256) {
                    break;
                } else {
                    i15--;
                }
            }
            int i17 = iMax;
            while (true) {
                int i18 = i17 + 1;
                if (i18 >= i13 || this.f4883d.charAt(i17) == ' ' || i17 - i15 >= 256) {
                    break;
                } else {
                    i17 = i18;
                }
            }
            float fH = h(iMin, i10, i11, i12, i13, z);
            float fH2 = h(iMax, i10, i11, i12, i13, z);
            float fAbs = Math.abs(fH - fH2);
            float f12 = z ? (f10 + f11) - fH2 : f10 + fH;
            tb.h hVar2 = iVar.f4860n;
            if (hVar2 != null) {
                hVar2.a(canvas, this.f4883d, iMin, iMax - iMin, i12, i13 - i12, z, f12, fAbs, this.f4889j, iVar.f4861o);
            } else {
                c(iMin, iMax, i12, i13, z, canvas, f12, fAbs);
            }
        }
    }

    public final void c(int i10, int i11, int i12, int i13, boolean z, Canvas canvas, float f10, float f11) {
        char c7;
        Canvas canvas2;
        int i14;
        int i15;
        Canvas canvas3 = canvas;
        c cVar = this.f4890k;
        if (!cVar.f4829b) {
            q4.a.i(canvas, this.f4883d, i10, i11 - i10, i12, i13 - i12, f10, this.f4889j.f4898f, z, cVar);
            return;
        }
        float f12 = f10 + (z ? f11 : 0.0f);
        int i16 = i10;
        int i17 = i16;
        float f13 = f12;
        while (i16 <= i11) {
            if (i16 != i11) {
                char cCharAt = this.f4883d.charAt(i16);
                if (mb.k.f(cCharAt)) {
                    c7 = cCharAt;
                } else {
                    i14 = i16;
                    i15 = i17;
                    canvas2 = canvas3;
                    i16 = i14 + 1;
                    canvas3 = canvas2;
                    i17 = i15;
                }
            } else {
                c7 = 0;
            }
            int i18 = i16 - i17;
            if (i18 > 0) {
                if (z) {
                    this.f4890k.setTextAlign(Paint.Align.RIGHT);
                }
                q4.a.i(canvas, this.f4883d, i17, i18, i12, i13 - i12, f13, this.f4889j.f4898f, z, this.f4890k);
                if (z) {
                    this.f4890k.setTextAlign(Paint.Align.LEFT);
                }
            }
            if (i16 == i11) {
                return;
            }
            float fMeasureText = this.f4890k.measureText(mb.k.d(c7));
            i14 = i16;
            canvas2 = canvas3;
            float fH = h(i16, i10, i11, i10, i11, z);
            float f14 = z ? (f12 - fH) - fMeasureText : f12 + fH;
            p pVar = this.f4889j;
            Paint paint = pVar.f4904m;
            paint.setTextAlign(Paint.Align.CENTER);
            Paint.FontMetricsInt fontMetricsInt = pVar.f4905n;
            int i19 = fontMetricsInt.descent;
            int i20 = fontMetricsInt.ascent;
            float f15 = this.f4889j.f4900h / 2.0f;
            float f16 = (i19 - i20) / 2.0f;
            float f17 = f15 - f16;
            paint.setColor(this.f4890k.getColor());
            float f18 = (fMeasureText / 2.0f) + f14;
            canvas2.drawText(mb.k.d(c7), f18, f17 - i20, paint);
            paint.setTextAlign(Paint.Align.LEFT);
            float fMeasureText2 = paint.measureText(mb.k.d(c7));
            RectF rectF = this.f4880a;
            rectF.top = f17;
            rectF.bottom = f15 + f16;
            float f19 = fMeasureText2 / 2.0f;
            rectF.left = f18 - f19;
            rectF.right = f18 + f19;
            int color = this.f4890k.getColor();
            this.f4890k.setColor(this.f4889j.f4903k.f19543a.get(52));
            this.f4890k.setStyle(Paint.Style.STROKE);
            this.f4890k.setStrokeWidth(this.f4889j.f4900h * 0.05f);
            float f20 = r3.f4900h * this.f4889j.f4901i;
            canvas2.drawRoundRect(rectF, f20, f20, this.f4890k);
            this.f4890k.setStyle(Paint.Style.FILL);
            this.f4890k.setColor(color);
            float f21 = fH + fMeasureText;
            if (z) {
                f21 = -f21;
            }
            f13 = f12 + f21;
            i15 = i14;
            i16 = i14 + 1;
            canvas3 = canvas2;
            i17 = i15;
        }
    }

    public final long d(Canvas canvas, float f10, float f11) {
        i iVar = new i();
        iVar.f4849b = f10;
        iVar.f4850c = f11;
        e eVar = new e(this, canvas, iVar, f11);
        k(eVar, true);
        boolean z = eVar.f4834b;
        return sb.h.g(z ? 1 : 0, Float.floatToRawIntBits(eVar.f4833a));
    }

    public final int e(int i10, int i11, int i12, int i13, boolean z, float f10) {
        int iA;
        int i14 = i10;
        d3.g gVar = this.l;
        if (gVar != null) {
            float fG = gVar.g(0, i14);
            int i15 = i14;
            int i16 = i11;
            while (i15 <= i16) {
                int i17 = (i15 + i16) / 2;
                if (i17 >= i14 && i17 < i11) {
                    float fG2 = gVar.g(0, i17) - fG;
                    if (fG2 > f10) {
                        i16 = i17 - 1;
                    } else if (fG2 < f10) {
                        i15 = i17 + 1;
                    }
                }
                i15 = i17;
                break;
            }
            if (gVar.g(0, i15) - fG > f10) {
                i15--;
            }
            return Math.max(i14, Math.min(i11, i15));
        }
        c cVar = this.f4890k;
        mb.h hVar = this.f4883d;
        if (!cVar.f4829b) {
            return cVar.a(hVar, i10, i11, i12, i13, z, f10);
        }
        int i18 = i14;
        float f11 = 0.0f;
        while (i14 < i11) {
            char cCharAt = hVar.charAt(i14);
            if (mb.k.f(cCharAt)) {
                if (i18 == i14) {
                    iA = i14;
                } else {
                    iA = cVar.a(hVar, i18, i14, i12, i13, z, f10 - f11);
                }
                if (iA < i14) {
                    return iA;
                }
                float fMeasureText = cVar.measureText(mb.k.d(cCharAt)) + f11 + cVar.b(hVar, i18, i14 - i18, i12, i13 - i12, z, null, 0);
                if (fMeasureText >= f10) {
                    return i14;
                }
                f11 = fMeasureText;
                i18 = i14 + 1;
            }
            i14++;
        }
        if (i18 >= i11) {
            return i11;
        }
        return cVar.a(hVar, i18, i11, i12, i13, z, f10 - f11);
    }

    public final float f(int i10) {
        i iVar = new i();
        iVar.f4851d = i10;
        k(new d(this, iVar), true);
        return iVar.f4852e;
    }

    public final h g(float f10) {
        i iVar = new i();
        iVar.f4853f = f10;
        iVar.f4850c = f10;
        k(new k(this, iVar), true);
        int i10 = iVar.f4854g;
        if (i10 == -1) {
            i10 = this.f4885f;
        }
        return new h(iVar.f4855h, iVar.f4856i, i10);
    }

    public final float h(int i10, int i11, int i12, int i13, int i14, boolean z) {
        d3.g gVar = this.l;
        if (gVar != null) {
            return gVar.g(i11, i10);
        }
        c cVar = this.f4890k;
        mb.h hVar = this.f4883d;
        return Build.VERSION.SDK_INT >= 23 ? cVar.getRunAdvance(hVar, i11, i12, i13, i14, z, i10) : cVar.b(hVar, i11, i10 - i11, i13, i14 - i13, z, null, 0);
    }

    public final float i(int i10, int i11, boolean z, jb.c cVar, Canvas canvas, float f10, i iVar) {
        float f11;
        c cVar2;
        float fB;
        int iMax;
        int iMin;
        float fMax;
        c cVar3;
        char c7;
        c cVar4;
        float f12;
        Paint paint;
        lb.a aVar;
        int i12;
        int i13;
        int[] iArr;
        int[] iArr2;
        int i14;
        c cVar5;
        int i15;
        float f13;
        Paint paint2;
        lb.a aVar2;
        c cVar6 = this.f4890k;
        if ((canvas != null && iVar.f4860n == null) || this.l == null) {
            long j10 = ((lb.a) cVar).f10707b;
            long j11 = j10 & 1924145348608L;
            if ((1924145348608L & j10) != iVar.f4848a) {
                cVar6 = cVar6;
                cVar6.setFakeBoldText((274877906944L & j10) != 0);
                if ((j10 & 549755813888L) != 0) {
                    cVar6.setTextSkewX(-0.2f);
                } else {
                    cVar6.setTextSkewX(0.0f);
                }
                iVar.f4848a = j11;
            } else {
                cVar6 = cVar6;
            }
        }
        float[] fArrF = iVar.f4862p != null ? sb.h.f(i11 - i10) : null;
        int i16 = i11 - i10;
        if (this.l != null) {
            if (fArrF != null) {
                for (int i17 = 0; i17 < i16; i17++) {
                    int i18 = i10 + i17;
                    int i19 = i18 / 262144;
                    int i20 = i18 % 262144;
                    float[] fArr = ((float[][]) this.l.f4437c)[i19];
                    fArrF[i17] = fArr[i20 + 1] - fArr[i20];
                }
            }
            fB = this.l.g(i10, i10 + i16);
            cVar2 = cVar6;
            f11 = -0.2f;
        } else {
            f11 = -0.2f;
            cVar2 = cVar6;
            fB = this.f4890k.b(this.f4883d, i10, i16, i10, i16, z, fArrF, 0);
        }
        if (iVar.f4862p != null && fArrF != null) {
            for (int i21 = i10; i21 < i11; i21++) {
                ((float[][]) iVar.f4862p.f4437c)[i21 / 262144][i21 % 262144] = fArrF[i21 - i10];
            }
            sb.h.i(fArrF);
        }
        int i22 = iVar.f4851d;
        if (i22 >= i10 && (i22 < i11 || (i22 == i11 && i11 == this.f4886g))) {
            iVar.f4850c = 0.0f;
            float fH = h(i22, i10, i11, i10, i11, z);
            if (z) {
                iVar.f4852e = (f10 + fB) - fH;
            } else {
                iVar.f4852e = fH + f10;
            }
            return fB;
        }
        float f14 = iVar.f4853f;
        float f15 = -1.0f;
        if (f14 != -1.0f) {
            float f16 = f14 - f10;
            if (z) {
                f16 = fB - f16;
            }
            float f17 = f16;
            if (f17 > fB) {
                iVar.f4854g = i11;
            } else if (f17 <= 0.0f) {
                iVar.f4854g = i10;
            } else {
                iVar.f4854g = e(i10, i11, i10, i11, z, f17);
            }
        }
        if (!(iVar.l == null && iVar.f4860n == null) && (iMax = Math.max(i10, iVar.f4857j)) < (iMin = Math.min(i11, iVar.f4858k))) {
            if (iMax == i10 && iMin == i11) {
                fMax = f10 + fB;
                f15 = f10;
            } else {
                float fH2 = h(iMax, i10, i11, i10, i11, z);
                float fH3 = h(iMin, i10, i11, i10, i11, z);
                if (z) {
                    fH2 = fB - fH2;
                }
                float f18 = fH2;
                if (z) {
                    fH3 = fB - fH3;
                }
                float fMin = Math.min(f18, fH3) + f10;
                fMax = Math.max(f18, fH3) + f10;
                f15 = fMin;
            }
            l lVar = iVar.l;
            if (lVar != null) {
                lVar.b(f15, fMax);
            }
        } else {
            fMax = -1.0f;
        }
        float f19 = f10 + fB;
        if (Math.max(f10, iVar.f4849b) >= Math.min(f19, iVar.f4850c) || canvas == null) {
            return fB;
        }
        if (iVar.f4860n != null) {
            if (Math.max(i10, iVar.f4857j) >= Math.min(i11, iVar.f4858k)) {
                return fB;
            }
            if (iVar.f4859m) {
                canvas.save();
                float f20 = fMax - f15;
                if ((((lb.a) cVar).f10707b & 549755813888L) != 0) {
                    Path path = new Path();
                    float f21 = this.f4889j.f4896d;
                    path.moveTo(f15, f21);
                    float f22 = f21 * f11;
                    path.lineTo(f15 - f22, 0.0f);
                    float f23 = f15 + f20;
                    path.lineTo(f23 - f22, 0.0f);
                    path.lineTo(f23, f21);
                    path.close();
                    canvas.clipPath(path);
                } else {
                    canvas.clipRect(f15, 0.0f, f20 + f15, this.f4889j.f4900h);
                }
            }
            iVar.f4861o = cVar;
            b(i10, i11, i10, i11, z, canvas, f10, fB, iVar);
            iVar.f4861o = null;
            iVar.f4848a = -1L;
            if (iVar.f4859m) {
                canvas.restore();
            }
            return fB;
        }
        Paint paint3 = this.f4889j.l;
        cVar.getClass();
        zb.a aVar3 = this.f4889j.f4903k;
        ue.d.e(aVar3, "colorScheme");
        lb.a aVar4 = (lb.a) cVar;
        int i23 = aVar3.f19543a.get((int) ((aVar4.f10707b & 274877382656L) >> 19));
        if (i23 == 0 || i10 == i11) {
            cVar3 = cVar2;
            c7 = 0;
        } else {
            this.f4889j.getClass();
            c7 = 0;
            float f24 = this.f4889j.f4899g;
            RectF rectF = this.f4880a;
            rectF.set(f10, 0, f19, f24);
            cVar3 = cVar2;
            cVar3.setColor(i23);
            float f25 = r0.f4900h * this.f4889j.f4901i;
            canvas.drawRoundRect(rectF, f25, f25, cVar3);
        }
        zb.a aVar5 = this.f4889j.f4903k;
        ue.d.e(aVar5, "colorScheme");
        int i24 = aVar5.f19543a.get((int) (aVar4.f10707b & 524287));
        int i25 = this.f4891m;
        int i26 = this.f4892n;
        if (i25 >= i26 || i25 >= this.f4886g || i26 <= this.f4885f || this.f4889j.f4903k.f19543a.get(30) == 0) {
            cVar4 = cVar3;
            f12 = f19;
            paint = paint3;
            aVar = aVar4;
            cVar4.setColor(i24);
            b(i10, i11, i10, i11, z, canvas, f10, fB, iVar);
        } else {
            int iMax2 = Math.max(i10, Math.min(i11, this.f4891m));
            int iMax3 = Math.max(i10, Math.min(i11, this.f4892n));
            int[] iArr3 = this.f4881b;
            iArr3[c7] = i10;
            iArr3[1] = i11;
            iArr3[2] = iMax2;
            iArr3[3] = iMax3;
            Arrays.sort(iArr3);
            int i27 = 0;
            float f26 = 0.0f;
            while (true) {
                int i28 = i27 + 1;
                if (i28 >= iArr3.length) {
                    break;
                }
                int i29 = iArr3[i27];
                int i30 = iArr3[i28];
                if (i29 == i30) {
                    i12 = iMax3;
                    i13 = iMax2;
                    iArr2 = iArr3;
                    i15 = i24;
                    f13 = f19;
                    paint2 = paint3;
                    aVar2 = aVar4;
                    i14 = i28;
                    cVar5 = cVar3;
                } else {
                    if (i29 < iMax2 || i30 > iMax3) {
                        i12 = iMax3;
                        i13 = iMax2;
                        iArr = iArr3;
                        this.f4890k.setColor(i24);
                    } else {
                        i12 = iMax3;
                        i13 = iMax2;
                        iArr = iArr3;
                        this.f4890k.setColor(this.f4889j.f4903k.f19543a.get(30));
                    }
                    iArr2 = iArr;
                    i14 = i28;
                    cVar5 = cVar3;
                    i15 = i24;
                    f13 = f19;
                    float fH4 = h(i30, i29, i30, i10, i11, z);
                    if (z) {
                        paint2 = paint3;
                        aVar2 = aVar4;
                        b(i29, i30, i10, i11, true, canvas, (f13 - f26) - fH4, fH4, iVar);
                    } else {
                        paint2 = paint3;
                        aVar2 = aVar4;
                        b(i29, i30, i10, i11, false, canvas, f10 + f26, fH4, iVar);
                    }
                    f26 += fH4;
                }
                i27 = i14;
                cVar3 = cVar5;
                i24 = i15;
                paint3 = paint2;
                aVar4 = aVar2;
                iMax3 = i12;
                iMax2 = i13;
                iArr3 = iArr2;
                f19 = f13;
            }
            cVar4 = cVar3;
            f12 = f19;
            paint = paint3;
            aVar = aVar4;
        }
        if ((aVar.f10707b & 1099511627776L) != 0) {
            int color = this.f4889j.f4903k.f19543a.get(57);
            if (color == 0) {
                color = cVar4.getColor();
            }
            paint.setColor(color);
            this.f4889j.getClass();
            float f27 = 0;
            int i31 = this.f4889j.f4900h;
            canvas.drawLine(f10, (i31 / 2.0f) + f27, f12, (i31 / 2.0f) + f27, paint);
        }
        return fB;
    }

    public final void j(int i10, int i11, g gVar) {
        i iVar = new i();
        iVar.f4857j = i10;
        iVar.f4858k = i11;
        iVar.l = new l(iVar, gVar);
        k(new k(this, iVar), true);
        iVar.l.a();
    }

    public final void k(m mVar, boolean z) {
        nb.c yVar = (!z || this.f4883d.f11077d <= 0) ? this.f4884e : new y(this.f4884e);
        j jVarL = null;
        for (int i10 = 0; i10 < yVar.a(); i10++) {
            int iO = yVar.o(i10);
            int iMax = Math.max(yVar.j(i10), this.f4885f);
            int iMin = Math.min(iO, this.f4886g);
            if (iMax < iMin) {
                jVarL = l(iMax);
                boolean zQ = yVar.q(i10);
                ArrayList arrayList = new ArrayList();
                while (jVarL.f4864b >= this.f4888i.size()) {
                    if (iMax >= iMin) {
                        boolean zA = mVar.a(arrayList, zQ, jVarL);
                        int size = this.f4887h.size();
                        while (true) {
                            int i11 = jVarL.f4863a + 1;
                            if (i11 >= size || ((lb.a) ((jb.c) this.f4887h.get(i11))).f10706a > iMin) {
                                break;
                            } else {
                                jVarL.f4863a++;
                            }
                        }
                        if (!zA) {
                            break;
                        }
                    } else {
                        wb.i iVar = new wb.i();
                        iVar.f17801a = iMax;
                        iVar.f17802b = iMin;
                        iVar.f17803c = zQ;
                        arrayList.add(iVar);
                        iMax = iMin;
                    }
                }
                this.f4888i.get(jVarL.f4864b).getClass();
                throw new ClassCastException();
            }
        }
        int i12 = jVarL == null ? 0 : jVarL.f4864b;
        ArrayList arrayList2 = new ArrayList();
        if (i12 < this.f4888i.size()) {
            this.f4888i.get(i12).getClass();
            throw new ClassCastException();
        }
        if (arrayList2.isEmpty()) {
            return;
        }
        if (jVarL == null) {
            jVarL = l(this.f4886g);
        }
        jVarL.f4864b = i12;
        mVar.a(arrayList2, false, jVarL);
    }

    public final j l(int i10) {
        lb.a aVar = this.f4882c;
        aVar.f10706a = i10;
        int iBinarySearch = Collections.binarySearch(this.f4887h, aVar, f4879o);
        if (iBinarySearch < 0) {
            iBinarySearch = -(iBinarySearch + 1);
        }
        if (iBinarySearch == this.f4887h.size()) {
            iBinarySearch--;
        }
        while (iBinarySearch > 0 && ((lb.a) ((jb.c) this.f4887h.get(iBinarySearch))).f10706a >= i10) {
            iBinarySearch--;
        }
        if (this.f4888i.size() <= 0) {
            return new j(iBinarySearch);
        }
        this.f4888i.get(0).getClass();
        throw new ClassCastException();
    }

    public final void m(mb.h hVar, int i10, int i11, ArrayList arrayList, List list, nb.b bVar, c cVar, d3.g gVar, p pVar) {
        this.f4883d = hVar;
        this.f4885f = i10;
        this.f4886g = i11;
        this.f4887h = arrayList;
        this.f4888i = list;
        this.f4884e = bVar;
        this.f4890k = cVar;
        this.f4889j = pVar;
        this.l = gVar;
        ue.d.e(pVar.f4894b, "textMetrics");
    }
}

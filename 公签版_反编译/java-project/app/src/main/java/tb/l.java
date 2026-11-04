package tb;

import android.R;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderNode;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.text.GetChars;
import android.util.SparseArray;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.hsae.autosdk.popup.constant.PopupConst;
import ha.db;
import io.github.rosemoe.sora.widget.CodeEditor;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;

/* loaded from: classes.dex */
public final class l {
    public static final int[] J = {R.attr.state_pressed, R.attr.state_enabled};
    public static final int[] K = {R.attr.state_enabled};
    public Paint.FontMetricsInt A;
    public Paint.FontMetricsInt B;
    public int C;
    public mb.j D;
    public mb.h E;
    public mb.g F;
    public volatile boolean G;
    public boolean H;
    public final xb.c I;

    /* renamed from: a, reason: collision with root package name */
    public final eb.b f14961a;

    /* renamed from: b, reason: collision with root package name */
    public final eb.c f14962b;

    /* renamed from: c, reason: collision with root package name */
    public final eb.c f14963c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f14964d;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f14965e;

    /* renamed from: f, reason: collision with root package name */
    public final Path f14966f;

    /* renamed from: g, reason: collision with root package name */
    public final eb.c f14967g;

    /* renamed from: h, reason: collision with root package name */
    public final RectF f14968h;

    /* renamed from: i, reason: collision with root package name */
    public final RectF f14969i;

    /* renamed from: p, reason: collision with root package name */
    public final CodeEditor f14975p;
    public Paint.FontMetricsInt r;

    /* renamed from: s, reason: collision with root package name */
    public Drawable f14977s;

    /* renamed from: t, reason: collision with root package name */
    public Drawable f14978t;

    /* renamed from: u, reason: collision with root package name */
    public Drawable f14979u;

    /* renamed from: v, reason: collision with root package name */
    public Drawable f14980v;

    /* renamed from: w, reason: collision with root package name */
    public final Drawable f14981w;

    /* renamed from: x, reason: collision with root package name */
    public final Drawable f14982x;

    /* renamed from: y, reason: collision with root package name */
    public final Drawable f14983y;
    public volatile long z;

    /* renamed from: j, reason: collision with root package name */
    public final sb.e f14970j = new sb.e();

    /* renamed from: k, reason: collision with root package name */
    public final a0.n f14971k = new a0.n();
    public final sb.e l = new sb.e();

    /* renamed from: m, reason: collision with root package name */
    public final a0.p f14972m = new a0.p();

    /* renamed from: n, reason: collision with root package name */
    public final SparseArray f14973n = new SparseArray();

    /* renamed from: o, reason: collision with root package name */
    public final SparseArray f14974o = new SparseArray();

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f14976q = new ArrayList();

    public l(CodeEditor codeEditor) {
        new ArrayList();
        this.f14975p = codeEditor;
        this.f14968h = new RectF();
        this.f14969i = new RectF();
        this.f14961a = new eb.b();
        eb.c cVar = new eb.c(codeEditor.Y0);
        this.f14962b = cVar;
        cVar.setAntiAlias(true);
        eb.c cVar2 = new eb.c(false);
        this.f14963c = cVar2;
        cVar2.setStrokeWidth(codeEditor.getDpUnit() * 1.8f);
        cVar2.setStrokeCap(Paint.Cap.ROUND);
        cVar2.setTypeface(Typeface.MONOSPACE);
        cVar2.setAntiAlias(true);
        eb.c cVar3 = new eb.c(false);
        this.f14967g = cVar3;
        cVar3.setAntiAlias(true);
        this.r = cVar.getFontMetricsInt();
        this.A = cVar2.getFontMetricsInt();
        this.f14964d = new Rect();
        this.f14965e = new RectF();
        this.f14966f = new Path();
        this.f14981w = codeEditor.getContext().getDrawable(com.yunpan.appmanage.R.drawable.line_break);
        this.f14982x = codeEditor.getContext().getDrawable(com.yunpan.appmanage.R.drawable.softwrap_left);
        this.f14983y = codeEditor.getContext().getDrawable(com.yunpan.appmanage.R.drawable.softwrap_right);
        this.I = new xb.c(codeEditor);
        this.D = codeEditor.getCursor();
        this.F = codeEditor.getText();
    }

    public static boolean A(int i10, int i11, int i12, boolean z) {
        return (i10 != i12 || z) && i10 >= i11 && i10 <= i12;
    }

    public final void B() {
        CodeEditor codeEditor = this.f14975p;
        boolean z = codeEditor.Y0;
        eb.c cVar = this.f14962b;
        cVar.f4829b = z;
        this.B = this.f14967g.getFontMetricsInt();
        this.A = this.f14963c.getFontMetricsInt();
        this.r = cVar.getFontMetricsInt();
        codeEditor.getRenderContext().a();
        C();
        codeEditor.x(true);
        codeEditor.invalidate();
    }

    public final void C() {
        this.z = SystemClock.elapsedRealtimeNanos();
    }

    public final void a(k kVar, int i10, int i11) {
        long jT = t(i10, i11);
        kVar.f14958e = ((int) (jT >> 32)) == 1;
        kVar.f14959f = ((int) (jT & 4294967295L)) == 1;
    }

    public final void b(eb.o oVar, int i10, mb.h hVar) {
        mb.j jVar;
        mb.b bVar;
        int i11;
        mb.b bVar2;
        int i12;
        if (!this.D.a() || i10 < (i11 = (bVar = (jVar = this.D).f11081c).f11057b) || i10 > (i12 = (bVar2 = jVar.f11082d).f11057b)) {
            return;
        }
        int i13 = i10 == i11 ? bVar.f11058c : 0;
        int i14 = i10 == i12 ? bVar2.f11058c : hVar.f11076c;
        int iMax = Math.max(oVar.f4885f, i13);
        int iMin = Math.min(oVar.f4886g, i14);
        if (iMax < iMin) {
            oVar.f4891m = iMax;
            oVar.f4892n = iMin;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x015a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0165 -> B:43:0x0148). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(int i10, int i11, long j10, boolean z) {
        mb.g gVar;
        CodeEditor codeEditor;
        int i12;
        boolean z4;
        int i13 = 8;
        int i14 = 0;
        mb.g gVar2 = this.F;
        CodeEditor codeEditor2 = this.f14975p;
        yb.b renderContext = codeEditor2.getRenderContext();
        int i15 = i10;
        while (i15 <= i11 && i15 < gVar2.f11064a.size()) {
            mb.h hVarU = z ? u(i15) : this.F.o(i15);
            androidx.room.s sVar = codeEditor2.getRenderContext().f19112a;
            yb.a aVarC = sVar.C(i15);
            if (aVarC == null) {
                aVarC = new yb.a(i15);
                ArrayList arrayList = (ArrayList) sVar.f2428d;
                arrayList.add(aVarC);
                while (arrayList.size() > sVar.f2426b && !arrayList.isEmpty()) {
                    arrayList.remove(i14);
                }
            }
            if (aVarC.f19111c < j10) {
                d3.g gVar3 = aVarC.f19110b;
                if (gVar3 != null) {
                    if (gVar3.f4436b < hVarU.f11076c) {
                        aVarC.f19110b = new d3.g(Math.max(hVarU.f11076c + i13, 90), 22);
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    ArrayList arrayList2 = codeEditor2.f8709e;
                    if (arrayList2.isEmpty()) {
                        arrayList2.add(p000if.a.q0(5L));
                    }
                    Integer numValueOf = Integer.valueOf(hVarU.f11076c);
                    Integer numValueOf2 = Integer.valueOf(codeEditor2.getTabWidth());
                    eb.c cVar = this.f14962b;
                    Integer numValueOf3 = Integer.valueOf(cVar.getFlags());
                    Float fValueOf = Float.valueOf(cVar.getTextSize());
                    Float fValueOf2 = Float.valueOf(cVar.getTextScaleX());
                    Float fValueOf3 = Float.valueOf(cVar.getLetterSpacing());
                    String fontFeatureSettings = cVar.getFontFeatureSettings();
                    Integer numValueOf4 = Integer.valueOf(cVar.getTypeface().hashCode());
                    Object[] objArr = new Object[9];
                    objArr[0] = arrayList2;
                    objArr[1] = numValueOf;
                    objArr[2] = numValueOf2;
                    objArr[3] = numValueOf3;
                    objArr[4] = fValueOf;
                    objArr[5] = fValueOf2;
                    objArr[6] = fValueOf3;
                    objArr[7] = fontFeatureSettings;
                    objArr[i13] = numValueOf4;
                    int iHash = Objects.hash(objArr);
                    if (((a0.n) renderContext.f19112a.f2427c).b(i15) != iHash || z4) {
                        a0.n nVar = (a0.n) renderContext.f19112a.f2427c;
                        if (i15 < 0) {
                            nVar.getClass();
                        } else if (i15 < nVar.f46b) {
                            int[] iArr = nVar.f45a;
                            int i16 = iArr[i15];
                            iArr[i15] = iHash;
                            wb.j jVarF = codeEditor2.f8719j.f(codeEditor2.f8719j.l(gVar2.l(i15, 0)), null);
                            eb.o oVar = new eb.o();
                            mb.h hVarO = gVar2.o(i15);
                            nb.b bVarP = gVar2.p(i15);
                            int i17 = hVarO.f11076c + 10;
                            d3.g gVar4 = aVarC.f19110b;
                            gVar = gVar2;
                            if (gVar4 == null || gVar4.f4436b < i17) {
                                gVar4 = new d3.g(i17, 22);
                                aVarC.f19110b = gVar4;
                            }
                            if (jVarF.hasNext()) {
                                wb.h next = jVarF.next();
                                if (next.f17794a == i15) {
                                    oVar.m(hVarO, next.f17797d, next.f17798e, arrayList2, next.f17799f, bVarP, this.f14962b, null, e());
                                    eb.i iVar = new eb.i();
                                    iVar.f4862p = gVar4;
                                    oVar.k(new eb.k(oVar, iVar), true);
                                    jVarF = jVarF;
                                    codeEditor2 = codeEditor2;
                                    if (jVarF.hasNext()) {
                                    }
                                }
                            }
                            codeEditor = codeEditor2;
                            int i18 = hVarO.f11076c;
                            i14 = 0;
                            oVar.f4885f = 0;
                            oVar.f4886g = i18;
                            for (float[] fArr : (float[][]) gVar4.f4437c) {
                                float f10 = fArr[0];
                                fArr[0] = 0.0f;
                                int i19 = 1;
                                while (i19 <= fArr.length - 1) {
                                    float f11 = fArr[i19];
                                    fArr[i19] = fArr[i19 - 1] + f10;
                                    i19++;
                                    f10 = f11;
                                }
                            }
                            aVarC.f19111c = j10;
                        }
                        throw new IndexOutOfBoundsException("Index must be between 0 and size");
                    }
                    gVar = gVar2;
                    codeEditor = codeEditor2;
                    i12 = 1;
                    i14 = 0;
                }
                i15 += i12;
                gVar2 = gVar;
                codeEditor2 = codeEditor;
                i13 = 8;
            } else {
                gVar = gVar2;
                codeEditor = codeEditor2;
                i14 = 0;
            }
            i12 = 1;
            i15 += i12;
            gVar2 = gVar;
            codeEditor2 = codeEditor;
            i13 = 8;
        }
    }

    public final eb.o d(int i10) {
        this.f14975p.getStyles();
        jb.a aVar = jb.a.f9848b;
        wb.h hVarQ = this.f14975p.getLayout().q(i10);
        mb.h hVarO = this.F.o(hVarQ.f17794a);
        eb.o oVar = new eb.o();
        yb.a aVarC = this.f14975p.getRenderContext().f19112a.C(hVarQ.f17794a);
        d3.g gVar = (aVarC == null || aVarC.f19111c < this.z) ? null : aVarC.f19110b;
        d3.g gVar2 = (gVar == null || gVar.f4436b <= hVarO.f11076c) ? null : gVar;
        int i11 = hVarQ.f17797d;
        int i12 = hVarQ.f17798e;
        aVar.getClass();
        oVar.m(hVarO, i11, i12, new ArrayList(aVar.f9849a), hVarQ.f17799f, this.F.p(hVarQ.f17794a), this.f14962b, gVar2, e());
        b(oVar, hVarQ.f17794a, hVarO);
        return oVar;
    }

    public final eb.p e() {
        CodeEditor codeEditor = this.f14975p;
        int tabWidth = codeEditor.getTabWidth();
        Paint.FontMetricsInt fontMetricsInt = this.r;
        int iL = codeEditor.L(0);
        int iK = codeEditor.K(0) - (codeEditor.getLineSpacingPixels() / 2);
        int rowHeightOfText = codeEditor.getRowHeightOfText();
        int iJ = codeEditor.J(0);
        codeEditor.getRowHeight();
        return new eb.p(tabWidth, fontMetricsInt, iL, iK, rowHeightOfText, iJ, codeEditor.K(0), codeEditor.getRowHeight(), codeEditor.getProps().f14927v, codeEditor, codeEditor.getColorScheme(), this.f14963c, this.f14967g, this.B);
    }

    public final void f(Canvas canvas, float f10, float f11, float f12, boolean z) {
        float f13 = f12 * 0.2f;
        float f14 = 0.866f * f13;
        Path path = this.f14966f;
        path.reset();
        path.moveTo(f10, f11);
        if (z) {
            f14 = -f14;
        }
        path.lineTo(f14 + f10, (f13 / 2.0f) + f11);
        path.lineTo(f10, f11 + f13);
        path.close();
        canvas.drawPath(path, this.f14962b);
    }

    public final void g(Canvas canvas, int i10, RectF rectF) {
        if (i10 != 0) {
            eb.c cVar = this.f14962b;
            cVar.setColor(i10);
            canvas.drawRect(rectF, cVar);
        }
    }

    public final void h(Canvas canvas, float f10, int i10) {
        CodeEditor codeEditor = this.f14975p;
        boolean z = codeEditor.R0 && !codeEditor.H && codeEditor.getOffsetX() > 0;
        float dividerWidth = codeEditor.getDividerWidth() + f10;
        if (dividerWidth < 0.0f) {
            return;
        }
        float fMax = Math.max(0.0f, f10);
        float height = codeEditor.getHeight();
        RectF rectF = this.f14965e;
        rectF.bottom = height;
        rectF.top = 0.0f;
        int offsetY = codeEditor.getOffsetY();
        if (offsetY < 0) {
            float f11 = offsetY;
            rectF.bottom -= f11;
            rectF.top -= f11;
        }
        rectF.left = fMax;
        rectF.right = dividerWidth;
        eb.c cVar = this.f14962b;
        if (z) {
            canvas.save();
            canvas.clipRect(rectF.left, rectF.top, codeEditor.getWidth(), rectF.bottom);
            cVar.setShadowLayer(Math.min(codeEditor.getDpUnit() * 8.0f, codeEditor.getOffsetX()), 0.0f, 0.0f, -16777216);
        }
        g(canvas, i10, rectF);
        if (z) {
            canvas.restore();
            cVar.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        }
    }

    public final void i(Canvas canvas, float f10, float f11, float f12) {
        float[] fArr;
        float rowHeight;
        float f13;
        CodeEditor codeEditor = this.f14975p;
        if (codeEditor.O) {
            int lnPanelPositionMode = codeEditor.getLnPanelPositionMode();
            int lnPanelPosition = codeEditor.getLnPanelPosition();
            ((dc.a) codeEditor.getLineNumberTipTextProvider()).getClass();
            ue.d.e(codeEditor, "editor");
            String strA = da.b.a(codeEditor.getFirstVisibleLine() + 1, "L");
            eb.c cVar = this.f14962b;
            float textSize = cVar.getTextSize();
            cVar.setTextSkewX(0.0f);
            cVar.setFakeBoldText(false);
            cVar.setTextSize(codeEditor.getLineInfoTextSize());
            Paint.FontMetricsInt fontMetricsInt = this.r;
            this.r = cVar.getFontMetricsInt();
            float dpUnit = codeEditor.getDpUnit() * 8.0f;
            float fMeasureText = cVar.measureText(strA);
            RectF rectF = this.f14965e;
            if (lnPanelPositionMode == 0) {
                rectF.top = ((codeEditor.getHeight() / 2.0f) - (codeEditor.getRowHeight() / 2.0f)) - dpUnit;
                rectF.bottom = (codeEditor.getRowHeight() / 2.0f) + (codeEditor.getHeight() / 2.0f) + dpUnit;
                float f14 = fMeasureText / 2.0f;
                rectF.left = ((codeEditor.getWidth() / 2.0f) - f14) - dpUnit;
                rectF.right = (codeEditor.getWidth() / 2.0f) + f14 + dpUnit;
                float f15 = dpUnit * 2.0f;
                rowHeight = (codeEditor.getHeight() / 2.0f) + f15;
                float dpUnit2 = codeEditor.getDpUnit() * 10.0f;
                if (lnPanelPosition != 15) {
                    if ((2 | lnPanelPosition) == lnPanelPosition) {
                        rectF.top = dpUnit2;
                        rectF.bottom = codeEditor.getRowHeight() + dpUnit2 + f15;
                        rowHeight = codeEditor.J(0) + dpUnit2 + dpUnit;
                    }
                    if ((8 | lnPanelPosition) == lnPanelPosition) {
                        rectF.top = ((codeEditor.getHeight() - dpUnit2) - f15) - codeEditor.getRowHeight();
                        rectF.bottom = codeEditor.getHeight() - dpUnit2;
                        rowHeight = ((codeEditor.J(0) + (codeEditor.getHeight() - codeEditor.getRowHeight())) - dpUnit2) - dpUnit;
                    }
                    if ((lnPanelPosition | 1) == lnPanelPosition) {
                        rectF.left = dpUnit2;
                        rectF.right = dpUnit2 + f15 + fMeasureText;
                    }
                    if ((lnPanelPosition | 4) == lnPanelPosition) {
                        rectF.right = codeEditor.getWidth() - dpUnit2;
                        rectF.left = ((codeEditor.getWidth() - dpUnit2) - f15) - fMeasureText;
                    }
                }
                int i10 = codeEditor.getColorScheme().f19543a.get(16);
                if (i10 != 0) {
                    cVar.setColor(i10);
                    canvas.drawRoundRect(rectF, rectF.height() * 0.13f, rectF.height() * 0.13f, cVar);
                }
                f13 = 0.0f;
            } else {
                rectF.right = codeEditor.getWidth() - f12;
                float f16 = dpUnit * 2.0f;
                rectF.left = (rectF.right - f16) - fMeasureText;
                if (lnPanelPosition == 2) {
                    rectF.top = f10;
                    rectF.bottom = codeEditor.getRowHeight() + f10 + f16;
                    rowHeight = f10 + codeEditor.J(0) + dpUnit;
                    fArr = new float[8];
                    for (int i11 = 0; i11 < 8; i11++) {
                        if (i11 != 5) {
                            fArr[i11] = rectF.height() * 0.5f;
                        }
                    }
                } else if (lnPanelPosition == 8) {
                    float f17 = f10 + f11;
                    rectF.top = (f17 - codeEditor.getRowHeight()) - f16;
                    rectF.bottom = f17;
                    rowHeight = f17 - (codeEditor.J(0) / 2.0f);
                    fArr = new float[8];
                    for (int i12 = 0; i12 < 8; i12++) {
                        if (i12 != 3) {
                            fArr[i12] = rectF.height() * 0.5f;
                        }
                    }
                } else {
                    float f18 = (f11 / 2.0f) + f10;
                    rectF.top = (f18 - (codeEditor.getRowHeight() / 2.0f)) - dpUnit;
                    rectF.bottom = (codeEditor.getRowHeight() / 2.0f) + f18 + dpUnit;
                    fArr = null;
                    rowHeight = (f18 - (codeEditor.getRowHeight() / 2.0f)) + codeEditor.J(0);
                }
                Path path = this.f14966f;
                if (fArr != null) {
                    path.reset();
                    path.addRoundRect(rectF, fArr, Path.Direction.CW);
                    f13 = 0.0f;
                } else {
                    float f19 = -dpUnit;
                    rectF.offset(f19, 0.0f);
                    rectF.right += dpUnit;
                    Matrix matrix = eb.a.f4823a;
                    path.reset();
                    float fWidth = rectF.width();
                    float fHeight = rectF.height() / 2.0f;
                    float fSqrt = (float) Math.sqrt(2.0d);
                    float f20 = fSqrt * fHeight;
                    float fMax = Math.max(fHeight + f20, fWidth);
                    eb.a.a(path, fHeight, fHeight, fHeight, 90.0f, 180.0f);
                    float f21 = fMax - f20;
                    eb.a.a(path, f21, fHeight, fHeight, -90.0f, 45.0f);
                    float f22 = fHeight / 5.0f;
                    eb.a.a(path, fMax - (fSqrt * f22), fHeight, f22, -45.0f, 90.0f);
                    eb.a.a(path, f21, fHeight, fHeight, 45.0f, 45.0f);
                    path.close();
                    Matrix matrix2 = eb.a.f4823a;
                    matrix2.reset();
                    matrix2.postTranslate(rectF.left, rectF.top);
                    path.transform(matrix2);
                    f13 = f19 / 2.0f;
                }
                cVar.setColor(codeEditor.getColorScheme().f19543a.get(16));
                canvas.drawPath(path, cVar);
            }
            float f23 = ((rectF.left + rectF.right) / 2.0f) + f13;
            cVar.setColor(codeEditor.getColorScheme().f19543a.get(17));
            cVar.setTextAlign(Paint.Align.CENTER);
            canvas.drawText(strA, f23, rowHeight, cVar);
            cVar.setTextAlign(Paint.Align.LEFT);
            cVar.setTextSize(textSize);
            this.r = fontMetricsInt;
        }
    }

    public final void j(Canvas canvas, int i10, int i11, float f10, float f11, int i12) {
        int i13;
        int i14;
        int i15;
        char[] cArr;
        char[] cArr2;
        float f12 = f11 + f10;
        if (f12 <= 0.0f) {
            return;
        }
        eb.c cVar = this.f14963c;
        Paint.Align textAlign = cVar.getTextAlign();
        CodeEditor codeEditor = this.f14975p;
        if (textAlign != codeEditor.getLineNumberAlign()) {
            cVar.setTextAlign(codeEditor.getLineNumberAlign());
        }
        cVar.setColor(i12);
        Paint.FontMetricsInt fontMetricsInt = this.A;
        int i16 = fontMetricsInt.descent;
        int i17 = fontMetricsInt.ascent;
        float rowHeight = (((((codeEditor.getRowHeight() * i11) + codeEditor.K(i11)) / 2.0f) - ((i16 - i17) / 2.0f)) - i17) - codeEditor.getOffsetY();
        char[] cArrE = sb.h.e(20);
        int i18 = i10 + 1;
        if (i18 >= 0) {
            i13 = -i18;
            i14 = 0;
        } else {
            i13 = i18;
            i14 = 1;
        }
        int i19 = -10;
        int i20 = 1;
        while (true) {
            if (i20 >= 10) {
                i15 = i14 + 10;
                break;
            } else if (i13 > i19) {
                i15 = i20 + i14;
                break;
            } else {
                i19 *= 10;
                i20++;
            }
        }
        boolean z = i18 < 0;
        if (!z) {
            i18 = -i18;
        }
        int i21 = i15;
        while (true) {
            cArr = sb.h.f14478b;
            cArr2 = sb.h.f14479c;
            if (i18 > -100) {
                break;
            }
            int i22 = i18 / 100;
            int i23 = (i22 * 100) - i18;
            cArrE[i21 - 1] = cArr2[i23];
            i21 -= 2;
            cArrE[i21] = cArr[i23];
            i18 = i22;
        }
        int i24 = i21 - 1;
        int i25 = -i18;
        cArrE[i24] = cArr2[i25];
        if (i18 < -9) {
            i24 = i21 - 2;
            cArrE[i24] = cArr[i25];
        }
        if (z) {
            cArrE[i24 - 1] = '-';
        }
        int i26 = j.f14951a[codeEditor.getLineNumberAlign().ordinal()];
        if (i26 == 1) {
            canvas.drawText(cArrE, 0, i15, f10, rowHeight, this.f14963c);
        } else if (i26 == 2) {
            canvas.drawText(cArrE, 0, i15, f12, rowHeight, this.f14963c);
        } else if (i26 == 3) {
            canvas.drawText(cArrE, 0, i15, ((codeEditor.getDividerMarginLeft() + f11) / 2.0f) + f10, rowHeight, this.f14963c);
        }
        sb.h.h(cArrE);
    }

    public final void k(Canvas canvas, float f10, float f11, int i10) {
        float f12 = f11 + f10;
        if (f12 < 0.0f) {
            return;
        }
        float fMax = Math.max(0.0f, f10);
        CodeEditor codeEditor = this.f14975p;
        float height = codeEditor.getHeight();
        RectF rectF = this.f14965e;
        rectF.bottom = height;
        rectF.top = 0.0f;
        int offsetY = codeEditor.getOffsetY();
        if (offsetY < 0) {
            float f13 = offsetY;
            rectF.bottom -= f13;
            rectF.top -= f13;
        }
        rectF.left = fMax;
        rectF.right = f12;
        g(canvas, i10, rectF);
    }

    public final void l(Canvas canvas, float f10, int i10, Drawable drawable) {
        int iK;
        int offsetY;
        CodeEditor codeEditor = this.f14975p;
        if (i10 == -1) {
            iK = codeEditor.K(0);
            offsetY = codeEditor.getLineSpacingPixels() / 2;
        } else {
            iK = codeEditor.K(i10) - (codeEditor.getLineSpacingPixels() / 2);
            offsetY = codeEditor.getOffsetY();
        }
        float f11 = iK - offsetY;
        float rowHeightOfText = codeEditor.getRowHeightOfText();
        Objects.requireNonNull(codeEditor.getProps());
        float f12 = rowHeightOfText * 0.5f;
        if (f12 <= 0.0f || drawable == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return;
        }
        drawable.setColorFilter(codeEditor.getColorScheme().f19543a.get(31), PorterDuff.Mode.SRC_ATOP);
        drawable.setBounds((int) f10, (int) (f11 - f12), (int) (f10 + ((intrinsicWidth / intrinsicHeight) * f12)), (int) f11);
        drawable.draw(canvas);
    }

    public final void m(Canvas canvas, int i10, int i11, int i12) {
        CodeEditor codeEditor = this.f14975p;
        float rowHeight = (codeEditor.getRowHeight() * i11) - codeEditor.getOffsetY();
        RectF rectF = this.f14965e;
        rectF.top = rowHeight;
        rectF.bottom = codeEditor.K(i11) - codeEditor.getOffsetY();
        rectF.left = 0.0f;
        rectF.right = i12;
        g(canvas, i10, rectF);
    }

    public final void n(Canvas canvas, RectF rectF, int i10, int i11) {
        eb.c cVar = this.f14962b;
        cVar.setColor(i10);
        CodeEditor codeEditor = this.f14975p;
        if (codeEditor.getProps().f14925s) {
            canvas.drawRoundRect(rectF, codeEditor.getRowHeight() * codeEditor.getProps().f14927v, codeEditor.getRowHeight() * codeEditor.getProps().f14927v, cVar);
        } else {
            canvas.drawRect(rectF, cVar);
        }
        if (i11 == 0) {
            return;
        }
        cVar.setColor(i11);
        cVar.setStyle(Paint.Style.STROKE);
        cVar.setStrokeWidth(codeEditor.getTextBorderWidth());
        if (codeEditor.getProps().f14925s) {
            canvas.drawRoundRect(rectF, codeEditor.getRowHeight() * codeEditor.getProps().f14927v, codeEditor.getRowHeight() * codeEditor.getProps().f14927v, cVar);
        } else {
            canvas.drawRect(rectF, cVar);
        }
        cVar.setStyle(Paint.Style.FILL);
    }

    public final void o(final Canvas canvas, int i10, eb.o oVar, int i11, int i12, int i13, int i14, final int i15, final int i16) {
        int iMax = Math.max(i11, i13);
        int iMin = Math.min(i12, i14);
        if (iMax < iMin) {
            RectF rectF = this.f14965e;
            int iY = y(i10);
            CodeEditor codeEditor = this.f14975p;
            rectF.top = iY - codeEditor.getOffsetY();
            rectF.bottom = x(i10) - codeEditor.getOffsetY();
            float fS = codeEditor.S() - codeEditor.getOffsetX();
            final float fW = (!codeEditor.H || codeEditor.getLayout().q(i10).f17795b || (codeEditor.getNonPrintablePaintingFlags() & 128) == 0) ? fS : w() + fS;
            eb.o oVarD = oVar == null ? d(i10) : oVar;
            final int width = codeEditor.getWidth();
            oVarD.j(iMax, iMin, new eb.g() { // from class: tb.g
                @Override // eb.g
                public final boolean a(float f10, float f11) {
                    l lVar = this.f14935a;
                    RectF rectF2 = lVar.f14965e;
                    float f12 = fW;
                    float f13 = f10 + f12;
                    rectF2.left = f13;
                    float f14 = f12 + f11;
                    rectF2.right = f14;
                    if (f14 < 0.0f || f13 > width) {
                        return false;
                    }
                    lVar.n(canvas, rectF2, i15, i16);
                    return true;
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x04cc  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0674  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0712  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0783  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x08f0  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x08f2  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x08fe  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x090c  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x0924  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x0a1b  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0a30  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0ac3  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0ad7  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0bc5  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0c2b  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0c7b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(Canvas canvas, float f10, sb.e eVar, ArrayList arrayList, a0.n nVar, androidx.leanback.widget.i iVar) {
        mb.b bVarZ;
        int i10;
        mb.b bVar;
        mb.b bVar2;
        d3.g gVar;
        int i11;
        int i12;
        float f11;
        jb.a aVar;
        int i13;
        float f12;
        float f13;
        float f14;
        CodeEditor codeEditor;
        float f15;
        int i14;
        int i15;
        int i16;
        boolean z;
        float fIntBitsToFloat;
        float f16;
        jb.a aVar2;
        int i17;
        int i18;
        float f17;
        float f18;
        wb.h hVar;
        mb.b bVar3;
        jb.a aVar3;
        int i19;
        wb.h hVar2;
        ArrayList arrayList2;
        mb.b bVar4;
        mb.b selectingTarget;
        yb.c cVar;
        d3.g gVar2;
        int i20;
        int i21;
        wb.h hVar3;
        a0.p pVar;
        int i22;
        int i23;
        mb.j jVar;
        mb.b bVar5;
        int i24;
        int i25;
        mb.b bVar6;
        int i26;
        long[] jArr;
        long[] jArr2;
        long[] jArr3;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        long[] jArr4;
        wb.h hVar4;
        a0.p pVar2;
        int i32;
        int i33;
        char c7;
        int i34;
        long[] jArr5;
        long[] jArr6;
        sb.e eVar2;
        boolean z4;
        int i35;
        final Canvas canvas2 = canvas;
        int firstVisibleRow = this.f14975p.getFirstVisibleRow();
        wb.j jVarF = this.f14975p.getLayout().f(firstVisibleRow, this.f14973n);
        this.f14975p.getStyles();
        sb.e eVar3 = this.l;
        a0.p pVar3 = this.f14972m;
        eVar3.f14472b = 0;
        pVar3.a();
        int i36 = this.D.a() ? -1 : this.D.f11081c.f11057b;
        int i37 = this.f14975p.getColorScheme().f19543a.get(9);
        int iL = this.D.a() ? -1 : this.f14975p.getLayout().l(this.D.f11081c.f11056a);
        int i38 = this.f14975p.getColorScheme().f19543a.get(80);
        CodeEditor codeEditor2 = this.f14975p;
        float fW = (!codeEditor2.H || (codeEditor2.getNonPrintablePaintingFlags() & 128) == 0) ? 0.0f : w();
        if (!this.f14975p.f8714h.f14933b.a() || (i35 = this.f14975p.f8714h.f14933b.f11061a) < 0) {
            bVarZ = null;
        } else {
            mb.g gVar3 = this.F;
            if (i35 < gVar3.f11067d) {
                bVarZ = gVar3.n().z(this.f14975p.f8714h.f14933b.f11061a);
            }
        }
        CodeEditor codeEditor3 = this.f14975p;
        mb.d dVar = codeEditor3.f8714h.f14933b;
        int i39 = i38;
        int i40 = dVar.f11063c - dVar.f11061a;
        mb.b bVar7 = codeEditor3.getEventHandler().L;
        float fMin = (this.f14975p.f8729p & (-185)) != 0 ? Math.min(r3.getRowHeight(), this.f14962b.f4828a) * 0.125f : 0.0f;
        if (Build.VERSION.SDK_INT < 29 || this.f14975p.H || !canvas.isHardwareAccelerated()) {
            i10 = iL;
            bVar = bVar7;
            bVar2 = bVarZ;
        } else {
            CodeEditor codeEditor4 = this.f14975p;
            if (codeEditor4.G1) {
                s4.a aVar4 = codeEditor4.getRenderContext().f19113b;
                int lastVisibleRow = this.f14975p.getLastVisibleRow();
                i10 = iL;
                je.t tVar = je.t.f9872a;
                bVar = bVar7;
                Iterator it = ((ArrayList) aVar4.f14294c).iterator();
                bVar2 = bVarZ;
                ue.d.d(it, "iterator(...)");
                while (it.hasNext()) {
                    Object next = it.next();
                    ue.d.d(next, "next(...)");
                    yb.c cVar2 = (yb.c) next;
                    int i41 = cVar2.f19114a;
                    if ((firstVisibleRow > i41 || i41 > lastVisibleRow) && !tVar.contains(Integer.valueOf(i41))) {
                        it.remove();
                        cVar2.f19115b.discardDisplayList();
                        ((Stack) aVar4.f14295d).push(cVar2);
                    }
                }
            }
        }
        float offsetX = this.f14975p.getOffsetX() - this.f14975p.S();
        if (((dc.c) this.f14975p.getCursorAnimator()).b()) {
            CodeEditor codeEditor5 = this.f14975p;
            if (codeEditor5.N0 && codeEditor5.N()) {
                this.f14975p.getProps().getClass();
                this.f14975p.getProps().getClass();
            }
        }
        int i42 = -1;
        for (int i43 = firstVisibleRow; i43 <= this.f14975p.getLastVisibleRow() && jVarF.hasNext(); i43++) {
            int i44 = jVarF.next().f17794a;
            if (i42 != i44) {
                this.E = u(i44);
                i42 = i44;
            }
            this.f14975p.getProps().getClass();
            if (i44 != i36 || ((dc.c) this.f14975p.getCursorAnimator()).b()) {
                z4 = false;
            } else {
                CodeEditor codeEditor6 = this.f14975p;
                if (codeEditor6.N0 && codeEditor6.N()) {
                    z4 = true;
                }
            }
            if (z4) {
                this.f14975p.getProps().getClass();
            } else {
                this.f14975p.getStyles();
            }
            if (z4) {
                m(canvas2, i37, i43, this.f14964d.right);
                nVar.a(nVar.f46b + 1);
                int[] iArr = nVar.f45a;
                int i45 = nVar.f46b;
                iArr[i45] = i43;
                nVar.f46b = i45 + 1;
            }
        }
        if (((dc.c) this.f14975p.getCursorAnimator()).b()) {
            CodeEditor codeEditor7 = this.f14975p;
            if (codeEditor7.N0) {
                codeEditor7.getProps().getClass();
                CodeEditor codeEditor8 = this.f14975p;
                float fFloatValue = ((Float) ((dc.c) codeEditor8.getCursorAnimator()).f4578e.getAnimatedValue()).floatValue() - codeEditor8.getOffsetY();
                RectF rectF = this.f14965e;
                rectF.bottom = fFloatValue;
                rectF.top = fFloatValue - ((Float) ((dc.c) codeEditor8.getCursorAnimator()).f4579f.getAnimatedValue()).floatValue();
                rectF.left = 0.0f;
                rectF.right = this.f14964d.right;
                g(canvas2, i37, rectF);
            }
        }
        jVarF.reset();
        int i46 = firstVisibleRow;
        while (i46 <= this.f14975p.getLastVisibleRow() && jVarF.hasNext()) {
            wb.h next2 = jVarF.next();
            canvas.save();
            canvas2.translate(next2.f17800g, 0.0f);
            int i47 = next2.f17794a;
            int i48 = u(i47).f11076c;
            if (i42 != i47) {
                CodeEditor codeEditor9 = this.f14975p;
                codeEditor9.getClass();
                eVar3.f14472b = 0;
                r rVar = codeEditor9.f8747y1;
                if (rVar.f15000b == null || rVar.f15001c == null || !rVar.f() || (eVar2 = codeEditor9.f8747y1.f15004f) == null) {
                    i20 = i48;
                } else {
                    int iL2 = codeEditor9.f8716h1.l(i47, 0);
                    int i49 = codeEditor9.f8716h1.o(i47).f11076c + iL2;
                    i20 = i48;
                    for (int iMax = Math.max(0, eVar3.d(iL2) - 1); iMax < eVar2.f14472b; iMax++) {
                        long jC = eVar2.c(iMax);
                        int i50 = (int) (jC >> 32);
                        int iMax2 = Math.max(i50, iL2);
                        int iMin = Math.min((int) (jC & 4294967295L), i49);
                        if (iMax2 < iMin) {
                            eVar3.a(sb.h.g(iMax2 - iL2, iMin - iL2));
                        }
                        if (i50 > i49) {
                            break;
                        }
                    }
                }
                this.f14975p.getClass();
                pVar3.a();
                this.E = u(i47);
                i21 = i47;
            } else {
                i20 = i48;
                i21 = i42;
            }
            float f19 = -offsetX;
            float f20 = !next2.f17795b ? f19 + fW : f19;
            if (eVar3.f14472b > 0) {
                eb.o oVarD = d(i46);
                int i51 = 0;
                while (i51 < eVar3.f14472b) {
                    long jC2 = eVar3.c(i51);
                    o(canvas, i46, oVarD, (int) (jC2 >> 32), (int) (jC2 & 4294967295L), next2.f17797d, next2.f17798e, this.f14975p.getColorScheme().f19543a.get(29), this.f14975p.getColorScheme().f19543a.get(78));
                    i51++;
                    next2 = next2;
                    pVar3 = pVar3;
                    i47 = i47;
                    eVar3 = eVar3;
                    i20 = i20;
                    f19 = f19;
                    i21 = i21;
                    offsetX = offsetX;
                    f20 = f20;
                    firstVisibleRow = firstVisibleRow;
                    i10 = i10;
                }
            }
            float f21 = f20;
            sb.e eVar4 = eVar3;
            int i52 = firstVisibleRow;
            int i53 = i21;
            float f22 = offsetX;
            int i54 = i39;
            int i55 = i10;
            mb.b bVar8 = bVar;
            mb.b bVar9 = bVar2;
            int i56 = i20;
            int i57 = i47;
            wb.h hVar5 = next2;
            float f23 = f19;
            a0.p pVar4 = pVar3;
            if (pVar4.f54e > 0) {
                eb.o oVarD2 = d(i46);
                long[] jArr7 = pVar4.f51b;
                long[] jArr8 = pVar4.f52c;
                long[] jArr9 = pVar4.f50a;
                int length = jArr9.length - 2;
                if (length >= 0) {
                    int i58 = 0;
                    while (true) {
                        long j10 = jArr9[i58];
                        if (((((-1) ^ j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i59 = 8 - (((i58 - length) ^ (-1)) >>> 31);
                            long j11 = j10;
                            int i60 = 0;
                            while (i60 < i59) {
                                if ((j11 & 255) < 128) {
                                    int i61 = (i58 << 3) + i60;
                                    long j12 = jArr7[i61];
                                    long j13 = jArr8[i61];
                                    pVar2 = pVar4;
                                    i32 = i57;
                                    i29 = i60;
                                    i33 = i55;
                                    i34 = i59;
                                    hVar4 = hVar5;
                                    c7 = '\b';
                                    i30 = i58;
                                    i31 = length;
                                    jArr5 = jArr9;
                                    jArr6 = jArr8;
                                    jArr4 = jArr7;
                                    o(canvas, i46, oVarD2, (int) (j12 >> 32), (int) (j12 & 4294967295L), hVar5.f17797d, hVar5.f17798e, (int) (j13 >> 32), (int) (j13 & 4294967295L));
                                } else {
                                    i29 = i60;
                                    i30 = i58;
                                    i31 = length;
                                    jArr4 = jArr7;
                                    hVar4 = hVar5;
                                    pVar2 = pVar4;
                                    i32 = i57;
                                    i33 = i55;
                                    c7 = '\b';
                                    i34 = i59;
                                    jArr5 = jArr9;
                                    jArr6 = jArr8;
                                }
                                j11 >>= c7;
                                i60 = i29 + 1;
                                jArr9 = jArr5;
                                jArr8 = jArr6;
                                i59 = i34;
                                pVar4 = pVar2;
                                jArr7 = jArr4;
                                i57 = i32;
                                i55 = i33;
                                hVar5 = hVar4;
                                i58 = i30;
                                length = i31;
                            }
                            int i62 = i58;
                            int i63 = length;
                            jArr = jArr7;
                            hVar3 = hVar5;
                            pVar = pVar4;
                            i22 = i57;
                            i23 = i55;
                            jArr2 = jArr9;
                            jArr3 = jArr8;
                            if (i59 != 8) {
                                break;
                            }
                            i27 = i62;
                            i28 = i63;
                        } else {
                            jArr = jArr7;
                            hVar3 = hVar5;
                            pVar = pVar4;
                            i22 = i57;
                            i23 = i55;
                            jArr2 = jArr9;
                            jArr3 = jArr8;
                            i27 = i58;
                            i28 = length;
                        }
                        if (i27 == i28) {
                            break;
                        }
                        i58 = i27 + 1;
                        length = i28;
                        jArr9 = jArr2;
                        jArr8 = jArr3;
                        pVar4 = pVar;
                        jArr7 = jArr;
                        i57 = i22;
                        i55 = i23;
                        hVar5 = hVar3;
                    }
                } else {
                    hVar3 = hVar5;
                    pVar = pVar4;
                    i22 = i57;
                    i23 = i55;
                }
            }
            if (!this.D.a() || (i25 = i22) < (i24 = (bVar5 = (jVar = this.D).f11081c).f11057b) || i25 > (i26 = (bVar6 = jVar.f11082d).f11057b)) {
                canvas2 = canvas;
            } else {
                int i64 = i25 == i24 ? bVar5.f11058c : 0;
                int i65 = i25 == i26 ? bVar6.f11058c : i56;
                if (u(i25).f11076c != 0 || i25 == this.D.f11082d.f11057b) {
                    canvas2 = canvas;
                    if (i64 < i65) {
                        wb.h hVar6 = hVar3;
                        o(canvas, i46, null, i64, i65, hVar6.f17797d, hVar6.f17798e, this.f14975p.getColorScheme().f19543a.get(6), this.f14975p.getColorScheme().f19543a.get(79));
                    }
                } else {
                    this.f14965e.top = y(i46) - this.f14975p.getOffsetY();
                    this.f14965e.bottom = x(i46) - this.f14975p.getOffsetY();
                    RectF rectF2 = this.f14965e;
                    rectF2.left = f21;
                    rectF2.right = (this.f14962b.f4828a * 2.0f) + f21;
                    canvas2 = canvas;
                    n(canvas2, rectF2, this.f14975p.getColorScheme().f19543a.get(6), this.f14975p.getColorScheme().f19543a.get(79));
                }
            }
            canvas.restore();
            int i66 = i23;
            if (i46 == i66 && i54 != 0) {
                this.f14965e.top = (this.f14975p.getRowHeight() * i46) - this.f14975p.getOffsetY();
                this.f14965e.bottom = this.f14975p.K(i46) - this.f14975p.getOffsetY();
                this.f14965e.left = Math.max(0.0f, f23);
                this.f14965e.right = this.f14975p.getWidth();
                this.f14962b.setColor(i54);
                this.f14962b.setStyle(Paint.Style.STROKE);
                this.f14962b.setStrokeWidth(this.f14975p.getDpUnit());
                canvas2.drawRect(this.f14965e, this.f14962b);
                this.f14962b.setStyle(Paint.Style.FILL);
            }
            i46++;
            i39 = i54;
            i10 = i66;
            eVar3 = eVar4;
            pVar3 = pVar;
            i42 = i53;
            offsetX = f22;
            bVar = bVar8;
            bVar2 = bVar9;
            firstVisibleRow = i52;
        }
        int i67 = firstVisibleRow;
        float f24 = offsetX;
        mb.b bVar10 = bVar;
        mb.b bVar11 = bVar2;
        jVarF.reset();
        this.f14975p.getSnippetController().getClass();
        this.f14975p.getProps().getClass();
        int i68 = i67;
        d3.g gVar4 = null;
        int i69 = 0;
        int i70 = -1;
        jb.a aVar5 = null;
        int i71 = 0;
        while (i68 <= this.f14975p.getLastVisibleRow() && jVarF.hasNext()) {
            wb.h next3 = jVarF.next();
            int i72 = next3.f17794a;
            int i73 = u(i72).f11076c;
            int i74 = i67;
            if (i68 != i74 || iVar == null) {
                if (next3.f17795b) {
                    eVar.a(sb.h.g(i72, i68));
                }
                if (i70 == i72) {
                    yb.a aVarC = this.f14975p.getRenderContext().f19112a.C(i72);
                    if (aVarC == null || aVarC.f19111c != this.z || (gVar2 = aVarC.f19110b) == null || gVar2.f4436b <= i73) {
                        gVar2 = null;
                    }
                    this.E = u(i72);
                    jb.a aVar6 = jb.a.f9848b;
                    try {
                        aVar6.getClass();
                    } catch (Exception unused) {
                        aVar6 = jb.a.f9848b;
                    }
                    aVar6.getClass();
                    CodeEditor codeEditor10 = this.f14975p;
                    if ((codeEditor10.f8729p & (-185)) != 0) {
                        mb.h hVar7 = this.E;
                        codeEditor10.getClass();
                        int i75 = hVar7.f11076c;
                        int i76 = 0;
                        while (i76 < i75) {
                            char cCharAt = hVar7.charAt(i76);
                            if (cCharAt != '\t' && cCharAt != ' ') {
                                break;
                            } else {
                                i76++;
                            }
                        }
                        if (i76 == i75 || (codeEditor10.f8729p & 6) == 0) {
                            long jG = sb.h.g(i76, i75);
                            gVar = gVar2;
                            aVar = aVar6;
                            i11 = (int) (jG & 4294967295L);
                            i13 = (int) (jG >> 32);
                            i12 = i72;
                            f11 = f24;
                        } else {
                            while (i75 > 0) {
                                char cCharAt2 = hVar7.charAt(i75 - 1);
                                if (cCharAt2 != '\t' && cCharAt2 != ' ') {
                                    break;
                                } else {
                                    i75--;
                                }
                            }
                            long jG2 = sb.h.g(i76, i75);
                            gVar = gVar2;
                            aVar = aVar6;
                            i11 = (int) (jG2 & 4294967295L);
                            i13 = (int) (jG2 >> 32);
                            i12 = i72;
                            f11 = f24;
                        }
                    } else {
                        gVar = gVar2;
                        i11 = i69;
                        i13 = i71;
                        i12 = i72;
                        f11 = f24;
                        aVar = aVar6;
                    }
                } else {
                    gVar = gVar4;
                    i11 = i69;
                    i12 = i70;
                    f11 = f24;
                    int i77 = i71;
                    aVar = aVar5;
                    i13 = i77;
                }
                float f25 = next3.f17800g;
                float f26 = (-f11) + f25;
                f12 = f11 - f25;
                if (next3.f17795b && (this.f14975p.getNonPrintablePaintingFlags() & 128) != 0) {
                    f13 = f10;
                    l(canvas2, f13, i68, this.f14982x);
                    f26 += fW;
                    f12 -= fW;
                }
                f14 = f26;
                int nonPrintablePaintingFlags = this.f14975p.getNonPrintablePaintingFlags();
                codeEditor = this.f14975p;
                float f27 = f11;
                if (codeEditor.G1 || codeEditor.getEventHandler().f15026k || !canvas.isHardwareAccelerated()) {
                    f15 = f14;
                    i14 = i13;
                    i15 = i73;
                    i16 = i74;
                    eb.o oVar = new eb.o();
                    mb.h hVar8 = this.E;
                    int i78 = next3.f17797d;
                    int i79 = next3.f17798e;
                    aVar.getClass();
                    oVar.m(hVar8, i78, i79, new ArrayList(aVar.f9849a), next3.f17799f, v(i72), this.f14962b, gVar, e());
                    b(oVar, i72, this.E);
                    canvas.save();
                    canvas2.translate(-f12, (this.f14975p.getRowHeight() * i68) - this.f14975p.getOffsetY());
                    float fMax = Math.max(0.0f, f12);
                    long jD = oVar.d(canvas2, fMax, this.f14975p.getWidth() + fMax);
                    canvas.restore();
                    z = ((int) (jD >> 32)) == 1;
                    fIntBitsToFloat = Float.intBitsToFloat((int) (jD & 4294967295L)) + f15;
                    if (z && next3.f17796c && (nonPrintablePaintingFlags & 16) != 0) {
                        l(canvas2, fIntBitsToFloat, i68, this.f14981w);
                    } else if (!next3.f17796c && this.f14975p.H && (nonPrintablePaintingFlags & 128) != 0) {
                        l(canvas2, fIntBitsToFloat, i68, this.f14983y);
                    }
                    f16 = 0.0f;
                } else {
                    CodeEditor codeEditor11 = this.f14975p;
                    if (!codeEditor11.H && Build.VERSION.SDK_INT >= 29) {
                        if (next3.f17798e - next3.f17797d > 128) {
                            codeEditor11.getProps().getClass();
                            f15 = f14;
                            i14 = i13;
                            i15 = i73;
                            i16 = i74;
                            eb.o oVar2 = new eb.o();
                            mb.h hVar82 = this.E;
                            int i782 = next3.f17797d;
                            int i792 = next3.f17798e;
                            aVar.getClass();
                            oVar2.m(hVar82, i782, i792, new ArrayList(aVar.f9849a), next3.f17799f, v(i72), this.f14962b, gVar, e());
                            b(oVar2, i72, this.E);
                            canvas.save();
                            canvas2.translate(-f12, (this.f14975p.getRowHeight() * i68) - this.f14975p.getOffsetY());
                            float fMax2 = Math.max(0.0f, f12);
                            long jD2 = oVar2.d(canvas2, fMax2, this.f14975p.getWidth() + fMax2);
                            canvas.restore();
                            if (((int) (jD2 >> 32)) == 1) {
                            }
                            fIntBitsToFloat = Float.intBitsToFloat((int) (jD2 & 4294967295L)) + f15;
                            if (z) {
                                if (!next3.f17796c) {
                                    l(canvas2, fIntBitsToFloat, i68, this.f14983y);
                                }
                                f16 = 0.0f;
                            }
                        } else {
                            s4.a aVar7 = codeEditor11.getRenderContext().f19113b;
                            float rowHeight = (this.f14975p.getRowHeight() * i68) - this.f14975p.getOffsetY();
                            aVar7.getClass();
                            if (!canvas.isHardwareAccelerated()) {
                                throw new UnsupportedOperationException("Only hardware-accelerated canvas can be used");
                            }
                            CodeEditor codeEditor12 = (CodeEditor) aVar7.f14293b;
                            codeEditor12.getStyles();
                            i16 = i74;
                            ArrayList arrayList3 = (ArrayList) aVar7.f14294c;
                            i14 = i13;
                            int size = arrayList3.size();
                            i15 = i73;
                            int i80 = 0;
                            while (true) {
                                if (i80 < size) {
                                    int i81 = size;
                                    Object obj = arrayList3.get(i80);
                                    f15 = f14;
                                    ue.d.d(obj, "get(...)");
                                    cVar = (yb.c) obj;
                                    if (cVar.f19114a == i72) {
                                        Collections.swap(arrayList3, 0, i80);
                                        break;
                                    } else {
                                        i80++;
                                        size = i81;
                                        f14 = f15;
                                    }
                                } else {
                                    f15 = f14;
                                    Stack stack = (Stack) aVar7.f14295d;
                                    cVar = stack.isEmpty() ? new yb.c(i72) : (yb.c) stack.pop();
                                    cVar.f19114a = i72;
                                    cVar.f19116c = true;
                                    arrayList3.add(0, cVar);
                                }
                            }
                            if (cVar.f19116c || !cVar.f19115b.hasDisplayList()) {
                                jb.a aVar8 = jb.a.f9848b;
                                try {
                                    aVar8.getClass();
                                } catch (Exception unused2) {
                                    aVar8 = jb.a.f9848b;
                                }
                                l renderer = codeEditor12.getRenderer();
                                RenderNode renderNode = cVar.f19115b;
                                renderNode.setPosition(0, 0, (int) (renderer.q(null, i72, aVar8) + 0.5f), renderer.f14975p.getRowHeight());
                                try {
                                    renderer.q(renderNode.beginRecording(), i72, aVar8);
                                    try {
                                        aVar8.getClass();
                                    } catch (Exception e7) {
                                        e7.printStackTrace();
                                    }
                                    cVar.f19116c = false;
                                } finally {
                                    renderNode.endRecording();
                                }
                            }
                            canvas.save();
                            canvas2.translate(f13, rowHeight);
                            canvas2.drawRenderNode(cVar.f19115b);
                            canvas.restore();
                            float width = cVar.f19115b.getWidth() + f13;
                            if (next3.f17796c && (nonPrintablePaintingFlags & 16) != 0) {
                                l(canvas2, width, i68, this.f14981w);
                            }
                            f16 = 0.0f;
                        }
                    }
                }
                if (fMin == f16) {
                    int i82 = i14;
                    int i83 = i15;
                    if (i82 == i83 && (nonPrintablePaintingFlags & 8) == 0) {
                        i18 = i82;
                        aVar2 = aVar;
                        i17 = i68;
                        f17 = f15;
                        f18 = f27;
                        bVar3 = bVar11;
                        hVar = next3;
                        if (bVar3 == null || i72 != bVar3.f11057b) {
                            aVar3 = aVar2;
                            i19 = i17;
                            hVar2 = hVar;
                        } else {
                            int i84 = bVar3.f11058c;
                            int i85 = i84 + i40;
                            hVar2 = hVar;
                            int iMin2 = Math.min(Math.max(i84, hVar2.f17797d), hVar2.f17798e);
                            int iMin3 = Math.min(Math.max(i85, hVar2.f17797d), hVar2.f17798e);
                            if (iMin2 < iMin3) {
                                eb.o oVar3 = new eb.o();
                                mb.h hVar9 = this.E;
                                int i86 = hVar2.f17797d;
                                int i87 = hVar2.f17798e;
                                aVar2.getClass();
                                aVar3 = aVar2;
                                oVar3.m(hVar9, i86, i87, new ArrayList(aVar3.f9849a), hVar2.f17799f, this.F.p(i72), this.f14962b, gVar, e());
                                i19 = i17;
                                this.f14965e.top = this.f14975p.K(i19) - this.f14975p.getOffsetY();
                                RectF rectF3 = this.f14965e;
                                rectF3.bottom = (this.f14975p.getRowHeight() * 0.06f) + rectF3.top;
                                final float f28 = f17;
                                oVar3.j(iMin2, iMin3, new eb.g() { // from class: tb.i
                                    @Override // eb.g
                                    public final boolean a(float f29, float f30) {
                                        l lVar = this.f14948a;
                                        RectF rectF4 = lVar.f14965e;
                                        float f31 = f28;
                                        float f32 = f29 + f31;
                                        rectF4.left = f32;
                                        float f33 = f31 + f30;
                                        rectF4.right = f33;
                                        CodeEditor codeEditor13 = lVar.f14975p;
                                        if (f33 > 0.0f && f32 < codeEditor13.getWidth()) {
                                            lVar.g(canvas2, codeEditor13.getColorScheme().f19543a.get(10), rectF4);
                                        }
                                        return rectF4.right < ((float) codeEditor13.getWidth());
                                    }
                                });
                            } else {
                                aVar3 = aVar2;
                                i19 = i17;
                            }
                        }
                        wb.d layout = this.f14975p.getLayout();
                        if (this.D.a()) {
                            mb.b bVar12 = this.D.f11081c;
                            if (bVar12.f11057b == i72 && A(bVar12.f11058c, hVar2.f17797d, hVar2.f17798e, hVar2.f17796c)) {
                                float fS = this.f14975p.S();
                                mb.b bVar13 = this.D.f11081c;
                                float offsetX2 = (fS + ((wb.c) layout).s(bVar13.f11057b, bVar13.f11058c)[1]) - this.f14975p.getOffsetX();
                                mb.g gVar5 = this.F;
                                mb.b bVar14 = this.D.f11081c;
                                k kVar = new k(this, offsetX2, x(i19) - this.f14975p.getOffsetY(), gVar5.t(bVar14.f11057b, bVar14.f11058c) ? 2 : 1, this.f14975p.getLeftHandleDescriptor());
                                arrayList2 = arrayList;
                                arrayList2.add(kVar);
                                mb.b bVar15 = this.D.f11081c;
                                a(kVar, bVar15.f11057b, bVar15.f11058c);
                            } else {
                                arrayList2 = arrayList;
                            }
                            mb.b bVar16 = this.D.f11082d;
                            if (bVar16.f11057b == i72 && A(bVar16.f11058c, hVar2.f17797d, hVar2.f17798e, hVar2.f17796c)) {
                                float fS2 = this.f14975p.S();
                                mb.b bVar17 = this.D.f11082d;
                                float offsetX3 = (fS2 + ((wb.c) layout).s(bVar17.f11057b, bVar17.f11058c)[1]) - this.f14975p.getOffsetX();
                                mb.g gVar6 = this.F;
                                mb.b bVar18 = this.D.f11082d;
                                k kVar2 = new k(this, offsetX3, x(i19) - this.f14975p.getOffsetY(), gVar6.t(bVar18.f11057b, bVar18.f11058c) ? 1 : 2, this.f14975p.getRightHandleDescriptor());
                                arrayList2.add(kVar2);
                                mb.b bVar19 = this.D.f11082d;
                                a(kVar2, bVar19.f11057b, bVar19.f11058c);
                            }
                        } else {
                            arrayList2 = arrayList;
                            mb.b bVar20 = this.D.f11081c;
                            if (bVar20.f11057b == i72 && A(bVar20.f11058c, hVar2.f17797d, hVar2.f17798e, hVar2.f17796c)) {
                                float fS3 = this.f14975p.S();
                                mb.b bVar21 = this.D.f11081c;
                                k kVar3 = new k(this, (fS3 + ((wb.c) layout).s(bVar21.f11057b, bVar21.f11058c)[1]) - this.f14975p.getOffsetX(), x(i19) - this.f14975p.getOffsetY(), 0, this.f14975p.getInsertHandleDescriptor());
                                arrayList2.add(kVar3);
                                mb.b bVar22 = this.D.f11081c;
                                a(kVar3, bVar22.f11057b, bVar22.f11058c);
                            }
                        }
                        bVar4 = bVar10;
                        if (bVar4 != null) {
                            if (bVar4.f11057b == i72 && A(bVar4.f11058c, hVar2.f17797d, hVar2.f17798e, hVar2.f17796c)) {
                                k kVar4 = new k(this, (this.f14975p.S() + ((wb.c) layout).s(bVar4.f11057b, bVar4.f11058c)[1]) - this.f14975p.getOffsetX(), x(i19) - this.f14975p.getOffsetY(), -1, null);
                                arrayList2.add(kVar4);
                                a(kVar4, bVar4.f11057b, bVar4.f11058c);
                            }
                        } else if (this.f14975p.P() && this.f14975p.g1.a() && (selectingTarget = this.f14975p.getSelectingTarget()) != null && selectingTarget.f11057b == i72 && A(selectingTarget.f11058c, hVar2.f17797d, hVar2.f17798e, hVar2.f17796c)) {
                            k kVar5 = new k(this, (this.f14975p.S() + ((wb.c) layout).s(selectingTarget.f11057b, selectingTarget.f11058c)[1]) - this.f14975p.getOffsetX(), x(i19) - this.f14975p.getOffsetY(), -1, null);
                            arrayList2.add(kVar5);
                            a(kVar5, selectingTarget.f11057b, selectingTarget.f11058c);
                        }
                        i68 = i19 + 1;
                        bVar11 = bVar3;
                        aVar5 = aVar3;
                        bVar10 = bVar4;
                        gVar4 = gVar;
                        i69 = i11;
                        i70 = i12;
                        i67 = i16;
                        f24 = f18;
                        i71 = i18;
                    } else {
                        eb.o oVar4 = new eb.o();
                        mb.h hVar10 = this.E;
                        int i88 = next3.f17797d;
                        int i89 = next3.f17798e;
                        aVar.getClass();
                        aVar2 = aVar;
                        oVar4.m(hVar10, i88, i89, new ArrayList(aVar.f9849a), next3.f17799f, v(i72), this.f14962b, gVar, e());
                        canvas.save();
                        float f29 = f15;
                        canvas2.translate(f29, this.f14975p.L(i68) - this.f14975p.getOffsetY());
                        eb.b bVar23 = this.f14961a;
                        float fL = this.f14975p.L(i68) - this.f14975p.getOffsetY();
                        bVar23.f4826c = f29;
                        bVar23.f4827d = fL;
                        float fMax3 = Math.max(0.0f, f12);
                        this.f14963c.setColor(this.f14975p.getColorScheme().f19543a.get(31));
                        int i90 = next3.f17797d;
                        int i91 = next3.f17798e;
                        f17 = f29;
                        i17 = i68;
                        hVar = next3;
                        f18 = f27;
                        i18 = i82;
                        h hVar11 = new h(this, nonPrintablePaintingFlags, oVar4, i82, i11, i83, i72);
                        eb.i iVar2 = new eb.i();
                        iVar2.f4857j = i90;
                        iVar2.f4858k = i91;
                        iVar2.f4849b = fMax3;
                        iVar2.f4850c = fMax3 + this.f14975p.getWidth();
                        iVar2.f4859m = false;
                        iVar2.f4860n = hVar11;
                        eb.k kVar6 = new eb.k(oVar4, iVar2);
                        kVar6.f4867c = canvas2;
                        oVar4.k(kVar6, true);
                        canvas.restore();
                        eb.b bVar24 = this.f14961a;
                        bVar24.f4826c = 0.0f;
                        bVar24.f4827d = 0.0f;
                    }
                } else {
                    aVar2 = aVar;
                    i17 = i68;
                    i18 = i14;
                    f17 = f15;
                    f18 = f27;
                    hVar = next3;
                }
                bVar3 = bVar11;
                if (bVar3 == null) {
                    aVar3 = aVar2;
                    i19 = i17;
                    hVar2 = hVar;
                }
                wb.d layout2 = this.f14975p.getLayout();
                if (this.D.a()) {
                }
                bVar4 = bVar10;
                if (bVar4 != null) {
                }
                i68 = i19 + 1;
                bVar11 = bVar3;
                aVar5 = aVar3;
                bVar10 = bVar4;
                gVar4 = gVar;
                i69 = i11;
                i70 = i12;
                i67 = i16;
                f24 = f18;
                i71 = i18;
            } else {
                iVar.f1647b = i72;
            }
            if (i70 == i72) {
            }
            float f252 = next3.f17800g;
            float f262 = (-f11) + f252;
            f12 = f11 - f252;
            f13 = next3.f17795b ? f10 : f10;
            f14 = f262;
            int nonPrintablePaintingFlags2 = this.f14975p.getNonPrintablePaintingFlags();
            codeEditor = this.f14975p;
            float f272 = f11;
            if (codeEditor.G1) {
                f15 = f14;
                i14 = i13;
                i15 = i73;
                i16 = i74;
                eb.o oVar22 = new eb.o();
                mb.h hVar822 = this.E;
                int i7822 = next3.f17797d;
                int i7922 = next3.f17798e;
                aVar.getClass();
                oVar22.m(hVar822, i7822, i7922, new ArrayList(aVar.f9849a), next3.f17799f, v(i72), this.f14962b, gVar, e());
                b(oVar22, i72, this.E);
                canvas.save();
                canvas2.translate(-f12, (this.f14975p.getRowHeight() * i68) - this.f14975p.getOffsetY());
                float fMax22 = Math.max(0.0f, f12);
                long jD22 = oVar22.d(canvas2, fMax22, this.f14975p.getWidth() + fMax22);
                canvas.restore();
                if (((int) (jD22 >> 32)) == 1) {
                }
                fIntBitsToFloat = Float.intBitsToFloat((int) (jD22 & 4294967295L)) + f15;
                if (z) {
                }
            }
            if (fMin == f16) {
            }
            bVar3 = bVar11;
            if (bVar3 == null) {
            }
            wb.d layout22 = this.f14975p.getLayout();
            if (this.D.a()) {
            }
            bVar4 = bVar10;
            if (bVar4 != null) {
            }
            i68 = i19 + 1;
            bVar11 = bVar3;
            aVar5 = aVar3;
            bVar10 = bVar4;
            gVar4 = gVar;
            i69 = i11;
            i70 = i12;
            i67 = i16;
            f24 = f18;
            i71 = i18;
        }
        this.f14962b.setFakeBoldText(false);
        this.f14962b.setTextSkewX(0.0f);
        this.f14963c.setStrokeWidth(fMin * 2.0f);
        eb.b bVar25 = this.f14961a;
        eb.c cVar3 = this.f14963c;
        int i92 = bVar25.f4824a;
        if (i92 == 0) {
            return;
        }
        canvas2.drawPoints(bVar25.f4825b, 0, i92 * 2, cVar3);
        bVar25.f4824a = 0;
    }

    public final float q(Canvas canvas, int i10, jb.a aVar) {
        this.E = u(i10);
        int i11 = u(i10).f11076c;
        if (aVar == null) {
            aVar = jb.a.f9848b;
        }
        eb.o oVar = new eb.o();
        this.f14975p.getInlayHints();
        List listEmptyList = Collections.emptyList();
        yb.a aVarC = this.f14975p.getRenderContext().f19112a.C(i10);
        d3.g gVar = (aVarC == null || aVarC.f19111c < this.z) ? null : aVarC.f19110b;
        d3.g gVar2 = (gVar == null || gVar.f4436b <= this.E.f11076c) ? null : gVar;
        mb.h hVar = this.E;
        aVar.getClass();
        oVar.m(hVar, 0, i11, new ArrayList(aVar.f9849a), listEmptyList, v(i10), this.f14962b, gVar2, e());
        b(oVar, i10, this.E);
        if (canvas != null) {
            canvas.save();
            this.f14975p.getRowHeight();
            canvas.translate(0.0f, 0 + 0.0f);
            oVar.d(canvas, 0.0f, Float.MAX_VALUE);
            canvas.restore();
        }
        if (canvas != null) {
            return 0.0f;
        }
        eb.k kVar = new eb.k(oVar, new eb.i());
        oVar.k(kVar, true);
        return kVar.f4865a;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x060f  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0c7a A[PHI: r10
  0x0c7a: PHI (r10v6 boolean) = (r10v5 boolean), (r10v7 boolean), (r10v7 boolean) binds: [B:377:0x0c11, B:390:0x0c4b, B:394:0x0c5b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void r(Canvas canvas) {
        int i10;
        a0.n nVar;
        sb.e eVar;
        sb.e eVar2;
        float f10;
        float fCurrentTimeMillis;
        boolean zDraw;
        boolean z;
        cc.d dVar;
        cc.d dVar2;
        float f11;
        cc.d dVar3;
        int i11;
        sb.e eVar3;
        l lVar;
        a0.n nVar2;
        int offsetY;
        float rowHeight;
        int i12;
        int i13 = 21;
        int i14 = 1;
        this.D.f11080b.A(this.f14975p.getFirstVisibleLine(), 0);
        zb.a colorScheme = this.f14975p.getColorScheme();
        int i15 = colorScheme.f19543a.get(4);
        Rect rect = this.f14964d;
        if (i15 != 0) {
            eb.c cVar = this.f14962b;
            cVar.setColor(i15);
            canvas.drawRect(rect, cVar);
        }
        float fR = this.f14975p.R();
        z();
        float fS = this.f14975p.S() + (-this.f14975p.getOffsetX());
        float f12 = fR + 0.0f;
        int dividerMarginRight = (int) (this.f14975p.getDividerMarginRight() + this.f14975p.getDividerMarginLeft() + this.f14975p.getDividerWidth() + f12);
        CodeEditor codeEditor = this.f14975p;
        if (codeEditor.H) {
            int i16 = this.C;
            if (i16 == 0) {
                this.C = dividerMarginRight;
            } else if (i16 != dividerMarginRight && !codeEditor.getEventHandler().f15026k) {
                this.C = dividerMarginRight;
                CodeEditor codeEditor2 = this.f14975p;
                Objects.requireNonNull(codeEditor2);
                codeEditor2.Z(new db(i13, codeEditor2));
                this.f14975p.x(false);
            } else if (this.H) {
                this.f14975p.x(true);
                CodeEditor codeEditor3 = this.f14975p;
                Objects.requireNonNull(codeEditor3);
                codeEditor3.Z(new db(i13, codeEditor3));
            }
        } else {
            this.C = 0;
            if (this.H) {
                codeEditor.x(true);
            }
        }
        this.H = false;
        int firstVisibleLine = this.f14975p.getFirstVisibleLine();
        int lastVisibleLine = this.f14975p.getLastVisibleLine();
        this.f14973n.clear();
        this.f14974o.clear();
        mb.g gVar = this.F;
        int iMin = Math.min(this.F.f11064a.size() - 1, lastVisibleLine + 5);
        gVar.u(false);
        for (int iMax = Math.max(0, firstVisibleLine - 5); iMax <= iMin; iMax++) {
            try {
                mb.h hVar = (mb.h) gVar.f11064a.get(iMax);
                nb.b bVarS = gVar.f11071h.s(iMax, hVar);
                this.f14973n.put(iMax, hVar);
                this.f14974o.put(iMax, bVarS);
            } catch (Throwable th2) {
                gVar.E(false);
                throw th2;
            }
        }
        gVar.E(false);
        c(this.f14975p.getFirstVisibleLine(), this.f14975p.getLastVisibleLine(), this.z, true);
        CodeEditor codeEditor4 = this.f14975p;
        if (!codeEditor4.H) {
            codeEditor4.getProps().getClass();
        }
        if (this.D.a()) {
            cc.d insertHandleDescriptor = this.f14975p.getInsertHandleDescriptor();
            insertHandleDescriptor.f2989a.setEmpty();
            insertHandleDescriptor.f2990b = 0;
        } else {
            cc.d leftHandleDescriptor = this.f14975p.getLeftHandleDescriptor();
            leftHandleDescriptor.f2989a.setEmpty();
            leftHandleDescriptor.f2990b = 0;
            cc.d rightHandleDescriptor = this.f14975p.getRightHandleDescriptor();
            rightHandleDescriptor.f2989a.setEmpty();
            rightHandleDescriptor.f2990b = 0;
        }
        CodeEditor codeEditor5 = this.f14975p;
        boolean z4 = codeEditor5.V && (codeEditor5.H || !codeEditor5.R0);
        sb.e eVar4 = this.f14970j;
        eVar4.f14472b = 0;
        a0.n nVar3 = this.f14971k;
        nVar3.f46b = 0;
        ArrayList arrayList = new ArrayList(3);
        CodeEditor codeEditor6 = this.f14975p;
        androidx.leanback.widget.i iVar = (codeEditor6.T0 && codeEditor6.H) ? new androidx.leanback.widget.i(-1, 6) : null;
        canvas.save();
        canvas.clipRect(0.0f, 0.0f, this.f14975p.getWidth(), this.f14975p.getHeight());
        androidx.leanback.widget.i iVar2 = iVar;
        p(canvas, fS, eVar4, arrayList, nVar3, iVar2);
        CodeEditor codeEditor7 = this.f14975p;
        if (!codeEditor7.f8714h.f14933b.a() && codeEditor7.getProps().r && !codeEditor7.getCursor().a()) {
            codeEditor7.f8711f.getClass();
        }
        CodeEditor codeEditor8 = this.f14975p;
        codeEditor8.getDiagnostics();
        codeEditor8.getDiagnosticIndicatorStyle();
        this.f14976q.clear();
        canvas.restore();
        float f13 = -this.f14975p.getOffsetX();
        int i17 = this.D.a() ? -1 : this.D.f11081c.f11057b;
        if (z4) {
            k(canvas, f13, this.f14975p.getDividerMarginLeft() + f12, colorScheme.f19543a.get(3));
            int i18 = this.f14975p.getColorScheme().f19543a.get(2);
            int i19 = this.f14975p.getColorScheme().f19543a.get(9);
            if (((dc.c) this.f14975p.getCursorAnimator()).b()) {
                CodeEditor codeEditor9 = this.f14975p;
                if (codeEditor9.N0 && codeEditor9.N()) {
                    this.f14965e.bottom = ((Float) ((dc.c) this.f14975p.getCursorAnimator()).f4578e.getAnimatedValue()).floatValue() - this.f14975p.getOffsetY();
                    RectF rectF = this.f14965e;
                    rectF.top = rectF.bottom - ((Float) ((dc.c) this.f14975p.getCursorAnimator()).f4579f.getAnimatedValue()).floatValue();
                    RectF rectF2 = this.f14965e;
                    rectF2.left = 0.0f;
                    rectF2.right = (int) (fS - this.f14975p.getDividerMarginRight());
                    g(canvas, i19, this.f14965e);
                }
            }
            canvas.save();
            canvas.clipRect(0.0f, 0.0f, this.f14975p.getWidth(), this.f14975p.getHeight());
            for (int i20 = 0; i20 < nVar3.f46b; i20++) {
                m(canvas, i19, nVar3.b(i20), (int) (fS - this.f14975p.getDividerMarginRight()));
            }
            this.f14975p.getDividerMarginRight();
            CodeEditor codeEditor10 = this.f14975p;
            int lastVisibleLine2 = codeEditor10.getLastVisibleLine();
            for (int firstVisibleLine2 = codeEditor10.getFirstVisibleLine(); firstVisibleLine2 <= lastVisibleLine2; firstVisibleLine2++) {
                codeEditor10.getStyles();
            }
            float f14 = f13 + fR;
            z();
            canvas.restore();
            h(canvas, this.f14975p.getDividerMarginLeft() + f14 + 0.0f, colorScheme.f19543a.get(1));
            canvas.save();
            canvas.clipRect(0.0f, 0.0f, this.f14975p.getWidth(), this.f14975p.getHeight());
            if (iVar2 == null || iVar2.f1647b == -1) {
                nVar2 = nVar3;
                eVar = eVar4;
            } else {
                int iK = this.f14975p.K(0);
                eVar = eVar4;
                if (eVar.f14472b != 0) {
                    nVar2 = nVar3;
                    if ((this.f14975p.getRowHeight() * ((int) (eVar.c(0) & 4294967295L))) - this.f14975p.getOffsetY() <= iK) {
                        int iC = ((int) (eVar.c(0) & 4294967295L)) - 1;
                        Paint.FontMetricsInt fontMetricsInt = this.A;
                        int i21 = fontMetricsInt.descent;
                        int i22 = fontMetricsInt.ascent;
                        rowHeight = ((((this.f14975p.getRowHeight() * iC) + this.f14975p.K(iC)) / 2.0f) - ((i21 - i22) / 2.0f)) - i22;
                        offsetY = this.f14975p.getOffsetY();
                    }
                    float f15 = rowHeight - offsetY;
                    this.f14963c.setTextAlign(this.f14975p.getLineNumberAlign());
                    this.f14963c.setColor(iVar2.f1647b != i17 ? colorScheme.f19543a.get(45) : i18);
                    String string = Integer.toString(iVar2.f1647b + 1);
                    i12 = j.f14951a[this.f14975p.getLineNumberAlign().ordinal()];
                    if (i12 != 1) {
                        canvas.drawText(string, f13, f15, this.f14963c);
                    } else if (i12 == 2) {
                        canvas.drawText(string, f14, f15, this.f14963c);
                    } else if (i12 == 3) {
                        canvas.drawText(string, ((this.f14975p.getDividerMarginLeft() + fR) / 2.0f) + f13, f15, this.f14963c);
                    }
                } else {
                    nVar2 = nVar3;
                }
                int iK2 = this.f14975p.K(0);
                this.f14975p.getRowHeight();
                Paint.FontMetricsInt fontMetricsInt2 = this.A;
                int i23 = fontMetricsInt2.descent;
                offsetY = fontMetricsInt2.ascent;
                rowHeight = (iK2 / 2.0f) - ((i23 - offsetY) / 2.0f);
                float f152 = rowHeight - offsetY;
                this.f14963c.setTextAlign(this.f14975p.getLineNumberAlign());
                this.f14963c.setColor(iVar2.f1647b != i17 ? colorScheme.f19543a.get(45) : i18);
                String string2 = Integer.toString(iVar2.f1647b + 1);
                i12 = j.f14951a[this.f14975p.getLineNumberAlign().ordinal()];
                if (i12 != 1) {
                }
            }
            int i24 = 0;
            while (i24 < eVar.f14472b) {
                long jC = eVar.c(i24);
                int i25 = (int) (jC >> 32);
                j(canvas, i25, (int) (jC & 4294967295L), f13, fR, i25 == i17 ? colorScheme.f19543a.get(45) : i18);
                i24++;
                f13 = f13;
                i17 = i17;
            }
            i10 = i17;
            nVar = nVar2;
            canvas.restore();
        } else {
            i10 = i17;
            nVar = nVar3;
            eVar = eVar4;
        }
        if (this.f14975p.f8715h0) {
            canvas.save();
            canvas.clipRect(0.0f, 0.0f, this.f14975p.getWidth(), this.f14975p.getHeight());
            CodeEditor codeEditor11 = this.f14975p;
            if (!codeEditor11.H || codeEditor11.getProps().f14923p) {
                codeEditor11.getStyles();
            }
            canvas.restore();
        }
        if (((dc.c) this.f14975p.getCursorAnimator()).b()) {
            eVar2 = eVar;
            f10 = fR;
            CodeEditor codeEditor12 = this.f14975p;
            if (codeEditor12.N()) {
                float fFloatValue = ((Float) ((dc.c) codeEditor12.getCursorAnimator()).f4577d.getAnimatedValue()).floatValue() - codeEditor12.getOffsetY();
                RectF rectF3 = this.f14965e;
                rectF3.bottom = fFloatValue;
                codeEditor12.getProps().getClass();
                rectF3.top = fFloatValue - codeEditor12.getRowHeight();
                float fFloatValue2 = ((Float) ((dc.c) codeEditor12.getCursorAnimator()).f4576c.getAnimatedValue()).floatValue() - codeEditor12.getOffsetX();
                rectF3.left = fFloatValue2 - (codeEditor12.getInsertSelectionWidth() / 2.0f);
                rectF3.right = (codeEditor12.getInsertSelectionWidth() / 2.0f) + fFloatValue2;
                g(canvas, codeEditor12.getColorScheme().f19543a.get(7), rectF3);
                mb.b bVar = this.D.f11081c;
                long jT = t(bVar.f11057b, bVar.f11058c);
                if (((int) (jT >> 32)) == 1) {
                    f(canvas, fFloatValue2, rectF3.top, rectF3.height(), ((int) (jT & 4294967295L)) == 1);
                }
                if (codeEditor12.getEventHandler().m() && !codeEditor12.P()) {
                    cc.e handleStyle = codeEditor12.getHandleStyle();
                    float f16 = rectF3.bottom;
                    codeEditor12.getRowHeight();
                    ((dc.b) handleStyle).a(canvas, 0, fFloatValue2, f16, codeEditor12.getColorScheme().f19543a.get(8), codeEditor12.getInsertHandleDescriptor());
                }
            }
        } else {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                k kVar = (k) it.next();
                l lVar2 = kVar.f14960g;
                int i26 = kVar.f14956c;
                if (i26 != -1) {
                    CodeEditor codeEditor13 = lVar2.f14975p;
                    if (codeEditor13.f8714h.f14934c || !codeEditor13.isFocused()) {
                        eVar3 = eVar;
                        f11 = fR;
                    } else if (i26 != 0 || lVar2.f14975p.N()) {
                        cc.d dVar4 = k.f14953h;
                        cc.d dVar5 = kVar.f14957d;
                        cc.d dVar6 = dVar5 == null ? dVar4 : dVar5;
                        if (!dVar6.f2989a.isEmpty()) {
                            CodeEditor codeEditor14 = lVar2.f14975p;
                            if (!codeEditor14.V0) {
                                int i27 = codeEditor14.getEventHandler().f15020e;
                                boolean z10 = kVar.f14959f;
                                if (i27 == ((z10 && i26 == i14) ? 2 : (z10 && i26 == 2) ? 1 : i26) && i26 != -1 && lVar2.f14975p.getEventHandler().f15021f) {
                                    float f17 = lVar2.f14975p.getEventHandler().f15022g;
                                    int i28 = dVar6.f2990b;
                                    RectF rectF4 = dVar6.f2989a;
                                    kVar.f14954a = ((i28 != 0 ? rectF4.width() : 0.0f) * (dVar6.f2990b == i14 ? 1 : -1)) + f17;
                                    kVar.f14955b = lVar2.f14975p.getEventHandler().f15023h - ((rectF4.height() * 2.0f) / 3.0f);
                                }
                            }
                        }
                        if (i26 == i14 || i26 == 2) {
                            lVar2.f14975p.getProps().getClass();
                        }
                        if (kVar.a() || i26 == -1) {
                            float f18 = kVar.f14955b;
                            lVar2.f14975p.getProps().getClass();
                            float rowHeight2 = f18 - lVar2.f14975p.getRowHeight();
                            float f19 = kVar.f14955b;
                            lVar2.f14962b.setColor(lVar2.f14975p.getColorScheme().f19543a.get(7));
                            lVar2.f14962b.setStrokeWidth(lVar2.f14975p.getInsertSelectionWidth());
                            lVar2.f14962b.setStyle(Paint.Style.STROKE);
                            if (!lVar2.f14975p.W0 || i26 == 1 || i26 == 2) {
                                dVar = dVar6;
                            } else {
                                float f20 = f19 - rowHeight2;
                                float f21 = f20 / 8.0f;
                                dVar = dVar6;
                                lVar2.f14962b.setPathEffect(new DashPathEffect(new float[]{f21, f21}, f20 / 16.0f));
                                lVar2.f14962b.setStrokeWidth(lVar2.f14975p.getInsertSelectionWidth() * 1.5f);
                            }
                            float f22 = kVar.f14954a;
                            dVar2 = dVar;
                            f11 = fR;
                            dVar3 = dVar4;
                            i11 = i26;
                            eVar3 = eVar;
                            lVar = lVar2;
                            canvas.drawLine(f22, rowHeight2, f22, f19, lVar2.f14962b);
                            lVar.f14962b.setStyle(Paint.Style.FILL);
                            lVar.f14962b.setPathEffect(null);
                            if (kVar.a() && kVar.f14958e) {
                                kVar.f14960g.f(canvas, kVar.f14954a, rowHeight2, f19 - rowHeight2, kVar.f14959f);
                            }
                        } else {
                            dVar2 = dVar6;
                            i11 = i26;
                            eVar3 = eVar;
                            f11 = fR;
                            dVar3 = dVar4;
                            lVar = lVar2;
                        }
                        if (i11 == 0) {
                            CodeEditor codeEditor15 = lVar.f14975p;
                            int i29 = (codeEditor15.W0 || !codeEditor15.getEventHandler().m()) ? -1 : i11;
                            if (i29 == -1 || lVar.f14975p.P()) {
                                cc.d dVar7 = dVar2;
                                dVar7.f2989a.setEmpty();
                                dVar7.f2990b = 0;
                            } else {
                                cc.e handleStyle2 = lVar.f14975p.getHandleStyle();
                                float f23 = kVar.f14954a;
                                float f24 = kVar.f14955b;
                                lVar.f14975p.getRowHeight();
                                ((dc.b) handleStyle2).a(canvas, i29, f23, f24, lVar.f14975p.getColorScheme().f19543a.get(8), dVar2);
                                cc.d dVar8 = dVar2;
                                if (dVar8 == dVar3) {
                                    dVar8.f2989a.setEmpty();
                                    dVar8.f2990b = 0;
                                }
                            }
                        }
                    }
                }
                fR = f11;
                eVar = eVar3;
                i14 = 1;
            }
            eVar2 = eVar;
            f10 = fR;
        }
        CodeEditor codeEditor16 = this.f14975p;
        if (codeEditor16.V && !z4) {
            k(canvas, 0.0f, codeEditor16.getDividerMarginLeft() + f12, colorScheme.f19543a.get(3));
            canvas.save();
            canvas.clipRect(0.0f, 0.0f, this.f14975p.getWidth(), this.f14975p.getHeight());
            int i30 = this.f14975p.getColorScheme().f19543a.get(2);
            int i31 = this.f14975p.getColorScheme().f19543a.get(9);
            if (((dc.c) this.f14975p.getCursorAnimator()).b()) {
                CodeEditor codeEditor17 = this.f14975p;
                if (codeEditor17.N0 && codeEditor17.N()) {
                    this.f14965e.bottom = ((Float) ((dc.c) this.f14975p.getCursorAnimator()).f4578e.getAnimatedValue()).floatValue() - this.f14975p.getOffsetY();
                    RectF rectF5 = this.f14965e;
                    rectF5.top = rectF5.bottom - ((Float) ((dc.c) this.f14975p.getCursorAnimator()).f4579f.getAnimatedValue()).floatValue();
                    RectF rectF6 = this.f14965e;
                    rectF6.left = 0.0f;
                    rectF6.right = (int) (fS - this.f14975p.getDividerMarginRight());
                    g(canvas, i31, this.f14965e);
                }
            }
            a0.n nVar4 = nVar;
            for (int i32 = 0; i32 < nVar4.f46b; i32++) {
                m(canvas, i31, nVar4.b(i32), (int) ((fS - this.f14975p.getDividerMarginRight()) + this.f14975p.getOffsetX()));
            }
            this.f14975p.getDividerMarginRight();
            this.f14975p.getOffsetX();
            CodeEditor codeEditor18 = this.f14975p;
            int lastVisibleLine3 = codeEditor18.getLastVisibleLine();
            for (int firstVisibleLine3 = codeEditor18.getFirstVisibleLine(); firstVisibleLine3 <= lastVisibleLine3; firstVisibleLine3++) {
                codeEditor18.getStyles();
            }
            z();
            canvas.restore();
            h(canvas, this.f14975p.getDividerMarginLeft() + f12, colorScheme.f19543a.get(1));
            canvas.save();
            canvas.clipRect(0.0f, 0.0f, this.f14975p.getWidth(), this.f14975p.getHeight());
            sb.e eVar5 = eVar2;
            int i33 = 0;
            while (i33 < eVar5.f14472b) {
                long jC2 = eVar5.c(i33);
                int i34 = (int) (jC2 >> 32);
                int i35 = i10;
                j(canvas, i34, (int) (jC2 & 4294967295L), 0.0f, f10, i34 == i35 ? colorScheme.f19543a.get(45) : i30);
                i33++;
                i10 = i35;
            }
            canvas.restore();
        }
        this.f14975p.getColorScheme().f19543a.get(2);
        CodeEditor codeEditor19 = this.f14975p;
        codeEditor19.getWidth();
        xb.c cVar2 = this.I;
        cVar2.getClass();
        if (!cVar2.f18427c) {
            cVar2.f18425a.getProps().getClass();
            Bitmap bitmap = cVar2.f18426b;
            if (bitmap != null) {
                bitmap.recycle();
            }
            cVar2.f18426b = null;
        }
        RectF rectF7 = this.f14968h;
        rectF7.setEmpty();
        RectF rectF8 = this.f14969i;
        rectF8.setEmpty();
        u eventHandler = codeEditor19.getEventHandler();
        eventHandler.getClass();
        boolean z11 = System.currentTimeMillis() - eventHandler.f15029p < 3200 || eventHandler.r || eventHandler.f15031s || (codeEditor19.P() && codeEditor19.getProps().G);
        u eventHandler2 = codeEditor19.getEventHandler();
        eventHandler2.getClass();
        if (System.currentTimeMillis() - eventHandler2.f15029p < PopupConst.DURATION_POPUP_SHORT || eventHandler2.r || eventHandler2.f15031s) {
            fCurrentTimeMillis = 0.0f;
        } else if (System.currentTimeMillis() - eventHandler2.f15029p < PopupConst.DURATION_POPUP_SHORT || System.currentTimeMillis() - eventHandler2.f15029p >= 3200) {
            fCurrentTimeMillis = 1.0f;
        } else {
            eventHandler2.f15016a.postInvalidateOnAnimation();
            fCurrentTimeMillis = (((System.currentTimeMillis() - eventHandler2.f15029p) - PopupConst.DURATION_POPUP_SHORT) * 1.0f) / 200.0f;
        }
        if (z11 && codeEditor19.P() && codeEditor19.getProps().G) {
            fCurrentTimeMillis = 0.0f;
        }
        float dpUnit = codeEditor19.getDpUnit() * 10.0f;
        int[] iArr = K;
        int[] iArr2 = J;
        RectF rectF9 = this.f14965e;
        if (z11 && codeEditor19.P0 && !codeEditor19.H && codeEditor19.getScrollMaxX() > (codeEditor19.getWidth() * 3) / 4) {
            canvas.save();
            canvas.translate(0.0f, dpUnit * fCurrentTimeMillis);
            if (codeEditor19.getEventHandler().f15031s) {
                rectF9.set(0.0f, codeEditor19.getHeight() - (codeEditor19.getDpUnit() * 10.0f), codeEditor19.getWidth(), codeEditor19.getHeight());
                Drawable drawable = this.f14978t;
                if (drawable != null) {
                    drawable.setBounds((int) rectF9.left, (int) rectF9.top, (int) rectF9.right, (int) rectF9.bottom);
                    this.f14978t.draw(canvas);
                } else {
                    g(canvas, codeEditor19.getColorScheme().f19543a.get(13), rectF9);
                }
            }
            int width = codeEditor19.getWidth();
            float scrollMaxX = codeEditor19.getScrollMaxX();
            float width2 = (width / (codeEditor19.getWidth() + scrollMaxX)) * codeEditor19.getWidth();
            float dpUnit2 = codeEditor19.getDpUnit() * 60.0f;
            if (width2 <= dpUnit2) {
                width2 = dpUnit2;
            }
            float width3 = (codeEditor19.getWidth() - width2) * (codeEditor19.getOffsetX() / scrollMaxX);
            rectF9.top = codeEditor19.getHeight() - (codeEditor19.getDpUnit() * 10.0f);
            rectF9.bottom = codeEditor19.getHeight();
            rectF9.right = width2 + width3;
            rectF9.left = width3;
            rectF8.set(rectF9);
            Drawable drawable2 = this.f14977s;
            if (drawable2 != null) {
                drawable2.setState(codeEditor19.getEventHandler().f15031s ? iArr2 : iArr);
                this.f14977s.setBounds((int) rectF9.left, (int) rectF9.top, (int) rectF9.right, (int) rectF9.bottom);
                this.f14977s.draw(canvas);
            } else {
                g(canvas, codeEditor19.getColorScheme().f19543a.get(codeEditor19.getEventHandler().f15031s ? 12 : 11), rectF9);
            }
            canvas.restore();
        }
        if (z11) {
            codeEditor19.getProps().getClass();
            if (codeEditor19.O0 && codeEditor19.getScrollMaxY() > codeEditor19.getHeight() / 2) {
                canvas.save();
                canvas.translate(dpUnit * fCurrentTimeMillis, 0.0f);
                if (codeEditor19.getEventHandler().r) {
                    rectF9.right = codeEditor19.getWidth();
                    rectF9.left = codeEditor19.getWidth() - (codeEditor19.getDpUnit() * 10.0f);
                    rectF9.top = 0.0f;
                    float height = codeEditor19.getHeight();
                    rectF9.bottom = height;
                    Drawable drawable3 = this.f14980v;
                    if (drawable3 != null) {
                        drawable3.setBounds((int) rectF9.left, (int) rectF9.top, (int) rectF9.right, (int) height);
                        this.f14980v.draw(canvas);
                    } else {
                        g(canvas, codeEditor19.getColorScheme().f19543a.get(13), rectF9);
                    }
                }
                float dpUnit3 = codeEditor19.getDpUnit() * 10.0f;
                CodeEditor codeEditor20 = this.f14975p;
                int height2 = codeEditor20.getHeight();
                float scrollMaxY = codeEditor20.getScrollMaxY() + height2;
                float f25 = height2;
                float fMax = Math.max((f25 / scrollMaxY) * f25, codeEditor20.getDpUnit() * 60.0f);
                float offsetY2 = (f25 - fMax) * ((codeEditor20.getOffsetY() * 1.0f) / codeEditor20.getScrollMaxY());
                rectF9.right = codeEditor20.getWidth();
                rectF9.left = codeEditor20.getWidth() - dpUnit3;
                rectF9.top = offsetY2;
                rectF9.bottom = offsetY2 + fMax;
                rectF7.set(rectF9);
                if (codeEditor19.getEventHandler().r) {
                    i(canvas, rectF9.top, rectF9.height(), codeEditor19.getDpUnit() * 30.0f);
                }
                Drawable drawable4 = this.f14979u;
                if (drawable4 != null) {
                    if (codeEditor19.getEventHandler().r) {
                        iArr = iArr2;
                    }
                    drawable4.setState(iArr);
                    this.f14979u.setBounds((int) rectF7.left, (int) rectF7.top, (int) rectF7.right, (int) rectF7.bottom);
                    this.f14979u.draw(canvas);
                } else {
                    g(canvas, codeEditor19.getColorScheme().f19543a.get(codeEditor19.getEventHandler().r ? 12 : 11), rectF9);
                }
                canvas.restore();
            }
        }
        CodeEditor codeEditor21 = this.f14975p;
        EdgeEffect verticalEdgeEffect = codeEditor21.getVerticalEdgeEffect();
        EdgeEffect horizontalEdgeEffect = codeEditor21.getHorizontalEdgeEffect();
        if (verticalEdgeEffect.isFinished()) {
            zDraw = false;
        } else {
            boolean z12 = codeEditor21.getEventHandler().f15024i;
            if (z12) {
                canvas.save();
                canvas.translate(-codeEditor21.getMeasuredWidth(), codeEditor21.getMeasuredHeight());
                canvas.rotate(180.0f, codeEditor21.getMeasuredWidth(), 0.0f);
            }
            zDraw = verticalEdgeEffect.draw(canvas);
            if (z12) {
                canvas.restore();
            }
        }
        if (codeEditor21.H) {
            horizontalEdgeEffect.finish();
        }
        if (!horizontalEdgeEffect.isFinished()) {
            canvas.save();
            if (codeEditor21.getEventHandler().f15025j) {
                canvas.rotate(90.0f);
                canvas.translate(0.0f, -codeEditor21.getMeasuredWidth());
            } else {
                canvas.translate(0.0f, codeEditor21.getMeasuredHeight());
                canvas.rotate(-90.0f);
            }
            zDraw = horizontalEdgeEffect.draw(canvas) || zDraw;
            canvas.restore();
        }
        m scroller = codeEditor21.getScroller();
        if (scroller.f14985b.isOverScrolled()) {
            boolean zIsFinished = verticalEdgeEffect.isFinished();
            OverScroller overScroller = scroller.f14985b;
            if (zIsFinished && (overScroller.getCurrY() < 0 || overScroller.getCurrY() > codeEditor21.getScrollMaxY())) {
                codeEditor21.getEventHandler().f15024i = overScroller.getCurrY() >= codeEditor21.getScrollMaxY();
                verticalEdgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                zDraw = true;
            }
            if (!horizontalEdgeEffect.isFinished() || (overScroller.getCurrX() >= 0 && overScroller.getCurrX() <= codeEditor21.getScrollMaxX())) {
                z = zDraw;
            } else {
                codeEditor21.getEventHandler().f15025j = overScroller.getCurrX() >= codeEditor21.getScrollMaxX();
                horizontalEdgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                z = true;
            }
        }
        if (z) {
            codeEditor21.postInvalidate();
        }
        this.f14973n.clear();
        this.f14974o.clear();
        this.f14975p.O();
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void s(Canvas canvas, eb.o oVar, GetChars getChars, int i10, int i11, int i12, int i13, boolean z, float f10, float f11, int i14, int i15) {
        char c7;
        char c10;
        int tabWidth;
        boolean z4;
        int i16;
        int i17;
        int i18 = i10 + i11;
        int iMax = Math.max(i10, Math.min(i18, i14));
        int iMax2 = Math.max(i10, Math.min(i18, i15));
        if (iMax < iMax2) {
            float f12 = this.f14962b.f4828a;
            CodeEditor codeEditor = this.f14975p;
            float rowHeightOfText = (codeEditor.getRowHeightOfText() / 2.0f) + codeEditor.L(0);
            float f13 = z ? f10 + f11 : f10;
            for (int i19 = iMax; i19 < iMax2; i19 = i17 + 1) {
                char cCharAt = getChars.charAt(i19);
                if (cCharAt == ' ' || cCharAt == '\t') {
                    c7 = ' ';
                    c10 = cCharAt;
                    float fH = oVar.h(i19, i10, i19, i12, i12 + i13, z);
                    f13 = z ? (f10 + f11) - fH : f10 + fH;
                } else {
                    c10 = cCharAt;
                    c7 = ' ';
                }
                if (c10 == c7) {
                    tabWidth = 1;
                } else if (c10 != '\t') {
                    tabWidth = 0;
                } else if ((codeEditor.getNonPrintablePaintingFlags() & c7) != 0) {
                    tabWidth = codeEditor.getTabWidth();
                } else {
                    tabWidth = 0;
                    z4 = true;
                    i16 = 0;
                    while (i16 < tabWidth) {
                        float f14 = (i16 * f12) + f13;
                        float f15 = ((f14 + f12) + f14) / 2.0f;
                        if (z) {
                            f15 -= f12;
                        }
                        eb.b bVar = this.f14961a;
                        float[] fArr = bVar.f4825b;
                        int length = fArr.length;
                        int i20 = tabWidth;
                        int i21 = bVar.f4824a;
                        if (length < (i21 + 1) * 2) {
                            float[] fArr2 = new float[fArr.length << 1];
                            System.arraycopy(fArr, 0, fArr2, 0, i21 * 2);
                            bVar.f4825b = fArr2;
                        }
                        float[] fArr3 = bVar.f4825b;
                        int i22 = bVar.f4824a;
                        int i23 = i22 * 2;
                        fArr3[i23] = f15 + bVar.f4826c;
                        fArr3[i23 + 1] = rowHeightOfText + bVar.f4827d;
                        bVar.f4824a = i22 + 1;
                        i16++;
                        tabWidth = i20;
                    }
                    if (z4) {
                        i17 = i19;
                    } else {
                        float tabWidth2 = codeEditor.getTabWidth() * f12;
                        float f16 = 0.05f * tabWidth2;
                        float f17 = z ? -tabWidth2 : 0.0f;
                        i17 = i19;
                        canvas.drawLine(f13 + f16 + f17, rowHeightOfText, ((tabWidth2 + f13) + f17) - f16, rowHeightOfText, this.f14963c);
                    }
                    if (c10 != ' ' || c10 == '\t') {
                        float tabWidth3 = c10 != ' ' ? f12 : codeEditor.getTabWidth() * f12;
                        if (z) {
                            tabWidth3 = -tabWidth3;
                        }
                        f13 += tabWidth3;
                    }
                }
                z4 = false;
                i16 = 0;
                while (i16 < tabWidth) {
                }
                if (z4) {
                }
                if (c10 != ' ') {
                    if (c10 != ' ') {
                    }
                    if (z) {
                    }
                    f13 += tabWidth3;
                }
            }
        }
    }

    public final long t(int i10, int i11) {
        nb.b bVarV = v(i10);
        int length = bVarV.f11333a.length;
        if (length == 1) {
            return sb.h.g(0, bVarV.q(0) ? 1 : 0);
        }
        int i12 = 0;
        while (i12 < length) {
            int i13 = i12 + 1;
            if (i13 == length || (bVarV.j(i12) <= i11 && i11 < bVarV.o(i12))) {
                return sb.h.g(this.f14975p.getProps().K ? 1 : 0, bVarV.q(i12) ? 1 : 0);
            }
            i12 = i13;
        }
        return sb.h.g(0, 0);
    }

    public final mb.h u(int i10) {
        if (!this.G) {
            return this.F.o(i10);
        }
        mb.h hVar = (mb.h) this.f14973n.get(i10);
        if (hVar != null) {
            return hVar;
        }
        mb.h hVarO = this.F.o(i10);
        this.f14973n.put(i10, hVarO);
        return hVarO;
    }

    public final nb.b v(int i10) {
        if (!this.G) {
            return this.F.p(i10);
        }
        nb.b bVar = (nb.b) this.f14974o.get(i10);
        if (bVar != null) {
            return bVar;
        }
        nb.b bVarP = this.F.p(i10);
        this.f14974o.put(i10, bVarP);
        return bVarP;
    }

    public final float w() {
        CodeEditor codeEditor = this.f14975p;
        float rowHeightOfText = codeEditor.getRowHeightOfText();
        Objects.requireNonNull(codeEditor.getProps());
        float f10 = rowHeightOfText * 0.5f;
        Drawable drawable = codeEditor.getContext().getDrawable(com.yunpan.appmanage.R.drawable.line_break);
        if (drawable == null) {
            return 0.0f;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0 || f10 <= 0.0f) {
            return 0.0f;
        }
        return (intrinsicWidth / intrinsicHeight) * f10;
    }

    public final int x(int i10) {
        CodeEditor codeEditor = this.f14975p;
        codeEditor.getProps().getClass();
        return codeEditor.K(i10);
    }

    public final int y(int i10) {
        CodeEditor codeEditor = this.f14975p;
        codeEditor.getProps().getClass();
        return codeEditor.getRowHeight() * i10;
    }

    public final void z() {
        this.f14975p.getStyles();
    }
}

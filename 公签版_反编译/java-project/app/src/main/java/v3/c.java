package v3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.BidiFormatter;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class c extends View implements k0 {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f16417a;

    /* renamed from: b, reason: collision with root package name */
    public List f16418b;

    /* renamed from: c, reason: collision with root package name */
    public float f16419c;

    /* renamed from: d, reason: collision with root package name */
    public d f16420d;

    /* renamed from: e, reason: collision with root package name */
    public float f16421e;

    public c(Context context) {
        super(context, null);
        this.f16417a = new ArrayList();
        this.f16418b = Collections.emptyList();
        this.f16419c = 0.0533f;
        this.f16420d = d.f16422g;
        this.f16421e = 0.08f;
    }

    @Override // v3.k0
    public final void a(List list, d dVar, float f10, float f11) {
        this.f16418b = list;
        this.f16420d = dVar;
        this.f16419c = f10;
        this.f16421e = f11;
        while (true) {
            ArrayList arrayList = this.f16417a;
            if (arrayList.size() >= list.size()) {
                invalidate();
                return;
            }
            arrayList.add(new j0(getContext()));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:178:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x0659  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x06c2  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x06c5  */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.CharSequence, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v5, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r15v2, types: [java.lang.CharSequence, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v21, types: [androidx.room.s] */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.room.s] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void dispatchDraw(Canvas canvas) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        TextPaint textPaint;
        boolean z;
        int i16;
        int i17;
        Canvas canvas2;
        float f10;
        boolean z4;
        float f11;
        int i18;
        TextPaint textPaint2;
        Spanned spanned;
        Object[] spans;
        int[] iArr;
        d dVar;
        List listE;
        int i19;
        float f12;
        float f13;
        int i20;
        float f14;
        int i21;
        BidiFormatter bidiFormatter;
        int i22;
        float f15;
        int i23;
        float f16;
        int i24;
        float f17;
        boolean z10;
        int i25;
        int iMax;
        int iMin;
        int iRound;
        float f18;
        int i26;
        c cVar = this;
        Canvas canvas3 = canvas;
        int i27 = 2;
        List list = cVar.f16418b;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i28 = paddingBottom - paddingTop;
        float fA0 = com.bumptech.glide.d.a0(0, cVar.f16419c, height, i28);
        if (fA0 <= 0.0f) {
            return;
        }
        int size = list.size();
        int i29 = 0;
        while (i29 < size) {
            t1.b bVar = (t1.b) list.get(i29);
            int[] iArr2 = null;
            if (bVar.f14678p != Integer.MIN_VALUE) {
                int i30 = bVar.f14669f;
                float f19 = bVar.f14668e;
                if (i30 == 0) {
                    f18 = 1.0f - f19;
                    i26 = 0;
                } else {
                    f18 = (-f19) - 1.0f;
                    i26 = 1;
                }
                int i31 = bVar.f14670g;
                bVar = new t1.b(bVar.f14664a, null, bVar.f14666c, bVar.f14667d, f18, i26, i31 != 0 ? i31 != i27 ? i31 : 0 : 2, -3.4028235E38f, Integer.MIN_VALUE, bVar.f14676n, bVar.f14677o, bVar.f14673j, bVar.f14674k, bVar.l, bVar.f14675m, bVar.f14678p, bVar.f14679q, bVar.r);
            }
            float fA02 = com.bumptech.glide.d.a0(bVar.f14676n, bVar.f14677o, height, i28);
            j0 j0Var = (j0) cVar.f16417a.get(i29);
            d dVar2 = cVar.f16420d;
            List list2 = list;
            float f20 = cVar.f16421e;
            j0Var.getClass();
            Bitmap bitmap = bVar.f14667d;
            int i32 = height;
            int i33 = i28;
            boolean z11 = bitmap == null;
            ?? spannableStringBuilder = bVar.f14664a;
            if (!z11) {
                i10 = size;
                i11 = -16777216;
            } else if (TextUtils.isEmpty(spannableStringBuilder)) {
                canvas2 = canvas3;
                i17 = paddingLeft;
                i14 = paddingTop;
                i13 = width;
                i16 = paddingBottom;
                f10 = fA0;
                i10 = size;
                i12 = i29;
                i29 = i12 + 1;
                canvas3 = canvas2;
                list = list2;
                height = i32;
                i28 = i33;
                size = i10;
                paddingBottom = i16;
                width = i13;
                paddingTop = i14;
                paddingLeft = i17;
                fA0 = f10;
                i27 = 2;
                cVar = this;
            } else {
                i10 = size;
                i11 = bVar.l ? bVar.f14675m : dVar2.f16425c;
            }
            i12 = i29;
            ?? r15 = j0Var.f16499i;
            TextPaint textPaint3 = j0Var.f16496f;
            boolean z12 = z11;
            float f21 = bVar.f14674k;
            int i34 = paddingBottom;
            float f22 = bVar.f14673j;
            i13 = width;
            int i35 = bVar.f14672i;
            i14 = paddingTop;
            float f23 = bVar.f14671h;
            int i36 = paddingLeft;
            int i37 = bVar.f14670g;
            int i38 = bVar.f14669f;
            float f24 = bVar.f14668e;
            Layout.Alignment alignment = bVar.f14665b;
            if ((r15 == spannableStringBuilder || (r15 != 0 && r15.equals(spannableStringBuilder))) && Objects.equals(j0Var.f16500j, alignment) && j0Var.f16501k == bitmap && j0Var.l == f24 && j0Var.f16502m == i38) {
                i15 = i38;
                if (Integer.valueOf(j0Var.f16503n).equals(Integer.valueOf(i37)) && j0Var.f16504o == f23 && Integer.valueOf(j0Var.f16505p).equals(Integer.valueOf(i35)) && j0Var.f16506q == f22 && j0Var.r == f21 && j0Var.f16507s == dVar2.f16423a && j0Var.f16508t == dVar2.f16424b && j0Var.f16509u == i11 && j0Var.f16511w == dVar2.f16426d && j0Var.f16510v == dVar2.f16427e && Objects.equals(textPaint3.getTypeface(), dVar2.f16428f) && j0Var.f16512x == fA0 && j0Var.f16513y == fA02 && j0Var.z == f20) {
                    if (j0Var.A == i36) {
                        if (j0Var.B == i14) {
                            i14 = i14;
                            if (j0Var.C == i13) {
                                i13 = i13;
                                if (j0Var.D == i34) {
                                    i16 = i34;
                                    i17 = i36;
                                    j0Var.a(canvas, z12);
                                    canvas2 = canvas;
                                    f10 = fA0;
                                    i29 = i12 + 1;
                                    canvas3 = canvas2;
                                    list = list2;
                                    height = i32;
                                    i28 = i33;
                                    size = i10;
                                    paddingBottom = i16;
                                    width = i13;
                                    paddingTop = i14;
                                    paddingLeft = i17;
                                    fA0 = f10;
                                    i27 = 2;
                                    cVar = this;
                                } else {
                                    i34 = i34;
                                }
                            } else {
                                i13 = i13;
                            }
                        } else {
                            i14 = i14;
                        }
                        i36 = i36;
                        textPaint = textPaint3;
                        z = z12;
                    } else {
                        i36 = i36;
                    }
                }
                textPaint = textPaint3;
                z = z12;
            } else {
                textPaint = textPaint3;
                i15 = i38;
                z = z12;
            }
            androidx.room.s sVar = b.f16414a;
            if (spannableStringBuilder == 0) {
                z4 = z;
            } else {
                int length = spannableStringBuilder.length();
                z4 = z;
                int iCharCount = 0;
                while (iCharCount < length) {
                    int iCodePointAt = Character.codePointAt((CharSequence) spannableStringBuilder, iCharCount);
                    int i39 = length;
                    byte directionality = Character.getDirectionality(iCodePointAt);
                    f11 = fA0;
                    if (directionality == 1 || directionality == 2 || directionality == 16 || directionality == 17) {
                        BidiFormatter bidiFormatter2 = BidiFormatter.getInstance();
                        if (spannableStringBuilder instanceof Spanned) {
                            Spanned spanned2 = (Spanned) spannableStringBuilder;
                            textPaint2 = textPaint;
                            i18 = i11;
                            spans = spanned2.getSpans(0, spannableStringBuilder.length(), Object.class);
                            int[] iArr3 = new int[spans.length];
                            iArr = new int[spans.length];
                            Arrays.fill(iArr3, -1);
                            Arrays.fill(iArr, -1);
                            iArr2 = iArr3;
                            spanned = spanned2;
                        } else {
                            i18 = i11;
                            textPaint2 = textPaint;
                            spanned = null;
                            spans = null;
                            iArr = null;
                        }
                        dVar = dVar2;
                        if (spannableStringBuilder.toString().contains("\r\n")) {
                            listE = b.f16415b.E(spannableStringBuilder);
                            i19 = 2;
                        } else {
                            listE = b.f16414a.E(spannableStringBuilder);
                            i19 = 1;
                        }
                        f12 = f21;
                        ArrayList arrayList = new ArrayList(listE.size());
                        Iterator it = listE.iterator();
                        f13 = f22;
                        int i40 = 0;
                        int i41 = 0;
                        while (it.hasNext()) {
                            Iterator it2 = it;
                            String str = (String) it.next();
                            int i42 = i35;
                            String strUnicodeWrap = bidiFormatter2.unicodeWrap(str, TextDirectionHeuristics.LTR);
                            if (spans != null) {
                                spanned.getClass();
                                iArr2.getClass();
                                iArr.getClass();
                                int length2 = strUnicodeWrap.length() - str.length();
                                if (length2 > 0) {
                                    i40++;
                                }
                                bidiFormatter = bidiFormatter2;
                                f15 = f23;
                                int i43 = 0;
                                while (i43 < spans.length) {
                                    if (iArr2[i43] >= 0 || spanned.getSpanStart(spans[i43]) < i41) {
                                        i23 = i37;
                                    } else {
                                        i23 = i37;
                                        if (spanned.getSpanStart(spans[i43]) < str.length() + i41) {
                                            iArr2[i43] = i40;
                                        }
                                    }
                                    if (iArr[i43] < 0 && spanned.getSpanEnd(spans[i43]) - 1 >= i41 && spanned.getSpanEnd(spans[i43]) - 1 < str.length() + i41) {
                                        iArr[i43] = i40;
                                    }
                                    i43++;
                                    i37 = i23;
                                }
                                i22 = i37;
                                int length3 = str.length() + i19 + i41;
                                if (length2 > 0) {
                                    i40++;
                                }
                                i41 = length3;
                            } else {
                                bidiFormatter = bidiFormatter2;
                                i22 = i37;
                                f15 = f23;
                            }
                            arrayList.add(strUnicodeWrap);
                            i35 = i42;
                            it = it2;
                            bidiFormatter2 = bidiFormatter;
                            f23 = f15;
                            i37 = i22;
                        }
                        i20 = i37;
                        f14 = f23;
                        i21 = i35;
                        bd.c cVar2 = b.f16416c;
                        cVar2.getClass();
                        Iterator it3 = arrayList.iterator();
                        StringBuilder sb2 = new StringBuilder();
                        cVar2.d(sb2, it3);
                        spannableStringBuilder = new SpannableStringBuilder(sb2.toString());
                        if (spans != null) {
                            spanned.getClass();
                            iArr2.getClass();
                            iArr.getClass();
                            for (int i44 = 0; i44 < spans.length; i44++) {
                                int spanStart = spanned.getSpanStart(spans[i44]) + iArr2[i44];
                                int spanEnd = spanned.getSpanEnd(spans[i44]) + iArr[i44];
                                int spanFlags = spanned.getSpanFlags(spans[i44]);
                                if (spanStart < 0 || spanStart >= spannableStringBuilder.length() || spanEnd < 0 || spanEnd > spannableStringBuilder.length()) {
                                    StringBuilder sbO = ta.q.o(spanStart, spanEnd, "Span out of bounds: start=", ",end=", ",len=");
                                    sbO.append(spannableStringBuilder.length());
                                    u1.a.p(sbO.toString());
                                } else {
                                    spannableStringBuilder.setSpan(spans[i44], spanStart, spanEnd, spanFlags);
                                }
                            }
                        }
                        j0Var.f16499i = spannableStringBuilder;
                        j0Var.f16500j = alignment;
                        j0Var.f16501k = bitmap;
                        j0Var.l = f24;
                        j0Var.f16502m = i15;
                        j0Var.f16503n = i20;
                        j0Var.f16504o = f14;
                        j0Var.f16505p = i21;
                        j0Var.f16506q = f13;
                        j0Var.r = f12;
                        d dVar3 = dVar;
                        j0Var.f16507s = dVar3.f16423a;
                        j0Var.f16508t = dVar3.f16424b;
                        j0Var.f16509u = i18;
                        j0Var.f16511w = dVar3.f16426d;
                        j0Var.f16510v = dVar3.f16427e;
                        TextPaint textPaint4 = textPaint2;
                        textPaint4.setTypeface(dVar3.f16428f);
                        float f25 = f11;
                        j0Var.f16512x = f25;
                        j0Var.f16513y = fA02;
                        j0Var.z = f20;
                        int i45 = i36;
                        j0Var.A = i45;
                        int i46 = i14;
                        j0Var.B = i46;
                        int i47 = i13;
                        j0Var.C = i47;
                        int i48 = i34;
                        j0Var.D = i48;
                        if (z4) {
                            f10 = f25;
                            i17 = i45;
                            i14 = i46;
                            i16 = i48;
                            i13 = i47;
                            j0Var.f16501k.getClass();
                            Bitmap bitmap2 = j0Var.f16501k;
                            int i49 = j0Var.C;
                            int i50 = j0Var.A;
                            int i51 = j0Var.D;
                            int i52 = j0Var.B;
                            float f26 = i49 - i50;
                            float f27 = (j0Var.f16504o * f26) + i50;
                            float f28 = i51 - i52;
                            float f29 = (j0Var.l * f28) + i52;
                            int iRound2 = Math.round(f26 * j0Var.f16506q);
                            float f30 = j0Var.r;
                            int iRound3 = f30 != -3.4028235E38f ? Math.round(f28 * f30) : Math.round((bitmap2.getHeight() / bitmap2.getWidth()) * iRound2);
                            int i53 = j0Var.f16505p;
                            if (i53 == 2) {
                                f16 = iRound2;
                            } else {
                                if (i53 == 1) {
                                    f16 = iRound2 / 2;
                                }
                                int iRound4 = Math.round(f27);
                                i24 = j0Var.f16503n;
                                if (i24 != 2) {
                                    f17 = iRound3;
                                } else {
                                    if (i24 == 1) {
                                        f17 = iRound3 / 2;
                                    }
                                    int iRound5 = Math.round(f29);
                                    j0Var.J = new Rect(iRound4, iRound5, iRound2 + iRound4, iRound3 + iRound5);
                                    canvas2 = canvas;
                                    z10 = z4;
                                }
                                f29 -= f17;
                                int iRound52 = Math.round(f29);
                                j0Var.J = new Rect(iRound4, iRound52, iRound2 + iRound4, iRound3 + iRound52);
                                canvas2 = canvas;
                                z10 = z4;
                            }
                            f27 -= f16;
                            int iRound42 = Math.round(f27);
                            i24 = j0Var.f16503n;
                            if (i24 != 2) {
                            }
                            f29 -= f17;
                            int iRound522 = Math.round(f29);
                            j0Var.J = new Rect(iRound42, iRound522, iRound2 + iRound42, iRound3 + iRound522);
                            canvas2 = canvas;
                            z10 = z4;
                        } else {
                            j0Var.f16499i.getClass();
                            CharSequence charSequence = j0Var.f16499i;
                            SpannableStringBuilder spannableStringBuilder2 = charSequence instanceof SpannableStringBuilder ? (SpannableStringBuilder) charSequence : new SpannableStringBuilder(j0Var.f16499i);
                            int i54 = j0Var.C - j0Var.A;
                            int i55 = j0Var.D - j0Var.B;
                            textPaint4.setTextSize(j0Var.f16512x);
                            int i56 = (int) ((j0Var.f16512x * 0.125f) + 0.5f);
                            int i57 = i56 * 2;
                            int i58 = i54 - i57;
                            float f31 = j0Var.f16506q;
                            if (f31 != -3.4028235E38f) {
                                i58 = (int) (i58 * f31);
                            }
                            if (i58 <= 0) {
                                u1.a.p("Skipped drawing subtitle cue (insufficient space)");
                                f10 = f25;
                                i17 = i45;
                                i14 = i46;
                                i16 = i48;
                                i13 = i47;
                            } else {
                                if (j0Var.f16513y > 0.0f) {
                                    f10 = f25;
                                    i25 = 0;
                                    spannableStringBuilder2.setSpan(new AbsoluteSizeSpan((int) j0Var.f16513y), 0, spannableStringBuilder2.length(), 16711680);
                                } else {
                                    f10 = f25;
                                    i25 = 0;
                                }
                                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder(spannableStringBuilder2);
                                if (j0Var.f16511w == 1) {
                                    ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) spannableStringBuilder3.getSpans(i25, spannableStringBuilder3.length(), ForegroundColorSpan.class);
                                    int i59 = 0;
                                    for (int length4 = foregroundColorSpanArr.length; i59 < length4; length4 = length4) {
                                        spannableStringBuilder3.removeSpan(foregroundColorSpanArr[i59]);
                                        i59++;
                                    }
                                }
                                if (Color.alpha(j0Var.f16508t) > 0) {
                                    int i60 = j0Var.f16511w;
                                    if (i60 == 0 || i60 == 2) {
                                        i17 = i45;
                                        spannableStringBuilder2.setSpan(new BackgroundColorSpan(j0Var.f16508t), 0, spannableStringBuilder2.length(), 16711680);
                                    } else {
                                        i17 = i45;
                                        spannableStringBuilder3.setSpan(new BackgroundColorSpan(j0Var.f16508t), 0, spannableStringBuilder3.length(), 16711680);
                                    }
                                } else {
                                    i17 = i45;
                                }
                                Layout.Alignment alignment2 = j0Var.f16500j;
                                if (alignment2 == null) {
                                    alignment2 = Layout.Alignment.ALIGN_CENTER;
                                }
                                StaticLayout staticLayout = new StaticLayout(spannableStringBuilder2, textPaint4, i58, alignment2, j0Var.f16494d, j0Var.f16495e, true);
                                j0Var.E = staticLayout;
                                int height2 = staticLayout.getHeight();
                                int lineCount = j0Var.E.getLineCount();
                                i14 = i46;
                                int iMax2 = 0;
                                int i61 = 0;
                                while (i61 < lineCount) {
                                    iMax2 = Math.max((int) Math.ceil(j0Var.E.getLineWidth(i61)), iMax2);
                                    i61++;
                                    i48 = i48;
                                    i47 = i47;
                                    i56 = i56;
                                }
                                i16 = i48;
                                i13 = i47;
                                int i62 = i56;
                                if (j0Var.f16506q == -3.4028235E38f || iMax2 >= i58) {
                                    i58 = iMax2;
                                }
                                int i63 = i58 + i57;
                                float f32 = j0Var.f16504o;
                                if (f32 != -3.4028235E38f) {
                                    int iRound6 = Math.round(i54 * f32);
                                    int i64 = j0Var.A;
                                    int i65 = iRound6 + i64;
                                    int i66 = j0Var.f16505p;
                                    if (i66 == 1) {
                                        i65 = ((i65 * 2) - i63) / 2;
                                    } else if (i66 == 2) {
                                        i65 -= i63;
                                    }
                                    iMax = Math.max(i65, i64);
                                    iMin = Math.min(i63 + iMax, j0Var.C);
                                } else {
                                    iMax = j0Var.A + ((i54 - i63) / 2);
                                    iMin = iMax + i63;
                                }
                                int i67 = iMin - iMax;
                                if (i67 <= 0) {
                                    u1.a.p("Skipped drawing subtitle cue (invalid horizontal positioning)");
                                } else {
                                    float f33 = j0Var.l;
                                    if (f33 != -3.4028235E38f) {
                                        if (j0Var.f16502m == 0) {
                                            iRound = Math.round(i55 * f33) + j0Var.B;
                                            int i68 = j0Var.f16503n;
                                            if (i68 == 2) {
                                                iRound -= height2;
                                            } else if (i68 == 1) {
                                                iRound = ((iRound * 2) - height2) / 2;
                                            }
                                        } else {
                                            int lineBottom = j0Var.E.getLineBottom(0) - j0Var.E.getLineTop(0);
                                            float f34 = j0Var.l;
                                            iRound = f34 >= 0.0f ? Math.round(f34 * lineBottom) + j0Var.B : (Math.round((f34 + 1.0f) * lineBottom) + j0Var.D) - height2;
                                        }
                                        int i69 = iRound + height2;
                                        int i70 = j0Var.D;
                                        if (i69 > i70) {
                                            iRound = i70 - height2;
                                        } else {
                                            int i71 = j0Var.B;
                                            if (iRound < i71) {
                                                iRound = i71;
                                            }
                                        }
                                    } else {
                                        iRound = (j0Var.D - height2) - ((int) (i55 * j0Var.z));
                                    }
                                    Layout.Alignment alignment3 = alignment2;
                                    j0Var.E = new StaticLayout(spannableStringBuilder2, textPaint4, i67, alignment3, j0Var.f16494d, j0Var.f16495e, true);
                                    j0Var.F = new StaticLayout(spannableStringBuilder3, textPaint4, i67, alignment3, j0Var.f16494d, j0Var.f16495e, true);
                                    j0Var.G = iMax;
                                    j0Var.H = iRound;
                                    j0Var.I = i62;
                                    canvas2 = canvas;
                                    z10 = z4;
                                }
                            }
                            canvas2 = canvas;
                            z10 = z4;
                        }
                        j0Var.a(canvas2, z10);
                        i29 = i12 + 1;
                        canvas3 = canvas2;
                        list = list2;
                        height = i32;
                        i28 = i33;
                        size = i10;
                        paddingBottom = i16;
                        width = i13;
                        paddingTop = i14;
                        paddingLeft = i17;
                        fA0 = f10;
                        i27 = 2;
                        cVar = this;
                    } else {
                        iCharCount += Character.charCount(iCodePointAt);
                        length = i39;
                        fA0 = f11;
                    }
                }
            }
            dVar = dVar2;
            f12 = f21;
            i20 = i37;
            f14 = f23;
            i21 = i35;
            f13 = f22;
            f11 = fA0;
            i18 = i11;
            textPaint2 = textPaint;
            j0Var.f16499i = spannableStringBuilder;
            j0Var.f16500j = alignment;
            j0Var.f16501k = bitmap;
            j0Var.l = f24;
            j0Var.f16502m = i15;
            j0Var.f16503n = i20;
            j0Var.f16504o = f14;
            j0Var.f16505p = i21;
            j0Var.f16506q = f13;
            j0Var.r = f12;
            d dVar32 = dVar;
            j0Var.f16507s = dVar32.f16423a;
            j0Var.f16508t = dVar32.f16424b;
            j0Var.f16509u = i18;
            j0Var.f16511w = dVar32.f16426d;
            j0Var.f16510v = dVar32.f16427e;
            TextPaint textPaint42 = textPaint2;
            textPaint42.setTypeface(dVar32.f16428f);
            float f252 = f11;
            j0Var.f16512x = f252;
            j0Var.f16513y = fA02;
            j0Var.z = f20;
            int i452 = i36;
            j0Var.A = i452;
            int i462 = i14;
            j0Var.B = i462;
            int i472 = i13;
            j0Var.C = i472;
            int i482 = i34;
            j0Var.D = i482;
            if (z4) {
            }
            j0Var.a(canvas2, z10);
            i29 = i12 + 1;
            canvas3 = canvas2;
            list = list2;
            height = i32;
            i28 = i33;
            size = i10;
            paddingBottom = i16;
            width = i13;
            paddingTop = i14;
            paddingLeft = i17;
            fA0 = f10;
            i27 = 2;
            cVar = this;
        }
    }
}

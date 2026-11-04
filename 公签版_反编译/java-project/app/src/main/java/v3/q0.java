package v3;

import android.content.Context;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Base64;
import android.util.SparseArray;
import android.widget.FrameLayout;
import fi.iki.elonen.NanoHTTPD;
import j$.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class q0 extends FrameLayout implements k0 {

    /* renamed from: a, reason: collision with root package name */
    public final c f16535a;

    /* renamed from: b, reason: collision with root package name */
    public final o0 f16536b;

    /* renamed from: c, reason: collision with root package name */
    public List f16537c;

    /* renamed from: d, reason: collision with root package name */
    public d f16538d;

    /* renamed from: e, reason: collision with root package name */
    public float f16539e;

    /* renamed from: f, reason: collision with root package name */
    public float f16540f;

    public q0(Context context) {
        super(context, null);
        this.f16537c = Collections.emptyList();
        this.f16538d = d.f16422g;
        this.f16539e = 0.0533f;
        this.f16540f = 0.08f;
        c cVar = new c(context);
        this.f16535a = cVar;
        o0 o0Var = new o0(context);
        this.f16536b = o0Var;
        o0Var.setBackgroundColor(0);
        o0Var.getSettings().setAllowContentAccess(false);
        addView(cVar);
        addView(o0Var);
    }

    @Override // v3.k0
    public final void a(List list, d dVar, float f10, float f11) {
        this.f16538d = dVar;
        this.f16539e = f10;
        this.f16540f = f11;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            t1.b bVar = (t1.b) list.get(i10);
            if (bVar.f14667d != null) {
                arrayList.add(bVar);
            } else {
                arrayList2.add(bVar);
            }
        }
        if (!this.f16537c.isEmpty() || !arrayList2.isEmpty()) {
            this.f16537c = arrayList2;
            c();
        }
        this.f16535a.a(arrayList, dVar, f10, f11);
        invalidate();
    }

    public final String b(float f10, int i10) {
        float fA0 = com.bumptech.glide.d.a0(i10, f10, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        if (fA0 == -3.4028235E38f) {
            return "unset";
        }
        Object[] objArr = {Float.valueOf(fA0 / getContext().getResources().getDisplayMetrics().density)};
        String str = u1.f0.f15206a;
        return String.format(Locale.US, "%.2fpx", objArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:256:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0625  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0649  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0697  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x06cb  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0255  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c() {
        String strConcat;
        String str;
        boolean z;
        float f10;
        int i10;
        String str2;
        Layout.Alignment alignment;
        String str3;
        int i11;
        String str4;
        String str5;
        String str6;
        String str7;
        CharSequence charSequence;
        String str8;
        String str9;
        String str10;
        String str11;
        int i12;
        String str12;
        String str13;
        String str14;
        bd.c cVar;
        Object[] objArr;
        int i13;
        String str15;
        float f11;
        String str16;
        int i14;
        String strA;
        String str17;
        float f12;
        String str18;
        Layout.Alignment alignment2;
        q0 q0Var = this;
        int i15 = 2;
        int i16 = 1;
        StringBuilder sb2 = new StringBuilder();
        String strK0 = com.bumptech.glide.c.k0(q0Var.f16538d.f16423a);
        char c7 = 0;
        String strB = q0Var.b(q0Var.f16539e, 0);
        Float fValueOf = Float.valueOf(1.2f);
        d dVar = q0Var.f16538d;
        int i17 = dVar.f16426d;
        int i18 = dVar.f16427e;
        if (i17 == 1) {
            Object[] objArr2 = {com.bumptech.glide.c.k0(i18)};
            String str19 = u1.f0.f15206a;
            strConcat = String.format(Locale.US, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", objArr2);
        } else if (i17 == 2) {
            String strK02 = com.bumptech.glide.c.k0(i18);
            String str20 = u1.f0.f15206a;
            Locale locale = Locale.US;
            strConcat = "0.1em 0.12em 0.15em ".concat(strK02);
        } else if (i17 == 3) {
            String strK03 = com.bumptech.glide.c.k0(i18);
            String str21 = u1.f0.f15206a;
            Locale locale2 = Locale.US;
            strConcat = "0.06em 0.08em 0.15em ".concat(strK03);
        } else if (i17 != 4) {
            strConcat = "unset";
        } else {
            String strK04 = com.bumptech.glide.c.k0(i18);
            String str22 = u1.f0.f15206a;
            Locale locale3 = Locale.US;
            strConcat = "-0.05em -0.05em 0.15em ".concat(strK04);
        }
        Object[] objArr3 = {strK0, strB, fValueOf, strConcat};
        String str23 = u1.f0.f15206a;
        sb2.append(String.format(Locale.US, "<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", objArr3));
        HashMap map = new HashMap();
        String strK05 = com.bumptech.glide.c.k0(q0Var.f16538d.f16424b);
        String str24 = "background-color:";
        StringBuilder sb3 = new StringBuilder("background-color:");
        sb3.append(strK05);
        String str25 = ";";
        sb3.append(";");
        map.put(".default_bg,.default_bg *", sb3.toString());
        int i19 = 0;
        while (i19 < q0Var.f16537c.size()) {
            t1.b bVar = (t1.b) q0Var.f16537c.get(i19);
            float f13 = bVar.f14671h;
            float f14 = f13 != -3.4028235E38f ? f13 * 100.0f : 50.0f;
            int i20 = -100;
            int i21 = bVar.f14672i;
            int i22 = i21 != i16 ? i21 != i15 ? 0 : -100 : -50;
            int i23 = bVar.f14678p;
            float f15 = bVar.f14668e;
            if (f15 == -3.4028235E38f) {
                Object[] objArr4 = new Object[i16];
                objArr4[0] = Float.valueOf((1.0f - q0Var.f16540f) * 100.0f);
                str = String.format(Locale.US, "%.2f%%", objArr4);
            } else if (bVar.f14669f != i16) {
                Float fValueOf2 = Float.valueOf(f15 * 100.0f);
                Object[] objArr5 = new Object[i16];
                objArr5[c7] = fValueOf2;
                str = String.format(Locale.US, "%.2f%%", objArr5);
                int i24 = bVar.f14670g;
                i20 = i23 == i16 ? -(i24 != i16 ? i24 != 2 ? 0 : -100 : -50) : i24 != i16 ? i24 != 2 ? 0 : -100 : -50;
            } else {
                if (f15 >= 0.0f) {
                    Object[] objArr6 = new Object[i16];
                    objArr6[0] = Float.valueOf(f15 * 1.2f);
                    str = String.format(Locale.US, "%.2fem", objArr6);
                    z = false;
                } else {
                    Float fValueOf3 = Float.valueOf(((-f15) - 1.0f) * 1.2f);
                    Object[] objArr7 = new Object[i16];
                    objArr7[0] = fValueOf3;
                    str = String.format(Locale.US, "%.2fem", objArr7);
                    z = true;
                }
                i20 = 0;
                f10 = bVar.f14673j;
                if (f10 == -3.4028235E38f) {
                    i10 = i22;
                    Object[] objArr8 = new Object[i16];
                    objArr8[0] = Float.valueOf(f10 * 100.0f);
                    str2 = String.format(Locale.US, "%.2f%%", objArr8);
                } else {
                    i10 = i22;
                    str2 = "fit-content";
                }
                alignment = bVar.f14665b;
                if (alignment != null) {
                    str3 = "start";
                    str4 = "end";
                    str5 = "center";
                    i11 = 2;
                } else {
                    int i25 = p0.f16531a[alignment.ordinal()];
                    str3 = "start";
                    if (i25 != 1) {
                        i11 = 2;
                        if (i25 != 2) {
                            str4 = "end";
                            str5 = "center";
                        } else {
                            str5 = "end";
                            str4 = str5;
                        }
                    } else {
                        i11 = 2;
                        str4 = "end";
                        str5 = str3;
                    }
                }
                String str26 = i23 == 1 ? i23 != i11 ? "horizontal-tb" : "vertical-lr" : "vertical-rl";
                StringBuilder sb4 = sb2;
                String strB2 = q0Var.b(bVar.f14677o, bVar.f14676n);
                String strK06 = com.bumptech.glide.c.k0(!bVar.l ? bVar.f14675m : q0Var.f16538d.f16425c);
                String str27 = "right";
                str6 = "top";
                if (i23 == 1) {
                    if (i23 != 2) {
                        str27 = z ? "bottom" : "top";
                        str6 = "left";
                    } else if (!z) {
                        str27 = "left";
                    }
                } else if (z) {
                }
                if (i23 != 2 || i23 == 1) {
                    str7 = "height";
                    int i26 = i20;
                    i20 = i10;
                    i10 = i26;
                } else {
                    str7 = "width";
                }
                float f16 = getContext().getResources().getDisplayMetrics().density;
                Pattern pattern = i0.f16488a;
                String str28 = str26;
                charSequence = bVar.f14664a;
                if (charSequence != null) {
                    cVar = new bd.c("", 6);
                    str11 = str7;
                    str10 = str2;
                    i12 = i23;
                    str12 = str;
                    str9 = str5;
                    str8 = "";
                } else {
                    str8 = "";
                    if (charSequence instanceof Spanned) {
                        Spanned spanned = (Spanned) charSequence;
                        HashSet hashSet = new HashSet();
                        str9 = str5;
                        str10 = str2;
                        str11 = str7;
                        BackgroundColorSpan[] backgroundColorSpanArr = (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class);
                        int i27 = 0;
                        for (int length = backgroundColorSpanArr.length; i27 < length; length = length) {
                            hashSet.add(Integer.valueOf(backgroundColorSpanArr[i27].getBackgroundColor()));
                            i27++;
                        }
                        HashMap map2 = new HashMap();
                        Iterator it = hashSet.iterator();
                        while (it.hasNext()) {
                            int iIntValue = ((Integer) it.next()).intValue();
                            String strA2 = da.b.a(iIntValue, "bg_");
                            Iterator it2 = it;
                            String str29 = str;
                            int i28 = i23;
                            String strL = ta.q.l(".", strA2, ",.", strA2, " *");
                            String strK07 = com.bumptech.glide.c.k0(iIntValue);
                            String str30 = u1.f0.f15206a;
                            Locale locale4 = Locale.US;
                            map2.put(strL, str24 + strK07 + str25);
                            it = it2;
                            str = str29;
                            i23 = i28;
                        }
                        i12 = i23;
                        str12 = str;
                        SparseArray sparseArray = new SparseArray();
                        Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
                        int length2 = spans.length;
                        int i29 = 0;
                        while (i29 < length2) {
                            Object obj = spans[i29];
                            boolean z4 = obj instanceof StrikethroughSpan;
                            String str31 = null;
                            if (z4) {
                                i13 = length2;
                                str15 = str25;
                                f11 = f16;
                                str16 = str24;
                                objArr = spans;
                                strA = "<span style='text-decoration:line-through;'>";
                            } else {
                                objArr = spans;
                                if (obj instanceof ForegroundColorSpan) {
                                    String strK08 = com.bumptech.glide.c.k0(((ForegroundColorSpan) obj).getForegroundColor());
                                    String str32 = u1.f0.f15206a;
                                    Locale locale5 = Locale.US;
                                    i13 = length2;
                                    strA = g.b.A("<span style='color:", strK08, ";'>");
                                    str15 = str25;
                                } else {
                                    i13 = length2;
                                    if (obj instanceof BackgroundColorSpan) {
                                        int backgroundColor = ((BackgroundColorSpan) obj).getBackgroundColor();
                                        String str33 = u1.f0.f15206a;
                                        Locale locale6 = Locale.US;
                                        str15 = str25;
                                        strA = g.b.i("<span class='bg_", backgroundColor, "'>");
                                    } else {
                                        str15 = str25;
                                        if (obj instanceof t1.e) {
                                            strA = "<span style='text-combine-upright:all;'>";
                                        } else if (obj instanceof AbsoluteSizeSpan) {
                                            Object[] objArr9 = {Float.valueOf(((AbsoluteSizeSpan) obj).getDip() ? r1.getSize() : r1.getSize() / f16)};
                                            String str34 = u1.f0.f15206a;
                                            strA = String.format(Locale.US, "<span style='font-size:%.2fpx;'>", objArr9);
                                        } else if (obj instanceof RelativeSizeSpan) {
                                            Object[] objArr10 = {Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f)};
                                            String str35 = u1.f0.f15206a;
                                            strA = String.format(Locale.US, "<span style='font-size:%.2f%%;'>", objArr10);
                                        } else if (obj instanceof TypefaceSpan) {
                                            String family = ((TypefaceSpan) obj).getFamily();
                                            if (family != null) {
                                                String str36 = u1.f0.f15206a;
                                                Locale locale7 = Locale.US;
                                                strA = g.b.A("<span style='font-family:\"", family, "\";'>");
                                            } else {
                                                strA = null;
                                            }
                                        } else if (obj instanceof StyleSpan) {
                                            int style = ((StyleSpan) obj).getStyle();
                                            if (style == 1) {
                                                strA = "<b>";
                                            } else if (style != 2) {
                                                if (style == 3) {
                                                    strA = "<b><i>";
                                                }
                                                f11 = f16;
                                                str16 = str24;
                                                strA = null;
                                            } else {
                                                strA = "<i>";
                                            }
                                        } else if (obj instanceof t1.g) {
                                            int i30 = ((t1.g) obj).f14691b;
                                            if (i30 == -1) {
                                                strA = "<ruby style='ruby-position:unset;'>";
                                            } else if (i30 != 1) {
                                                if (i30 == 2) {
                                                    strA = "<ruby style='ruby-position:under;'>";
                                                }
                                                f11 = f16;
                                                str16 = str24;
                                                strA = null;
                                            } else {
                                                strA = "<ruby style='ruby-position:over;'>";
                                            }
                                        } else if (obj instanceof UnderlineSpan) {
                                            strA = "<u>";
                                        } else if (obj instanceof t1.h) {
                                            t1.h hVar = (t1.h) obj;
                                            int i31 = hVar.f14695a;
                                            StringBuilder sb5 = new StringBuilder();
                                            f11 = f16;
                                            int i32 = hVar.f14696b;
                                            str16 = str24;
                                            if (i32 != 1) {
                                                i14 = 2;
                                                if (i32 == 2) {
                                                    sb5.append("open ");
                                                }
                                            } else {
                                                i14 = 2;
                                                sb5.append("filled ");
                                            }
                                            if (i31 == 0) {
                                                sb5.append("none");
                                            } else if (i31 == 1) {
                                                sb5.append("circle");
                                            } else if (i31 == i14) {
                                                sb5.append("dot");
                                            } else if (i31 != 3) {
                                                sb5.append("unset");
                                            } else {
                                                sb5.append("sesame");
                                            }
                                            Object[] objArr11 = {sb5.toString(), hVar.f14697c != 2 ? "over right" : "under left"};
                                            String str37 = u1.f0.f15206a;
                                            strA = String.format(Locale.US, "<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", objArr11);
                                        } else {
                                            f11 = f16;
                                            str16 = str24;
                                            strA = null;
                                        }
                                    }
                                }
                                f11 = f16;
                                str16 = str24;
                            }
                            if (z4 || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof t1.e) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof t1.h)) {
                                str17 = "</span>";
                            } else {
                                if (obj instanceof TypefaceSpan) {
                                    if (((TypefaceSpan) obj).getFamily() != null) {
                                        str31 = "</span>";
                                    }
                                } else if (obj instanceof StyleSpan) {
                                    int style2 = ((StyleSpan) obj).getStyle();
                                    if (style2 == 1) {
                                        str31 = "</b>";
                                    } else if (style2 == 2) {
                                        str31 = "</i>";
                                    } else if (style2 == 3) {
                                        str31 = "</i></b>";
                                    }
                                } else if (obj instanceof t1.g) {
                                    str31 = "<rt>" + i0.a(((t1.g) obj).f14690a) + "</rt></ruby>";
                                } else if (obj instanceof UnderlineSpan) {
                                    str31 = "</u>";
                                }
                                str17 = str31;
                            }
                            int spanStart = spanned.getSpanStart(obj);
                            int spanEnd = spanned.getSpanEnd(obj);
                            if (strA != null) {
                                str17.getClass();
                                g0 g0Var = new g0(strA, spanStart, spanEnd, str17);
                                h0 h0Var = (h0) sparseArray.get(spanStart);
                                if (h0Var == null) {
                                    h0Var = new h0();
                                    sparseArray.put(spanStart, h0Var);
                                }
                                h0Var.f16486a.add(g0Var);
                                h0 h0Var2 = (h0) sparseArray.get(spanEnd);
                                if (h0Var2 == null) {
                                    h0Var2 = new h0();
                                    sparseArray.put(spanEnd, h0Var2);
                                }
                                h0Var2.f16487b.add(g0Var);
                            }
                            i29++;
                            spans = objArr;
                            length2 = i13;
                            str25 = str15;
                            f16 = f11;
                            str24 = str16;
                        }
                        str13 = str25;
                        str14 = str24;
                        StringBuilder sb6 = new StringBuilder(spanned.length());
                        int i33 = 0;
                        int i34 = 0;
                        while (i33 < sparseArray.size()) {
                            int iKeyAt = sparseArray.keyAt(i33);
                            sb6.append(i0.a(spanned.subSequence(i34, iKeyAt)));
                            h0 h0Var3 = (h0) sparseArray.get(iKeyAt);
                            Collections.sort(h0Var3.f16487b, g0.f16480f);
                            Iterator it3 = h0Var3.f16487b.iterator();
                            while (it3.hasNext()) {
                                sb6.append(((g0) it3.next()).f16484d);
                            }
                            ArrayList arrayList = h0Var3.f16486a;
                            Collections.sort(arrayList, g0.f16479e);
                            Iterator it4 = arrayList.iterator();
                            while (it4.hasNext()) {
                                sb6.append(((g0) it4.next()).f16483c);
                            }
                            i33++;
                            i34 = iKeyAt;
                        }
                        sb6.append(i0.a(spanned.subSequence(i34, spanned.length())));
                        cVar = new bd.c(sb6.toString(), 6);
                        for (String str38 : map.keySet()) {
                            String str39 = (String) map.put(str38, (String) map.get(str38));
                            a9.o.t(str39 == null || str39.equals(map.get(str38)));
                        }
                        Integer numValueOf = Integer.valueOf(i19);
                        Float fValueOf4 = Float.valueOf(f14);
                        Integer numValueOf2 = Integer.valueOf(i10);
                        Integer numValueOf3 = Integer.valueOf(i20);
                        f12 = bVar.f14679q;
                        if (f12 != 0.0f) {
                            int i35 = i12;
                            Object[] objArr12 = {(i35 == 2 || i35 == 1) ? "skewY" : "skewX", Float.valueOf(f12)};
                            String str40 = u1.f0.f15206a;
                            str18 = String.format(Locale.US, "%s(%.2fdeg)", objArr12);
                        } else {
                            str18 = str8;
                        }
                        sb4.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", numValueOf, str6, fValueOf4, str27, str12, str11, str10, str9, str28, strB2, strK06, numValueOf2, numValueOf3, str18));
                        sb4.append("<span class='default_bg'>");
                        String str41 = cVar.f2779b;
                        alignment2 = bVar.f14666c;
                        if (alignment2 != null) {
                            int i36 = p0.f16531a[alignment2.ordinal()];
                            sb4.append("<span style='display:inline-block; text-align:" + (i36 != 1 ? i36 != 2 ? "center" : str4 : str3) + ";'>");
                            sb4.append(str41);
                            sb4.append("</span>");
                        } else {
                            sb4.append(str41);
                        }
                        sb4.append("</span></div>");
                        i19++;
                        i16 = 1;
                        c7 = 0;
                        q0Var = this;
                        sb2 = sb4;
                        str25 = str13;
                        str24 = str14;
                        i15 = 2;
                    } else {
                        str11 = str7;
                        str10 = str2;
                        i12 = i23;
                        str12 = str;
                        str9 = str5;
                        cVar = new bd.c(i0.a(charSequence), 6);
                    }
                }
                str13 = str25;
                str14 = str24;
                while (r0.hasNext()) {
                }
                Integer numValueOf4 = Integer.valueOf(i19);
                Float fValueOf42 = Float.valueOf(f14);
                Integer numValueOf22 = Integer.valueOf(i10);
                Integer numValueOf32 = Integer.valueOf(i20);
                f12 = bVar.f14679q;
                if (f12 != 0.0f) {
                }
                sb4.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", numValueOf4, str6, fValueOf42, str27, str12, str11, str10, str9, str28, strB2, strK06, numValueOf22, numValueOf32, str18));
                sb4.append("<span class='default_bg'>");
                String str412 = cVar.f2779b;
                alignment2 = bVar.f14666c;
                if (alignment2 != null) {
                }
                sb4.append("</span></div>");
                i19++;
                i16 = 1;
                c7 = 0;
                q0Var = this;
                sb2 = sb4;
                str25 = str13;
                str24 = str14;
                i15 = 2;
            }
            z = false;
            f10 = bVar.f14673j;
            if (f10 == -3.4028235E38f) {
            }
            alignment = bVar.f14665b;
            if (alignment != null) {
            }
            if (i23 == 1) {
            }
            StringBuilder sb42 = sb2;
            String strB22 = q0Var.b(bVar.f14677o, bVar.f14676n);
            String strK062 = com.bumptech.glide.c.k0(!bVar.l ? bVar.f14675m : q0Var.f16538d.f16425c);
            String str272 = "right";
            str6 = "top";
            if (i23 == 1) {
            }
            if (i23 != 2) {
                str7 = "height";
                int i262 = i20;
                i20 = i10;
                i10 = i262;
            }
            float f162 = getContext().getResources().getDisplayMetrics().density;
            Pattern pattern2 = i0.f16488a;
            String str282 = str26;
            charSequence = bVar.f14664a;
            if (charSequence != null) {
            }
            str13 = str25;
            str14 = str24;
            while (r0.hasNext()) {
            }
            Integer numValueOf42 = Integer.valueOf(i19);
            Float fValueOf422 = Float.valueOf(f14);
            Integer numValueOf222 = Integer.valueOf(i10);
            Integer numValueOf322 = Integer.valueOf(i20);
            f12 = bVar.f14679q;
            if (f12 != 0.0f) {
            }
            sb42.append(String.format(Locale.US, "<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", numValueOf42, str6, fValueOf422, str272, str12, str11, str10, str9, str282, strB22, strK062, numValueOf222, numValueOf322, str18));
            sb42.append("<span class='default_bg'>");
            String str4122 = cVar.f2779b;
            alignment2 = bVar.f14666c;
            if (alignment2 != null) {
            }
            sb42.append("</span></div>");
            i19++;
            i16 = 1;
            c7 = 0;
            q0Var = this;
            sb2 = sb42;
            str25 = str13;
            str24 = str14;
            i15 = 2;
        }
        StringBuilder sb7 = sb2;
        sb7.append("</div></body></html>");
        StringBuilder sb8 = new StringBuilder();
        sb8.append("<html><head><style>");
        for (String str42 : map.keySet()) {
            sb8.append(str42);
            sb8.append("{");
            sb8.append((String) map.get(str42));
            sb8.append("}");
        }
        sb8.append("</style></head>");
        sb7.insert(0, (CharSequence) sb8);
        this.f16536b.loadData(Base64.encodeToString(sb7.toString().getBytes(StandardCharsets.UTF_8), 1), NanoHTTPD.MIME_HTML, "base64");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        if (!z || this.f16537c.isEmpty()) {
            return;
        }
        c();
    }
}

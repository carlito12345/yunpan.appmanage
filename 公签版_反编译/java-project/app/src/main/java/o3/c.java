package o3;

import a9.o;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Pair;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import t1.g;
import t1.h;
import u1.f0;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final String f11524a;

    /* renamed from: b, reason: collision with root package name */
    public final String f11525b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11526c;

    /* renamed from: d, reason: collision with root package name */
    public final long f11527d;

    /* renamed from: e, reason: collision with root package name */
    public final long f11528e;

    /* renamed from: f, reason: collision with root package name */
    public final f f11529f;

    /* renamed from: g, reason: collision with root package name */
    public final String[] f11530g;

    /* renamed from: h, reason: collision with root package name */
    public final String f11531h;

    /* renamed from: i, reason: collision with root package name */
    public final String f11532i;

    /* renamed from: j, reason: collision with root package name */
    public final c f11533j;

    /* renamed from: k, reason: collision with root package name */
    public final HashMap f11534k;
    public final HashMap l;

    /* renamed from: m, reason: collision with root package name */
    public ArrayList f11535m;

    public c(String str, String str2, long j10, long j11, f fVar, String[] strArr, String str3, String str4, c cVar) {
        this.f11524a = str;
        this.f11525b = str2;
        this.f11532i = str4;
        this.f11529f = fVar;
        this.f11530g = strArr;
        this.f11526c = str2 != null;
        this.f11527d = j10;
        this.f11528e = j11;
        str3.getClass();
        this.f11531h = str3;
        this.f11533j = cVar;
        this.f11534k = new HashMap();
        this.l = new HashMap();
    }

    public static c a(String str) {
        return new c(null, str.replaceAll("\r\n", SignParameters.NEW_LINE).replaceAll(" *\n *", SignParameters.NEW_LINE).replaceAll(SignParameters.NEW_LINE, " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    public static SpannableStringBuilder e(String str, TreeMap treeMap) {
        if (!treeMap.containsKey(str)) {
            t1.a aVar = new t1.a();
            aVar.f14641a = new SpannableStringBuilder();
            aVar.f14642b = null;
            treeMap.put(str, aVar);
        }
        CharSequence charSequence = ((t1.a) treeMap.get(str)).f14641a;
        charSequence.getClass();
        return (SpannableStringBuilder) charSequence;
    }

    public final c b(int i10) {
        ArrayList arrayList = this.f11535m;
        if (arrayList != null) {
            return (c) arrayList.get(i10);
        }
        throw new IndexOutOfBoundsException();
    }

    public final int c() {
        ArrayList arrayList = this.f11535m;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public final void d(TreeSet treeSet, boolean z) {
        String str = this.f11524a;
        boolean zEquals = "p".equals(str);
        boolean zEquals2 = "div".equals(str);
        if (z || zEquals || (zEquals2 && this.f11532i != null)) {
            long j10 = this.f11527d;
            if (j10 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j10));
            }
            long j11 = this.f11528e;
            if (j11 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j11));
            }
        }
        if (this.f11535m == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f11535m.size(); i10++) {
            ((c) this.f11535m.get(i10)).d(treeSet, z || zEquals);
        }
    }

    public final boolean f(long j10) {
        long j11 = this.f11528e;
        long j12 = this.f11527d;
        return (j12 == -9223372036854775807L && j11 == -9223372036854775807L) || (j12 <= j10 && j11 == -9223372036854775807L) || ((j12 == -9223372036854775807L && j10 < j11) || (j12 <= j10 && j10 < j11));
    }

    public final void g(long j10, String str, ArrayList arrayList) {
        String str2;
        String str3 = this.f11531h;
        if (!"".equals(str3)) {
            str = str3;
        }
        if (f(j10) && "div".equals(this.f11524a) && (str2 = this.f11532i) != null) {
            arrayList.add(new Pair(str, str2));
            return;
        }
        for (int i10 = 0; i10 < c(); i10++) {
            b(i10).g(j10, str, arrayList);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x02c6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(long j10, Map map, HashMap map2, String str, TreeMap treeMap) {
        Iterator it;
        int i10;
        c cVar;
        int i11;
        int i12;
        f fVarB0;
        int i13;
        RelativeSizeSpan[] relativeSizeSpanArr;
        int i14;
        int i15;
        int i16 = -1;
        int i17 = 1;
        if (f(j10)) {
            String str2 = this.f11531h;
            String str3 = "".equals(str2) ? str : str2;
            Iterator it2 = this.l.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                String str4 = (String) entry.getKey();
                HashMap map3 = this.f11534k;
                int iIntValue = map3.containsKey(str4) ? ((Integer) map3.get(str4)).intValue() : 0;
                int iIntValue2 = ((Integer) entry.getValue()).intValue();
                if (iIntValue != iIntValue2) {
                    t1.a aVar = (t1.a) treeMap.get(str4);
                    aVar.getClass();
                    e eVar = (e) map2.get(str3);
                    eVar.getClass();
                    f fVarB02 = o.b0(this.f11529f, this.f11530g, map);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) aVar.f14641a;
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        aVar.f14641a = spannableStringBuilder;
                        aVar.f14642b = null;
                    }
                    if (fVarB02 != null) {
                        int i18 = fVarB02.f11562h;
                        if (((i18 == i16 && fVarB02.f11563i == i16) ? -1 : (i18 == i17 ? 1 : 0) | (fVarB02.f11563i == i17 ? 2 : 0)) != i16) {
                            int i19 = fVarB02.f11562h;
                            if (i19 != i16) {
                                i15 = (i19 != i17 ? 1 : 0) | (fVarB02.f11563i != i17 ? 2 : 0);
                                StyleSpan styleSpan = new StyleSpan(i15);
                                i10 = 33;
                                spannableStringBuilder.setSpan(styleSpan, iIntValue, iIntValue2, 33);
                            } else if (fVarB02.f11563i == i16) {
                                i17 = 1;
                                i15 = -1;
                                StyleSpan styleSpan2 = new StyleSpan(i15);
                                i10 = 33;
                                spannableStringBuilder.setSpan(styleSpan2, iIntValue, iIntValue2, 33);
                            } else {
                                i17 = 1;
                                i15 = (i19 != i17 ? 1 : 0) | (fVarB02.f11563i != i17 ? 2 : 0);
                                StyleSpan styleSpan22 = new StyleSpan(i15);
                                i10 = 33;
                                spannableStringBuilder.setSpan(styleSpan22, iIntValue, iIntValue2, 33);
                            }
                        } else {
                            i10 = 33;
                        }
                        if (fVarB02.f11560f == i17) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), iIntValue, iIntValue2, i10);
                        }
                        if (fVarB02.f11561g == i17) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), iIntValue, iIntValue2, i10);
                        }
                        if (fVarB02.f11557c) {
                            if (!fVarB02.f11557c) {
                                throw new IllegalStateException("Font color has not been defined.");
                            }
                            q4.a.a(spannableStringBuilder, new ForegroundColorSpan(fVarB02.f11556b), iIntValue, iIntValue2);
                        }
                        if (fVarB02.f11559e) {
                            if (!fVarB02.f11559e) {
                                throw new IllegalStateException("Background color has not been defined.");
                            }
                            q4.a.a(spannableStringBuilder, new BackgroundColorSpan(fVarB02.f11558d), iIntValue, iIntValue2);
                        }
                        if (fVarB02.f11555a != null) {
                            q4.a.a(spannableStringBuilder, new TypefaceSpan(fVarB02.f11555a), iIntValue, iIntValue2);
                        }
                        b bVar = fVarB02.r;
                        if (bVar != null) {
                            int i20 = bVar.f11521a;
                            if (i20 == i16) {
                                int i21 = eVar.f11554j;
                                i20 = (i21 == 2 || i21 == 1) ? 3 : 1;
                                i14 = 1;
                            } else {
                                i14 = bVar.f11522b;
                            }
                            int i22 = bVar.f11523c;
                            if (i22 == -2) {
                                i22 = 1;
                            }
                            q4.a.a(spannableStringBuilder, new h(i20, i14, i22), iIntValue, iIntValue2);
                        }
                        int i23 = fVarB02.f11566m;
                        if (i23 == 2) {
                            c cVar2 = this.f11533j;
                            while (true) {
                                if (cVar2 == null) {
                                    cVar2 = null;
                                    break;
                                }
                                f fVarB03 = o.b0(cVar2.f11529f, cVar2.f11530g, map);
                                if (fVarB03 != null && fVarB03.f11566m == 1) {
                                    break;
                                } else {
                                    cVar2 = cVar2.f11533j;
                                }
                            }
                            if (cVar2 != null) {
                                ArrayDeque arrayDeque = new ArrayDeque();
                                arrayDeque.push(cVar2);
                                while (true) {
                                    if (arrayDeque.isEmpty()) {
                                        cVar = null;
                                        break;
                                    }
                                    c cVar3 = (c) arrayDeque.pop();
                                    f fVarB04 = o.b0(cVar3.f11529f, cVar3.f11530g, map);
                                    if (fVarB04 != null && fVarB04.f11566m == 3) {
                                        cVar = cVar3;
                                        break;
                                    }
                                    for (int iC = cVar3.c() - 1; iC >= 0; iC--) {
                                        arrayDeque.push(cVar3.b(iC));
                                    }
                                }
                                if (cVar != null) {
                                    if (cVar.c() != 1 || cVar.b(0).f11525b == null) {
                                        u1.a.j("Skipping rubyText node without exactly one text child.");
                                    } else {
                                        String str5 = cVar.b(0).f11525b;
                                        String str6 = f0.f15206a;
                                        f fVarB05 = o.b0(cVar.f11529f, cVar.f11530g, map);
                                        if (fVarB05 != null) {
                                            i12 = fVarB05.f11567n;
                                            i11 = -1;
                                        } else {
                                            i11 = -1;
                                            i12 = -1;
                                        }
                                        if (i12 == i11 && (fVarB0 = o.b0(cVar2.f11529f, cVar2.f11530g, map)) != null) {
                                            i12 = fVarB0.f11567n;
                                        }
                                        spannableStringBuilder.setSpan(new g(str5, i12), iIntValue, iIntValue2, 33);
                                    }
                                }
                                if (fVarB02.f11570q == 1) {
                                    q4.a.a(spannableStringBuilder, new t1.e(), iIntValue, iIntValue2);
                                }
                                i13 = fVarB02.f11564j;
                                if (i13 != 1) {
                                    it = it2;
                                    q4.a.a(spannableStringBuilder, new AbsoluteSizeSpan((int) fVarB02.f11565k, true), iIntValue, iIntValue2);
                                } else if (i13 == 2) {
                                    it = it2;
                                    q4.a.a(spannableStringBuilder, new RelativeSizeSpan(fVarB02.f11565k), iIntValue, iIntValue2);
                                } else if (i13 != 3) {
                                    it = it2;
                                } else {
                                    float sizeChange = fVarB02.f11565k / 100.0f;
                                    RelativeSizeSpan[] relativeSizeSpanArr2 = (RelativeSizeSpan[]) spannableStringBuilder.getSpans(iIntValue, iIntValue2, RelativeSizeSpan.class);
                                    int length = relativeSizeSpanArr2.length;
                                    int i24 = 0;
                                    while (i24 < length) {
                                        RelativeSizeSpan relativeSizeSpan = relativeSizeSpanArr2[i24];
                                        Iterator it3 = it2;
                                        if (spannableStringBuilder.getSpanStart(relativeSizeSpan) <= iIntValue && spannableStringBuilder.getSpanEnd(relativeSizeSpan) >= iIntValue2) {
                                            sizeChange = relativeSizeSpan.getSizeChange() * sizeChange;
                                        }
                                        if (spannableStringBuilder.getSpanStart(relativeSizeSpan) == iIntValue && spannableStringBuilder.getSpanEnd(relativeSizeSpan) == iIntValue2) {
                                            relativeSizeSpanArr = relativeSizeSpanArr2;
                                            if (spannableStringBuilder.getSpanFlags(relativeSizeSpan) == 33) {
                                                spannableStringBuilder.removeSpan(relativeSizeSpan);
                                            }
                                        } else {
                                            relativeSizeSpanArr = relativeSizeSpanArr2;
                                        }
                                        i24++;
                                        it2 = it3;
                                        relativeSizeSpanArr2 = relativeSizeSpanArr;
                                    }
                                    it = it2;
                                    spannableStringBuilder.setSpan(new RelativeSizeSpan(sizeChange), iIntValue, iIntValue2, 33);
                                }
                                if (!"p".equals(this.f11524a)) {
                                    float f10 = fVarB02.f11571s;
                                    if (f10 != Float.MAX_VALUE) {
                                        aVar.f14656q = (f10 * (-90.0f)) / 100.0f;
                                    }
                                    Layout.Alignment alignment = fVarB02.f11568o;
                                    if (alignment != null) {
                                        aVar.f14643c = alignment;
                                    }
                                    Layout.Alignment alignment2 = fVarB02.f11569p;
                                    if (alignment2 != null) {
                                        aVar.f14644d = alignment2;
                                    }
                                }
                            }
                        } else if (i23 == 3 || i23 == 4) {
                            spannableStringBuilder.setSpan(new a(), iIntValue, iIntValue2, 33);
                        }
                        if (fVarB02.f11570q == 1) {
                        }
                        i13 = fVarB02.f11564j;
                        if (i13 != 1) {
                        }
                        if (!"p".equals(this.f11524a)) {
                        }
                    }
                    it2 = it;
                    i16 = -1;
                    i17 = 1;
                }
                it = it2;
                it2 = it;
                i16 = -1;
                i17 = 1;
            }
            for (int i25 = 0; i25 < c(); i25++) {
                b(i25).h(j10, map, map2, str3, treeMap);
            }
        }
    }

    public final void i(long j10, boolean z, String str, TreeMap treeMap) {
        HashMap map = this.f11534k;
        map.clear();
        HashMap map2 = this.l;
        map2.clear();
        String str2 = this.f11524a;
        if ("metadata".equals(str2)) {
            return;
        }
        String str3 = this.f11531h;
        String str4 = "".equals(str3) ? str : str3;
        if (this.f11526c && z) {
            SpannableStringBuilder spannableStringBuilderE = e(str4, treeMap);
            String str5 = this.f11525b;
            str5.getClass();
            spannableStringBuilderE.append((CharSequence) str5);
            return;
        }
        if ("br".equals(str2) && z) {
            e(str4, treeMap).append('\n');
            return;
        }
        if (f(j10)) {
            for (Map.Entry entry : treeMap.entrySet()) {
                String str6 = (String) entry.getKey();
                CharSequence charSequence = ((t1.a) entry.getValue()).f14641a;
                charSequence.getClass();
                map.put(str6, Integer.valueOf(charSequence.length()));
            }
            boolean zEquals = "p".equals(str2);
            for (int i10 = 0; i10 < c(); i10++) {
                b(i10).i(j10, z || zEquals, str4, treeMap);
            }
            if (zEquals) {
                SpannableStringBuilder spannableStringBuilderE2 = e(str4, treeMap);
                int length = spannableStringBuilderE2.length() - 1;
                while (length >= 0 && spannableStringBuilderE2.charAt(length) == ' ') {
                    length--;
                }
                if (length >= 0 && spannableStringBuilderE2.charAt(length) != '\n') {
                    spannableStringBuilderE2.append('\n');
                }
            }
            for (Map.Entry entry2 : treeMap.entrySet()) {
                String str7 = (String) entry2.getKey();
                CharSequence charSequence2 = ((t1.a) entry2.getValue()).f14641a;
                charSequence2.getClass();
                map2.put(str7, Integer.valueOf(charSequence2.length()));
            }
        }
    }
}

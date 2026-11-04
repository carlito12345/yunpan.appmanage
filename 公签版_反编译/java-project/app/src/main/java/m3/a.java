package m3;

import a9.o;
import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import i3.i;
import i3.j;
import j$.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import u1.f;
import u1.f0;
import u1.q;

/* loaded from: classes.dex */
public final class a implements j {

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f10818g = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: a, reason: collision with root package name */
    public final boolean f10819a;

    /* renamed from: b, reason: collision with root package name */
    public final k3.b f10820b;

    /* renamed from: d, reason: collision with root package name */
    public LinkedHashMap f10822d;

    /* renamed from: e, reason: collision with root package name */
    public float f10823e = -3.4028235E38f;

    /* renamed from: f, reason: collision with root package name */
    public float f10824f = -3.4028235E38f;

    /* renamed from: c, reason: collision with root package name */
    public final q f10821c = new q();

    public a(List list) throws NumberFormatException {
        if (list == null || list.isEmpty()) {
            this.f10819a = false;
            this.f10820b = null;
            return;
        }
        this.f10819a = true;
        byte[] bArr = (byte[]) list.get(0);
        Charset charset = StandardCharsets.UTF_8;
        String str = new String(bArr, charset);
        o.k(str.startsWith("Format:"));
        k3.b bVarA = k3.b.a(str);
        bVarA.getClass();
        this.f10820b = bVarA;
        c(new q((byte[]) list.get(1)), charset);
    }

    public static int a(long j10, ArrayList arrayList, ArrayList arrayList2) {
        int i10;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i10 = 0;
                break;
            }
            if (((Long) arrayList.get(size)).longValue() == j10) {
                return size;
            }
            if (((Long) arrayList.get(size)).longValue() < j10) {
                i10 = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i10, Long.valueOf(j10));
        arrayList2.add(i10, i10 == 0 ? new ArrayList() : new ArrayList((Collection) arrayList2.get(i10 - 1)));
        return i10;
    }

    public static long d(String str) {
        Matcher matcher = f10818g.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String strGroup = matcher.group(1);
        String str2 = f0.f15206a;
        return (Long.parseLong(matcher.group(4)) * 10000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(2)) * 60000000) + (Long.parseLong(strGroup) * 3600000000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c6  */
    @Override // i3.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(byte[] bArr, int i10, int i11, i iVar, f fVar) throws NumberFormatException {
        Charset charset;
        k3.b bVar;
        q qVar;
        int i12;
        long jD;
        int i13;
        int i14;
        float f10;
        Layout.Alignment alignment;
        int i15;
        int i16;
        int i17;
        float f11;
        float f12;
        float f13;
        int i18;
        float f14;
        int i19;
        float f15;
        int i20;
        int i21;
        Integer num;
        int iA;
        int i22;
        a aVar = this;
        i iVar2 = iVar;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        q qVar2 = aVar.f10821c;
        qVar2.M(i10 + i11, bArr);
        qVar2.O(i10);
        Charset charsetK = qVar2.K();
        if (charsetK == null) {
            charsetK = StandardCharsets.UTF_8;
        }
        boolean z = aVar.f10819a;
        if (!z) {
            aVar.c(qVar2, charsetK);
        }
        k3.b bVarA = z ? aVar.f10820b : null;
        while (true) {
            String strP = qVar2.p(charsetK);
            if (strP == null) {
                i iVar3 = iVar2;
                long j10 = iVar3.f8497a;
                ArrayList arrayList3 = (j10 == -9223372036854775807L || !iVar3.f8498b) ? null : new ArrayList();
                for (int i23 = 0; i23 < arrayList.size(); i23++) {
                    List list = (List) arrayList.get(i23);
                    if (!list.isEmpty() || i23 == 0) {
                        if (i23 == arrayList.size() - 1) {
                            throw new IllegalStateException();
                        }
                        long jLongValue = ((Long) arrayList2.get(i23)).longValue();
                        long jLongValue2 = ((Long) arrayList2.get(i23 + 1)).longValue();
                        i3.a aVar2 = new i3.a(jLongValue, jLongValue2 - jLongValue, list);
                        if (j10 == -9223372036854775807L || jLongValue2 >= j10) {
                            fVar.accept(aVar2);
                        } else if (arrayList3 != null) {
                            arrayList3.add(aVar2);
                        }
                    }
                }
                if (arrayList3 != null) {
                    Iterator it = arrayList3.iterator();
                    while (it.hasNext()) {
                        fVar.accept((i3.a) it.next());
                    }
                    return;
                }
                return;
            }
            if (strP.startsWith("Format:")) {
                bVarA = k3.b.a(strP);
            } else if (strP.startsWith("Dialogue:")) {
                if (bVarA == null) {
                    u1.a.p("Skipping dialogue line before complete format: ".concat(strP));
                } else {
                    o.k(strP.startsWith("Dialogue:"));
                    String strSubstring = strP.substring(9);
                    int i24 = bVarA.f10094f;
                    String[] strArrSplit = strSubstring.split(",", i24);
                    if (strArrSplit.length != i24) {
                        u1.a.p("Skipping dialogue line with fewer columns than format: ".concat(strP));
                    } else {
                        int i25 = bVarA.f10089a;
                        if (i25 != -1) {
                            try {
                                i12 = Integer.parseInt(strArrSplit[i25].trim());
                            } catch (RuntimeException unused) {
                                u1.a.p("Fail to parse layer: " + strArrSplit[i25]);
                            }
                            jD = d(strArrSplit[bVarA.f10090b]);
                            if (jD != -9223372036854775807L) {
                                u1.a.p("Skipping invalid timing: ".concat(strP));
                            } else {
                                qVar = qVar2;
                                long jD2 = d(strArrSplit[bVarA.f10091c]);
                                if (jD2 == -9223372036854775807L || jD2 <= jD) {
                                    charset = charsetK;
                                    bVar = bVarA;
                                    u1.a.p("Skipping invalid timing: ".concat(strP));
                                } else {
                                    LinkedHashMap linkedHashMap = aVar.f10822d;
                                    d dVar = (linkedHashMap == null || (i22 = bVarA.f10092d) == -1) ? null : (d) linkedHashMap.get(strArrSplit[i22].trim());
                                    String str = strArrSplit[bVarA.f10093e];
                                    Matcher matcher = c.f10836a.matcher(str);
                                    int i26 = -1;
                                    PointF pointF = null;
                                    while (matcher.find()) {
                                        Charset charset2 = charsetK;
                                        k3.b bVar2 = bVarA;
                                        String strGroup = matcher.group(1);
                                        strGroup.getClass();
                                        try {
                                            PointF pointFA = c.a(strGroup);
                                            if (pointFA != null) {
                                                pointF = pointFA;
                                            }
                                        } catch (RuntimeException unused2) {
                                        }
                                        try {
                                            Matcher matcher2 = c.f10839d.matcher(strGroup);
                                            if (matcher2.find()) {
                                                String strGroup2 = matcher2.group(1);
                                                strGroup2.getClass();
                                                iA = d.a(strGroup2);
                                            } else {
                                                iA = -1;
                                            }
                                            if (iA != -1) {
                                                i26 = iA;
                                            }
                                        } catch (RuntimeException unused3) {
                                        }
                                        charsetK = charset2;
                                        bVarA = bVar2;
                                    }
                                    charset = charsetK;
                                    bVar = bVarA;
                                    String strReplace = c.f10836a.matcher(str).replaceAll("").replace("\\N", SignParameters.NEW_LINE).replace("\\n", SignParameters.NEW_LINE).replace("\\h", " ");
                                    float f16 = aVar.f10823e;
                                    float f17 = aVar.f10824f;
                                    SpannableString spannableString = new SpannableString(strReplace);
                                    if (dVar != null) {
                                        Integer num2 = dVar.f10842c;
                                        if (num2 != null) {
                                            spannableString.setSpan(new ForegroundColorSpan(num2.intValue()), 0, spannableString.length(), 33);
                                        }
                                        if (dVar.f10849j == 3 && (num = dVar.f10843d) != null) {
                                            spannableString.setSpan(new BackgroundColorSpan(num.intValue()), 0, spannableString.length(), 33);
                                        }
                                        float f18 = dVar.f10844e;
                                        if (f18 == -3.4028235E38f || f17 == -3.4028235E38f) {
                                            i18 = Integer.MIN_VALUE;
                                            f14 = -3.4028235E38f;
                                        } else {
                                            f14 = f18 / f17;
                                            i18 = 1;
                                        }
                                        boolean z4 = dVar.f10846g;
                                        boolean z10 = dVar.f10845f;
                                        if (z10 && z4) {
                                            i19 = i18;
                                            f15 = f14;
                                            i20 = 0;
                                            i21 = 33;
                                            spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                        } else {
                                            i19 = i18;
                                            f15 = f14;
                                            i20 = 0;
                                            i21 = 33;
                                            if (z10) {
                                                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                            } else if (z4) {
                                                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                            }
                                        }
                                        if (dVar.f10847h) {
                                            spannableString.setSpan(new UnderlineSpan(), i20, spannableString.length(), i21);
                                        }
                                        if (dVar.f10848i) {
                                            spannableString.setSpan(new StrikethroughSpan(), i20, spannableString.length(), i21);
                                        }
                                        f10 = f15;
                                        i14 = i19;
                                        i13 = -1;
                                    } else {
                                        i13 = -1;
                                        i14 = Integer.MIN_VALUE;
                                        f10 = -3.4028235E38f;
                                    }
                                    if (i26 != i13) {
                                        i13 = i26;
                                    } else if (dVar != null) {
                                        i13 = dVar.f10841b;
                                    }
                                    switch (i13) {
                                        case 0:
                                        default:
                                            org.bouncycastle.jcajce.provider.digest.a.o(i13, "Unknown alignment: ");
                                        case -1:
                                            alignment = null;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            alignment = Layout.Alignment.ALIGN_NORMAL;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            alignment = Layout.Alignment.ALIGN_CENTER;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                            break;
                                    }
                                    int i27 = Integer.MIN_VALUE;
                                    switch (i13) {
                                        case 0:
                                        default:
                                            org.bouncycastle.jcajce.provider.digest.a.o(i13, "Unknown alignment: ");
                                        case -1:
                                            i15 = Integer.MIN_VALUE;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            i15 = 0;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            i15 = 1;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            i15 = 2;
                                            break;
                                    }
                                    switch (i13) {
                                        case -1:
                                            break;
                                        case 0:
                                        default:
                                            org.bouncycastle.jcajce.provider.digest.a.o(i13, "Unknown alignment: ");
                                            break;
                                        case 1:
                                        case 2:
                                        case 3:
                                            i27 = 2;
                                            break;
                                        case 4:
                                        case 5:
                                        case 6:
                                            i27 = 1;
                                            break;
                                        case 7:
                                        case 8:
                                        case 9:
                                            i27 = 0;
                                            break;
                                    }
                                    float f19 = -3.4028235E38f;
                                    if (pointF == null || f17 == -3.4028235E38f || f16 == -3.4028235E38f) {
                                        if (i15 != 0) {
                                            i16 = 1;
                                            if (i15 != 1) {
                                                i17 = 2;
                                                f11 = i15 != 2 ? -3.4028235E38f : 0.95f;
                                            } else {
                                                i17 = 2;
                                                f11 = 0.5f;
                                            }
                                        } else {
                                            i16 = 1;
                                            i17 = 2;
                                            f11 = 0.05f;
                                        }
                                        if (i27 == 0) {
                                            f19 = 0.05f;
                                        } else if (i27 == i16) {
                                            f19 = 0.5f;
                                        } else if (i27 == i17) {
                                            f19 = 0.95f;
                                        }
                                        f12 = f19;
                                        f13 = f11;
                                    } else {
                                        f13 = pointF.x / f16;
                                        f12 = pointF.y / f17;
                                    }
                                    t1.b bVar3 = new t1.b(spannableString, alignment, null, null, f12, 0, i27, f13, i15, i14, f10, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, i12);
                                    int iA2 = a(jD2, arrayList2, arrayList);
                                    for (int iA3 = a(jD, arrayList2, arrayList); iA3 < iA2; iA3++) {
                                        ((List) arrayList.get(iA3)).add(bVar3);
                                    }
                                }
                                aVar = this;
                                iVar2 = iVar;
                                qVar2 = qVar;
                                charsetK = charset;
                                bVarA = bVar;
                            }
                        } else {
                            i12 = 0;
                            jD = d(strArrSplit[bVarA.f10090b]);
                            if (jD != -9223372036854775807L) {
                            }
                        }
                    }
                }
                charset = charsetK;
                bVar = bVarA;
                qVar = qVar2;
                aVar = this;
                iVar2 = iVar;
                qVar2 = qVar;
                charsetK = charset;
                bVarA = bVar;
            } else {
                charset = charsetK;
                bVar = bVarA;
                qVar = qVar2;
                aVar = this;
                iVar2 = iVar;
                qVar2 = qVar;
                charsetK = charset;
                bVarA = bVar;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:174:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(q qVar, Charset charset) throws NumberFormatException {
        d dVar;
        float f10;
        int i10;
        int i11;
        float f11;
        int i12 = 6;
        int i13 = 7;
        int i14 = 2;
        char c7 = 0;
        int i15 = 8;
        while (true) {
            String strP = qVar.p(charset);
            if (strP == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(strP)) {
                while (true) {
                    String strP2 = qVar.p(charset);
                    if (strP2 == null) {
                        break;
                    }
                    if (qVar.a() != 0) {
                        if ((qVar.i(charset) != 0 ? d.b.h(r10 >>> i15) : 1114112) == 91) {
                            break;
                        }
                    }
                    String[] strArrSplit = strP2.split(":");
                    if (strArrSplit.length == i14) {
                        String strB0 = qf.c.b0(strArrSplit[c7].trim());
                        strB0.getClass();
                        if (strB0.equals("playresx")) {
                            this.f10823e = Float.parseFloat(strArrSplit[1].trim());
                        } else if (strB0.equals("playresy")) {
                            try {
                                this.f10824f = Float.parseFloat(strArrSplit[1].trim());
                            } catch (NumberFormatException unused) {
                            }
                        }
                    }
                }
            } else {
                if ("[V4+ Styles]".equalsIgnoreCase(strP)) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    b bVar = null;
                    while (true) {
                        String strP3 = qVar.p(charset);
                        if (strP3 != null) {
                            if (qVar.a() != 0) {
                                if ((qVar.i(charset) != 0 ? d.b.h(r0 >>> i15) : 1114112) == 91) {
                                }
                            }
                            if (strP3.startsWith("Format:")) {
                                String[] strArrSplit2 = TextUtils.split(strP3.substring(i13), ",");
                                int i16 = -1;
                                int i17 = -1;
                                int i18 = -1;
                                int i19 = -1;
                                int i20 = -1;
                                int i21 = -1;
                                int i22 = -1;
                                int i23 = -1;
                                int i24 = -1;
                                int i25 = -1;
                                for (int i26 = 0; i26 < strArrSplit2.length; i26++) {
                                    String strB02 = qf.c.b0(strArrSplit2[i26].trim());
                                    strB02.getClass();
                                    switch (strB02) {
                                        case "italic":
                                            i22 = i26;
                                            break;
                                        case "underline":
                                            i23 = i26;
                                            break;
                                        case "strikeout":
                                            i24 = i26;
                                            break;
                                        case "primarycolour":
                                            i18 = i26;
                                            break;
                                        case "bold":
                                            i21 = i26;
                                            break;
                                        case "name":
                                            i16 = i26;
                                            break;
                                        case "fontsize":
                                            i20 = i26;
                                            break;
                                        case "borderstyle":
                                            i25 = i26;
                                            break;
                                        case "alignment":
                                            i17 = i26;
                                            break;
                                        case "outlinecolour":
                                            i19 = i26;
                                            break;
                                    }
                                }
                                bVar = i16 != -1 ? new b(i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, strArrSplit2.length) : null;
                            } else {
                                if (strP3.startsWith("Style:")) {
                                    if (bVar == null) {
                                        u1.a.p("Skipping 'Style:' line before 'Format:' line: ".concat(strP3));
                                    } else {
                                        o.k(strP3.startsWith("Style:"));
                                        String[] strArrSplit3 = TextUtils.split(strP3.substring(i12), ",");
                                        int length = strArrSplit3.length;
                                        int i27 = bVar.f10835k;
                                        if (length != i27) {
                                            int length2 = strArrSplit3.length;
                                            String str = f0.f15206a;
                                            Locale locale = Locale.US;
                                            StringBuilder sbO = ta.q.o(i27, length2, "Skipping malformed 'Style:' line (expected ", " values, found ", "): '");
                                            sbO.append(strP3);
                                            sbO.append("'");
                                            u1.a.p(sbO.toString());
                                        } else {
                                            try {
                                                String strTrim = strArrSplit3[bVar.f10825a].trim();
                                                int i28 = bVar.f10826b;
                                                int iA = i28 != -1 ? d.a(strArrSplit3[i28].trim()) : -1;
                                                int i29 = bVar.f10827c;
                                                Integer numC = i29 != -1 ? d.c(strArrSplit3[i29].trim()) : null;
                                                int i30 = bVar.f10828d;
                                                Integer numC2 = i30 != -1 ? d.c(strArrSplit3[i30].trim()) : null;
                                                int i31 = bVar.f10829e;
                                                if (i31 != -1) {
                                                    String strTrim2 = strArrSplit3[i31].trim();
                                                    try {
                                                        f11 = Float.parseFloat(strTrim2);
                                                    } catch (NumberFormatException e7) {
                                                        u1.a.q("Failed to parse font size: '" + strTrim2 + "'", e7);
                                                        f11 = -3.4028235E38f;
                                                    }
                                                    f10 = f11;
                                                } else {
                                                    f10 = -3.4028235E38f;
                                                }
                                                int i32 = bVar.f10830f;
                                                boolean z = i32 != -1 && d.b(strArrSplit3[i32].trim());
                                                int i33 = bVar.f10831g;
                                                boolean z4 = i33 != -1 && d.b(strArrSplit3[i33].trim());
                                                int i34 = bVar.f10832h;
                                                boolean z10 = i34 != -1 && d.b(strArrSplit3[i34].trim());
                                                int i35 = bVar.f10833i;
                                                boolean z11 = i35 != -1 && d.b(strArrSplit3[i35].trim());
                                                int i36 = bVar.f10834j;
                                                if (i36 != -1) {
                                                    String strTrim3 = strArrSplit3[i36].trim();
                                                    try {
                                                        i11 = Integer.parseInt(strTrim3.trim());
                                                    } catch (NumberFormatException unused2) {
                                                    }
                                                    if (i11 != 1 && i11 != 3) {
                                                        u1.a.p("Ignoring unknown BorderStyle: " + strTrim3);
                                                        i11 = -1;
                                                    }
                                                    i10 = i11;
                                                } else {
                                                    i10 = -1;
                                                }
                                                dVar = new d(strTrim, iA, numC, numC2, f10, z, z4, z10, z11, i10);
                                            } catch (RuntimeException e10) {
                                                u1.a.q("Skipping malformed 'Style:' line: '" + strP3 + "'", e10);
                                            }
                                            if (dVar != null) {
                                                linkedHashMap.put(dVar.f10840a, dVar);
                                            }
                                        }
                                        dVar = null;
                                        if (dVar != null) {
                                        }
                                    }
                                }
                                i12 = 6;
                                i13 = 7;
                                i15 = 8;
                            }
                        }
                    }
                    this.f10822d = linkedHashMap;
                } else if ("[V4 Styles]".equalsIgnoreCase(strP)) {
                    u1.a.j("[V4 Styles] are not supported");
                } else if ("[Events]".equalsIgnoreCase(strP)) {
                    return;
                }
                i12 = 6;
                i13 = 7;
                i14 = 2;
                c7 = 0;
                i15 = 8;
            }
        }
    }

    @Override // i3.j
    public final /* synthetic */ i3.d e(int i10, int i11, byte[] bArr) {
        return g.b.a(this, bArr, i11);
    }

    @Override // i3.j
    public final /* synthetic */ void reset() {
    }
}

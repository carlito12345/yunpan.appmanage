package r3;

import a9.o;
import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import j$.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import u1.f0;
import u1.q;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f13706a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*+)?$");

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f13707b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c, reason: collision with root package name */
    public static final Map f13708c;

    /* renamed from: d, reason: collision with root package name */
    public static final Map f13709d;

    static {
        HashMap map = new HashMap();
        map.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f13708c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f13709d = Collections.unmodifiableMap(map2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(String str, e eVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        int i10;
        int length;
        int i11;
        int i12;
        i10 = eVar.f13690b;
        length = spannableStringBuilder.length();
        String str2 = eVar.f13689a;
        str2.getClass();
        i11 = -1;
        switch (str2) {
            case "":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i10, length, 33);
                break;
            case "c":
                for (String str3 : eVar.f13692d) {
                    Map map = f13708c;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i10, length, 33);
                    } else {
                        Map map2 = f13709d;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i10, length, 33);
                        }
                    }
                }
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i10, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
                break;
            case "v":
                spannableStringBuilder.setSpan(new t1.i(eVar.f13691c), i10, length, 33);
                break;
            case "ruby":
                int iC = c(list2, str, eVar);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                Collections.sort(arrayList, d.f13686c);
                int i13 = eVar.f13690b;
                int i14 = 0;
                int length2 = 0;
                while (i14 < arrayList.size()) {
                    if ("rt".equals(((d) arrayList.get(i14)).f13687a.f13689a)) {
                        d dVar = (d) arrayList.get(i14);
                        int iC2 = c(list2, str, dVar.f13687a);
                        if (iC2 == i11) {
                            iC2 = iC != i11 ? iC : 1;
                        }
                        int i15 = dVar.f13687a.f13690b - length2;
                        int i16 = dVar.f13688b - length2;
                        CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i15, i16);
                        spannableStringBuilder.delete(i15, i16);
                        spannableStringBuilder.setSpan(new t1.g(charSequenceSubSequence.toString(), iC2), i13, i15, 33);
                        length2 = charSequenceSubSequence.length() + length2;
                        i13 = i15;
                    }
                    i14++;
                    i11 = -1;
                }
                break;
            default:
                return;
        }
        ArrayList arrayListB = b(list2, str, eVar);
        for (int i17 = 0; i17 < arrayListB.size(); i17++) {
            b bVar = ((f) arrayListB.get(i17)).f13694b;
            int i18 = bVar.l;
            if (i18 == -1 && bVar.f13678m == -1) {
                i12 = -1;
            } else {
                i12 = (bVar.f13678m == 1 ? (char) 2 : (char) 0) | (i18 == 1 ? (char) 1 : (char) 0);
            }
            if (i12 != -1) {
                int i19 = bVar.l;
                q4.a.a(spannableStringBuilder, new StyleSpan((i19 == -1 && bVar.f13678m == -1) ? -1 : (i19 == 1 ? 1 : 0) | (bVar.f13678m == 1 ? 2 : 0)), i10, length);
            }
            if (bVar.f13676j == 1) {
                spannableStringBuilder.setSpan(new StrikethroughSpan(), i10, length, 33);
            }
            if (bVar.f13677k == 1) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i10, length, 33);
            }
            if (bVar.f13673g) {
                if (!bVar.f13673g) {
                    throw new IllegalStateException("Font color not defined");
                }
                q4.a.a(spannableStringBuilder, new ForegroundColorSpan(bVar.f13672f), i10, length);
            }
            if (bVar.f13675i) {
                if (!bVar.f13675i) {
                    throw new IllegalStateException("Background color not defined.");
                }
                q4.a.a(spannableStringBuilder, new BackgroundColorSpan(bVar.f13674h), i10, length);
            }
            if (bVar.f13671e != null) {
                q4.a.a(spannableStringBuilder, new TypefaceSpan(bVar.f13671e), i10, length);
            }
            int i20 = bVar.f13679n;
            if (i20 == 1) {
                q4.a.a(spannableStringBuilder, new AbsoluteSizeSpan((int) bVar.f13680o, true), i10, length);
            } else if (i20 == 2) {
                q4.a.a(spannableStringBuilder, new RelativeSizeSpan(bVar.f13680o), i10, length);
            } else if (i20 == 3) {
                q4.a.a(spannableStringBuilder, new RelativeSizeSpan(bVar.f13680o / 100.0f), i10, length);
            }
            if (bVar.f13682q) {
                spannableStringBuilder.setSpan(new t1.e(), i10, length, 33);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList b(List list, String str, e eVar) {
        int size;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            b bVar = (b) list.get(i10);
            String str2 = eVar.f13689a;
            if (bVar.f13667a.isEmpty() && bVar.f13668b.isEmpty() && bVar.f13669c.isEmpty() && bVar.f13670d.isEmpty()) {
                size = TextUtils.isEmpty(str2);
            } else {
                int iA = b.a(bVar.f13670d, b.a(bVar.f13668b, b.a(bVar.f13667a, 0, 1073741824, str), 2, str2), 4, eVar.f13691c);
                if (iA != -1) {
                    size = !eVar.f13692d.containsAll(bVar.f13669c) ? 0 : iA + (bVar.f13669c.size() * 4);
                }
            }
            if (size > 0) {
                arrayList.add(new f(size, bVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static int c(List list, String str, e eVar) {
        ArrayList arrayListB = b(list, str, eVar);
        for (int i10 = 0; i10 < arrayListB.size(); i10++) {
            int i11 = ((f) arrayListB.get(i10)).f13694b.f13681p;
            if (i11 != -1) {
                return i11;
            }
        }
        return -1;
    }

    public static c d(String str, Matcher matcher, q qVar, ArrayList arrayList) {
        g gVar = new g();
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            gVar.f13695a = i.b(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            gVar.f13696b = i.b(strGroup2);
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            e(strGroup3, gVar);
            StringBuilder sb2 = new StringBuilder();
            qVar.getClass();
            String strP = qVar.p(StandardCharsets.UTF_8);
            while (!TextUtils.isEmpty(strP)) {
                if (sb2.length() > 0) {
                    sb2.append(SignParameters.NEW_LINE);
                }
                sb2.append(strP.trim());
                strP = qVar.p(StandardCharsets.UTF_8);
            }
            gVar.f13697c = f(str, sb2.toString(), arrayList);
            return new c(gVar.a().a(), gVar.f13695a, gVar.f13696b);
        } catch (IllegalArgumentException unused) {
            u1.a.p("Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void e(String str, g gVar) {
        int i10;
        String strSubstring;
        int i11;
        int i12;
        Matcher matcher = f13707b.matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            try {
                if ("line".equals(strGroup)) {
                    g(strGroup2, gVar);
                } else if ("align".equals(strGroup)) {
                    switch (strGroup2) {
                        case "center":
                        case "middle":
                            i10 = 2;
                            break;
                        case "end":
                            i10 = 3;
                            break;
                        case "left":
                            i10 = 4;
                            break;
                        case "right":
                            i10 = 5;
                            break;
                        case "start":
                            i10 = 1;
                            break;
                        default:
                            u1.a.p("Invalid alignment value: ".concat(strGroup2));
                            i10 = 2;
                            break;
                    }
                    gVar.f13698d = i10;
                } else if (RequestParameters.POSITION.equals(strGroup)) {
                    int iIndexOf = strGroup2.indexOf(44);
                    if (iIndexOf != -1) {
                        strSubstring = strGroup2.substring(iIndexOf + 1);
                        strSubstring.getClass();
                        switch (strSubstring) {
                            case "line-left":
                            case "start":
                                i11 = 0;
                                break;
                            case "center":
                            case "middle":
                                i11 = 1;
                                break;
                            case "line-right":
                            case "end":
                                i11 = 2;
                                break;
                            default:
                                u1.a.p("Invalid anchor value: ".concat(strSubstring));
                                i11 = Integer.MIN_VALUE;
                                break;
                        }
                        gVar.f13703i = i11;
                        strGroup2 = strGroup2.substring(0, iIndexOf);
                    }
                    gVar.f13702h = i.a(strGroup2);
                } else if ("size".equals(strGroup)) {
                    gVar.f13704j = i.a(strGroup2);
                } else if ("vertical".equals(strGroup)) {
                    if (strGroup2.equals("lr")) {
                        i12 = 2;
                    } else if (strGroup2.equals("rl")) {
                        i12 = 1;
                    } else {
                        u1.a.p("Invalid 'vertical' value: ".concat(strGroup2));
                        i12 = Integer.MIN_VALUE;
                    }
                    gVar.f13705k = i12;
                } else {
                    u1.a.p("Unknown cue setting " + strGroup + ":" + strGroup2);
                }
            } catch (NumberFormatException unused) {
                u1.a.p("Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:70:0x00fb. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static SpannedString f(String str, String str2, List list) {
        String strSubstring;
        String str3;
        char c7;
        int i10 = -1;
        int i11 = 2;
        int i12 = 1;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i13 = 0;
        while (true) {
            String strTrim = "";
            if (i13 >= str2.length()) {
                while (!arrayDeque.isEmpty()) {
                    a(str, (e) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
                }
                a(str, new e("", 0, "", Collections.emptySet()), Collections.emptyList(), spannableStringBuilder, list);
                return SpannedString.valueOf(spannableStringBuilder);
            }
            char cCharAt = str2.charAt(i13);
            if (cCharAt == '&') {
                i13 += i12;
                int iIndexOf = str2.indexOf(59, i13);
                int iIndexOf2 = str2.indexOf(32, i13);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    strSubstring = str2.substring(i13, iIndexOf);
                    strSubstring.getClass();
                    switch (strSubstring) {
                        case "gt":
                            spannableStringBuilder.append('>');
                            break;
                        case "lt":
                            spannableStringBuilder.append('<');
                            break;
                        case "amp":
                            spannableStringBuilder.append('&');
                            break;
                        case "nbsp":
                            spannableStringBuilder.append(' ');
                            break;
                        default:
                            u1.a.p("ignoring unsupported entity: '&" + strSubstring + ";'");
                            break;
                    }
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i13 = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i13 += i12;
            } else {
                int length = i13 + 1;
                if (length < str2.length()) {
                    boolean z = str2.charAt(length) == '/';
                    int iIndexOf3 = str2.indexOf(62, length);
                    length = iIndexOf3 == i10 ? str2.length() : iIndexOf3 + i12;
                    int i14 = length - 2;
                    boolean z4 = str2.charAt(i14) == '/';
                    int i15 = i13 + (z ? 2 : 1);
                    if (!z4) {
                        i14 = length - 1;
                    }
                    String strSubstring2 = str2.substring(i15, i14);
                    if (!strSubstring2.trim().isEmpty()) {
                        String strTrim2 = strSubstring2.trim();
                        o.k(strTrim2.isEmpty() ^ i12);
                        String str4 = f0.f15206a;
                        str3 = strTrim2.split("[ \\.]", i11)[0];
                        str3.getClass();
                        switch (str3) {
                            case "b":
                            case "c":
                            case "i":
                            case "u":
                            case "v":
                            case "rt":
                            case "lang":
                            case "ruby":
                                if (z) {
                                    while (!arrayDeque.isEmpty()) {
                                        e eVar = (e) arrayDeque.pop();
                                        a(str, eVar, arrayList, spannableStringBuilder, list);
                                        if (arrayDeque.isEmpty()) {
                                            arrayList.clear();
                                        } else {
                                            arrayList.add(new d(eVar, spannableStringBuilder.length()));
                                        }
                                        if (eVar.f13689a.equals(str3)) {
                                            break;
                                        }
                                    }
                                    break;
                                } else if (!z4) {
                                    int length2 = spannableStringBuilder.length();
                                    String strTrim3 = strSubstring2.trim();
                                    o.k(strTrim3.isEmpty() ^ i12);
                                    int iIndexOf4 = strTrim3.indexOf(" ");
                                    if (iIndexOf4 == -1) {
                                        c7 = 0;
                                    } else {
                                        strTrim = strTrim3.substring(iIndexOf4).trim();
                                        c7 = 0;
                                        strTrim3 = strTrim3.substring(0, iIndexOf4);
                                    }
                                    String[] strArrSplit = strTrim3.split("\\.", -1);
                                    String str5 = strArrSplit[c7];
                                    HashSet hashSet = new HashSet();
                                    for (int i16 = 1; i16 < strArrSplit.length; i16 += i12) {
                                        hashSet.add(strArrSplit[i16]);
                                    }
                                    arrayDeque.push(new e(str5, length2, strTrim, hashSet));
                                    break;
                                }
                                break;
                        }
                    }
                    i13 = length;
                    i10 = -1;
                }
                i13 = length;
            }
            i10 = -1;
            i11 = 2;
            i12 = 1;
        }
    }

    public static void g(String str, g gVar) {
        String strSubstring;
        int i10 = 2;
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            strSubstring = str.substring(iIndexOf + 1);
            strSubstring.getClass();
            switch (strSubstring) {
                case "center":
                case "middle":
                    i10 = 1;
                    break;
                case "end":
                    break;
                case "start":
                    i10 = 0;
                    break;
                default:
                    u1.a.p("Invalid anchor value: ".concat(strSubstring));
                    i10 = Integer.MIN_VALUE;
                    break;
            }
            gVar.f13701g = i10;
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            gVar.f13699e = i.a(str);
            gVar.f13700f = 0;
        } else {
            gVar.f13699e = Integer.parseInt(str);
            gVar.f13700f = 1;
        }
    }
}

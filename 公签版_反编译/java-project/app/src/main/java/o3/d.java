package o3;

import a9.o;
import android.text.Layout;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import i3.i;
import i3.j;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.simpleframework.xml.strategy.Name;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import ta.q;
import u1.f0;
import u7.f1;
import u7.i1;
import u7.j0;
import u7.k0;
import u7.m1;

/* loaded from: classes.dex */
public final class d implements j {

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f11536b = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f11537c = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f11538d = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: e, reason: collision with root package name */
    public static final Pattern f11539e = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: f, reason: collision with root package name */
    public static final Pattern f11540f = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f11541g = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");

    /* renamed from: h, reason: collision with root package name */
    public static final Pattern f11542h = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: i, reason: collision with root package name */
    public static final m4.c f11543i = new m4.c(1, 30.0f, 1);

    /* renamed from: a, reason: collision with root package name */
    public final XmlPullParserFactory f11544a;

    public d() throws XmlPullParserException {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.f11544a = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e7) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e7);
        }
    }

    public static f a(f fVar) {
        return fVar == null ? new f() : fVar;
    }

    public static boolean c(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    public static int d(XmlPullParser xmlPullParser) throws NumberFormatException {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return 15;
        }
        Matcher matcher = f11542h.matcher(attributeValue);
        if (!matcher.matches()) {
            u1.a.p("Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
        boolean z = true;
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i10 = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            int i11 = Integer.parseInt(strGroup2);
            if (i10 == 0 || i11 == 0) {
                z = false;
            }
            o.g("Invalid cell resolution %s %s", i10, i11, z);
            return i11;
        } catch (NumberFormatException unused) {
            u1.a.p("Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
    }

    public static void f(String str, f fVar) throws i3.f {
        Matcher matcher;
        String strGroup;
        String str2 = f0.f15206a;
        String[] strArrSplit = str.split("\\s+", -1);
        int length = strArrSplit.length;
        Pattern pattern = f11538d;
        if (length == 1) {
            matcher = pattern.matcher(str);
        } else {
            if (strArrSplit.length != 2) {
                throw new i3.f(android.support.v4.media.session.a.s(new StringBuilder("Invalid number of entries for fontSize: "), strArrSplit.length, "."));
            }
            matcher = pattern.matcher(strArrSplit[1]);
            u1.a.p("Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new i3.f(g.b.A("Invalid expression for fontSize: '", str, "'."));
        }
        strGroup = matcher.group(3);
        strGroup.getClass();
        switch (strGroup) {
            case "%":
                fVar.f11564j = 3;
                break;
            case "em":
                fVar.f11564j = 2;
                break;
            case "px":
                fVar.f11564j = 1;
                break;
            default:
                throw new i3.f(g.b.A("Invalid unit for fontSize: '", strGroup, "'."));
        }
        String strGroup2 = matcher.group(1);
        strGroup2.getClass();
        fVar.f11565k = Float.parseFloat(strGroup2);
    }

    public static m4.c g(XmlPullParser xmlPullParser) throws NumberFormatException {
        float f10;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i10 = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String str = f0.f15206a;
            o.i("frameRateMultiplier doesn't have 2 parts", attributeValue2.split(" ", -1).length == 2);
            f10 = Integer.parseInt(r2[0]) / Integer.parseInt(r2[1]);
        } else {
            f10 = 1.0f;
        }
        m4.c cVar = f11543i;
        int i11 = cVar.f10852b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i11 = Integer.parseInt(attributeValue3);
        }
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        return new m4.c(i11, i10 * f10, attributeValue4 != null ? Integer.parseInt(attributeValue4) : cVar.f10853c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:103:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x025e A[LOOP:0: B:3:0x000a->B:120:0x025e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x025d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void h(XmlPullParser xmlPullParser, HashMap map, int i10, eb.j jVar, HashMap map2, HashMap map3) throws XmlPullParserException, IOException, NumberFormatException {
        String strI;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        int i11;
        int i12;
        String strI2;
        int i13;
        e eVar;
        float f15;
        float f16;
        String strI3;
        f fVar;
        String strI4;
        f fVar2;
        String[] strArrSplit;
        int i14 = -1;
        int i15 = 0;
        while (true) {
            xmlPullParser.next();
            if (u1.a.m(xmlPullParser, "style")) {
                String strI5 = u1.a.i(xmlPullParser, "style");
                f fVarJ = j(xmlPullParser, new f());
                if (strI5 != null) {
                    String strTrim = strI5.trim();
                    if (strTrim.isEmpty()) {
                        strArrSplit = new String[i15];
                    } else {
                        String str = f0.f15206a;
                        strArrSplit = strTrim.split("\\s+", i14);
                    }
                    for (String str2 : strArrSplit) {
                        fVarJ.a((f) map.get(str2));
                    }
                }
                String str3 = fVarJ.l;
                if (str3 != null) {
                    map.put(str3, fVarJ);
                }
            } else {
                if (u1.a.m(xmlPullParser, "region")) {
                    String strI6 = u1.a.i(xmlPullParser, Name.MARK);
                    if (strI6 != null) {
                        String strI7 = u1.a.i(xmlPullParser, OSSHeaders.ORIGIN);
                        if (strI7 == null && (strI4 = u1.a.i(xmlPullParser, "style")) != null && (fVar2 = (f) map.get(strI4)) != null) {
                            strI7 = fVar2.f11572t;
                        }
                        Pattern pattern = f11541g;
                        Pattern pattern2 = f11540f;
                        if (strI7 != null) {
                            Matcher matcher = pattern2.matcher(strI7);
                            Matcher matcher2 = pattern.matcher(strI7);
                            if (matcher.matches()) {
                                try {
                                    String strGroup = matcher.group(1);
                                    strGroup.getClass();
                                    f11 = Float.parseFloat(strGroup) / 100.0f;
                                    String strGroup2 = matcher.group(2);
                                    strGroup2.getClass();
                                    f10 = Float.parseFloat(strGroup2) / 100.0f;
                                } catch (NumberFormatException unused) {
                                    u1.a.p("Ignoring region with malformed origin: ".concat(strI7));
                                }
                            } else {
                                if (!matcher2.matches()) {
                                    u1.a.p("Ignoring region with unsupported origin: ".concat(strI7));
                                } else if (jVar == null) {
                                    u1.a.p("Ignoring region with missing tts:extent: ".concat(strI7));
                                } else {
                                    try {
                                        String strGroup3 = matcher2.group(1);
                                        strGroup3.getClass();
                                        int i16 = Integer.parseInt(strGroup3);
                                        String strGroup4 = matcher2.group(2);
                                        strGroup4.getClass();
                                        float f17 = i16 / jVar.f4863a;
                                        f10 = Integer.parseInt(strGroup4) / jVar.f4864b;
                                        f11 = f17;
                                    } catch (NumberFormatException unused2) {
                                        u1.a.p("Ignoring region with malformed origin: ".concat(strI7));
                                    }
                                }
                                eVar = null;
                                if (eVar == null) {
                                    map2.put(eVar.f11545a, eVar);
                                }
                            }
                        } else {
                            f10 = 0.0f;
                            f11 = 0.0f;
                        }
                        String strI8 = u1.a.i(xmlPullParser, "extent");
                        if (strI8 == null && (strI3 = u1.a.i(xmlPullParser, "style")) != null && (fVar = (f) map.get(strI3)) != null) {
                            strI8 = fVar.f11573u;
                        }
                        if (strI8 != null) {
                            Matcher matcher3 = pattern2.matcher(strI8);
                            Matcher matcher4 = pattern.matcher(strI8);
                            if (matcher3.matches()) {
                                try {
                                    String strGroup5 = matcher3.group(1);
                                    strGroup5.getClass();
                                    f15 = Float.parseFloat(strGroup5) / 100.0f;
                                    String strGroup6 = matcher3.group(2);
                                    strGroup6.getClass();
                                    f16 = Float.parseFloat(strGroup6) / 100.0f;
                                    f12 = f15;
                                    f13 = f16;
                                } catch (NumberFormatException unused3) {
                                    q.t("Ignoring region with malformed extent: ", strI7);
                                }
                            } else {
                                if (!matcher4.matches()) {
                                    q.t("Ignoring region with unsupported extent: ", strI7);
                                } else if (jVar == null) {
                                    q.t("Ignoring region with missing tts:extent: ", strI7);
                                } else {
                                    String strGroup7 = matcher4.group(1);
                                    strGroup7.getClass();
                                    int i17 = Integer.parseInt(strGroup7);
                                    String strGroup8 = matcher4.group(2);
                                    strGroup8.getClass();
                                    float f18 = i17 / jVar.f4863a;
                                    f16 = Integer.parseInt(strGroup8) / jVar.f4864b;
                                    f15 = f18;
                                    f12 = f15;
                                    f13 = f16;
                                }
                                eVar = null;
                                if (eVar == null) {
                                }
                            }
                        } else {
                            f12 = 1.0f;
                            f13 = 1.0f;
                        }
                        String strI9 = u1.a.i(xmlPullParser, "displayAlign");
                        if (strI9 != null) {
                            String strB0 = qf.c.b0(strI9);
                            strB0.getClass();
                            if (strB0.equals("center")) {
                                float f19 = (f13 / 2.0f) + f10;
                                i12 = i10;
                                f14 = f19;
                                i11 = 1;
                                float f20 = 1.0f / i12;
                                strI2 = u1.a.i(xmlPullParser, "writingMode");
                                if (strI2 == null) {
                                }
                            } else {
                                if (strB0.equals("after")) {
                                    f14 = f10 + f13;
                                    i11 = 2;
                                } else {
                                    f14 = f10;
                                    i11 = 0;
                                }
                                i12 = i10;
                                float f202 = 1.0f / i12;
                                strI2 = u1.a.i(xmlPullParser, "writingMode");
                                if (strI2 == null) {
                                    String strB02 = qf.c.b0(strI2);
                                    strB02.getClass();
                                    switch (strB02) {
                                        case "tb":
                                        case "tblr":
                                            i13 = 2;
                                            break;
                                        case "tbrl":
                                            i13 = 1;
                                            break;
                                        default:
                                            i13 = Integer.MIN_VALUE;
                                            break;
                                    }
                                    eVar = new e(strI6, f11, f14, 0, i11, f12, f13, 1, f202, i13);
                                    if (eVar == null) {
                                    }
                                }
                            }
                        }
                    } else {
                        eVar = null;
                        if (eVar == null) {
                        }
                    }
                    if (!u1.a.k(xmlPullParser, "head")) {
                        return;
                    }
                    i14 = -1;
                    i15 = 0;
                } else {
                    if (u1.a.m(xmlPullParser, "metadata")) {
                        do {
                            xmlPullParser.next();
                            if (u1.a.m(xmlPullParser, "image") && (strI = u1.a.i(xmlPullParser, Name.MARK)) != null) {
                                map3.put(strI, xmlPullParser.nextText());
                            }
                        } while (!u1.a.k(xmlPullParser, "metadata"));
                    }
                    if (!u1.a.k(xmlPullParser, "head")) {
                    }
                }
                if (!u1.a.k(xmlPullParser, "head")) {
                }
            }
            if (!u1.a.k(xmlPullParser, "head")) {
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static c i(XmlPullParser xmlPullParser, c cVar, HashMap map, m4.c cVar2) throws i3.f, NumberFormatException {
        long j10;
        long j11;
        String attributeValue;
        String[] strArrSplit;
        int attributeCount = xmlPullParser.getAttributeCount();
        f fVarJ = j(xmlPullParser, null);
        String[] strArr = null;
        String strSubstring = null;
        String str = "";
        long jK = -9223372036854775807L;
        long jK2 = -9223372036854775807L;
        long jK3 = -9223372036854775807L;
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = xmlPullParser.getAttributeName(i10);
            attributeValue = xmlPullParser.getAttributeValue(i10);
            attributeName.getClass();
            switch (attributeName) {
                case "region":
                    if (map.containsKey(attributeValue)) {
                        str = attributeValue;
                        continue;
                    }
                case "dur":
                    jK3 = k(attributeValue, cVar2);
                    break;
                case "end":
                    jK2 = k(attributeValue, cVar2);
                    break;
                case "begin":
                    jK = k(attributeValue, cVar2);
                    break;
                case "style":
                    String strTrim = attributeValue.trim();
                    if (strTrim.isEmpty()) {
                        strArrSplit = new String[0];
                    } else {
                        String str2 = f0.f15206a;
                        strArrSplit = strTrim.split("\\s+", -1);
                    }
                    if (strArrSplit.length > 0) {
                        strArr = strArrSplit;
                        break;
                    }
                    break;
                case "backgroundImage":
                    if (attributeValue.startsWith("#")) {
                        strSubstring = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (cVar != null) {
            long j12 = cVar.f11527d;
            j10 = -9223372036854775807L;
            if (j12 != -9223372036854775807L) {
                if (jK != -9223372036854775807L) {
                    jK += j12;
                }
                if (jK2 != -9223372036854775807L) {
                    jK2 += j12;
                }
            }
        } else {
            j10 = -9223372036854775807L;
        }
        if (jK2 != j10) {
            j11 = jK2;
        } else if (jK3 != j10) {
            j11 = jK + jK3;
        } else if (cVar != null) {
            long j13 = cVar.f11528e;
            if (j13 != j10) {
                j11 = j13;
            }
        }
        return new c(xmlPullParser.getName(), null, jK, j11, fVarJ, strArr, str, strSubstring, cVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:75:0x0107. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02ec  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0505  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0120  */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r11v68, types: [o3.b] */
    /* JADX WARN: Type inference failed for: r11v79 */
    /* JADX WARN: Type inference failed for: r12v15, types: [o3.b] */
    /* JADX WARN: Type inference failed for: r12v23, types: [o3.b] */
    /* JADX WARN: Type inference failed for: r1v53, types: [o3.b] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static f j(XmlPullParser xmlPullParser, f fVar) {
        String attributeValue;
        Layout.Alignment bVar;
        String str;
        int i10;
        char c7;
        i1 i1VarK;
        int iHashCode;
        char c10;
        Layout.Alignment bVar2;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        String str2 = "after";
        int attributeCount = xmlPullParser.getAttributeCount();
        ?? r11 = 0;
        f fVarA = fVar;
        int i11 = 0;
        while (i11 < attributeCount) {
            attributeValue = xmlPullParser2.getAttributeValue(i11);
            String attributeName = xmlPullParser2.getAttributeName(i11);
            attributeName.getClass();
            bVar = null;
            switch (attributeName) {
                case "fontStyle":
                    str = str2;
                    fVarA = a(fVarA);
                    fVarA.f11563i = "italic".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    i10 = 1;
                    break;
                case "extent":
                    str = str2;
                    fVarA = a(fVarA);
                    fVarA.f11573u = attributeValue;
                    i10 = 1;
                    break;
                case "fontFamily":
                    str = str2;
                    fVarA = a(fVarA);
                    fVarA.f11555a = attributeValue;
                    i10 = 1;
                    break;
                case "textAlign":
                    str = str2;
                    fVarA = a(fVarA);
                    String strB0 = qf.c.b0(attributeValue);
                    strB0.getClass();
                    switch (strB0) {
                        case "center":
                            bVar = Layout.Alignment.ALIGN_CENTER;
                            break;
                        case "end":
                        case "right":
                            bVar = Layout.Alignment.ALIGN_OPPOSITE;
                            break;
                        case "left":
                        case "start":
                            bVar = Layout.Alignment.ALIGN_NORMAL;
                            break;
                    }
                    fVarA.f11568o = bVar;
                    i10 = 1;
                    break;
                case "origin":
                    str = str2;
                    fVarA = a(fVarA);
                    fVarA.f11572t = attributeValue;
                    i10 = 1;
                    break;
                case "textDecoration":
                    str = str2;
                    String strB02 = qf.c.b0(attributeValue);
                    strB02.getClass();
                    switch (strB02) {
                        case "nounderline":
                            fVarA = a(fVarA);
                            fVarA.f11561g = 0;
                            break;
                        case "underline":
                            fVarA = a(fVarA);
                            fVarA.f11561g = 1;
                            break;
                        case "nolinethrough":
                            fVarA = a(fVarA);
                            fVarA.f11560f = 0;
                            break;
                        case "linethrough":
                            fVarA = a(fVarA);
                            fVarA.f11560f = 1;
                    }
                    i10 = 1;
                    break;
                case "fontWeight":
                    str = str2;
                    fVarA = a(fVarA);
                    fVarA.f11562h = "bold".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    i10 = 1;
                    break;
                case "id":
                    str = str2;
                    if ("style".equals(xmlPullParser.getName())) {
                        fVarA = a(fVarA);
                        fVarA.l = attributeValue;
                    }
                    i10 = 1;
                    break;
                case "ruby":
                    str = str2;
                    String strB03 = qf.c.b0(attributeValue);
                    strB03.getClass();
                    switch (strB03) {
                        case "baseContainer":
                        case "base":
                            fVarA = a(fVarA);
                            fVarA.f11566m = 2;
                            break;
                        case "container":
                            fVarA = a(fVarA);
                            fVarA.f11566m = 1;
                            break;
                        case "delimiter":
                            fVarA = a(fVarA);
                            fVarA.f11566m = 4;
                            break;
                        case "textContainer":
                        case "text":
                            fVarA = a(fVarA);
                            fVarA.f11566m = 3;
                            break;
                    }
                    i10 = 1;
                    break;
                case "color":
                    str = str2;
                    fVarA = a(fVarA);
                    try {
                        fVarA.f11556b = u1.d.a(attributeValue, false);
                        fVarA.f11557c = true;
                    } catch (IllegalArgumentException unused) {
                        q.t("Failed parsing color value: ", attributeValue);
                    }
                    i10 = 1;
                    break;
                case "shear":
                    str = str2;
                    f fVarA2 = a(fVarA);
                    Matcher matcher = f11539e.matcher(attributeValue);
                    float fMin = Float.MAX_VALUE;
                    if (matcher.matches()) {
                        try {
                            String strGroup = matcher.group(1);
                            strGroup.getClass();
                            fMin = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(strGroup)));
                        } catch (NumberFormatException e7) {
                            u1.a.q("Failed to parse shear: " + attributeValue, e7);
                        }
                    } else {
                        q.t("Invalid value for shear: ", attributeValue);
                    }
                    fVarA2.f11571s = fMin;
                    fVarA = fVarA2;
                    i10 = 1;
                    break;
                case "textCombine":
                    str = str2;
                    String strB04 = qf.c.b0(attributeValue);
                    strB04.getClass();
                    if (strB04.equals("all")) {
                        fVarA = a(fVarA);
                        fVarA.f11570q = 1;
                    } else if (strB04.equals("none")) {
                        fVarA = a(fVarA);
                        fVarA.f11570q = 0;
                    }
                    i10 = 1;
                    break;
                case "fontSize":
                    str = str2;
                    try {
                        fVarA = a(fVarA);
                        f(attributeValue, fVarA);
                    } catch (i3.f unused2) {
                        q.t("Failed parsing fontSize value: ", attributeValue);
                    }
                    i10 = 1;
                    break;
                case "textEmphasis":
                    fVarA = a(fVarA);
                    Pattern pattern = b.f11516d;
                    if (attributeValue == null) {
                        str = str2;
                        fVarA.r = bVar;
                        i10 = 1;
                        break;
                    } else {
                        String strB05 = qf.c.b0(attributeValue.trim());
                        if (!strB05.isEmpty()) {
                            String[] strArrSplit = TextUtils.split(strB05, b.f11516d);
                            int length = strArrSplit.length;
                            j0 j0VarJ = length != 0 ? length != 1 ? j0.j(strArrSplit.length, (Object[]) strArrSplit.clone()) : new m1(strArrSplit[r11]) : f1.f15464j;
                            k0 k0Var = new k0(u7.q.k(b.f11520h, j0VarJ));
                            String str3 = (String) (k0Var.hasNext() ? k0Var.next() : "outside");
                            int iHashCode2 = str3.hashCode();
                            if (iHashCode2 == -1392885889) {
                                if (str3.equals("before")) {
                                    c7 = 2;
                                }
                                if (c7 != 0) {
                                }
                                i1VarK = u7.q.k(b.f11517e, j0VarJ);
                                if (i1VarK.isEmpty()) {
                                }
                                bVar = bVar2;
                            } else if (iHashCode2 != -1106037339) {
                                c7 = (iHashCode2 == 92734940 && str3.equals(str2)) ? (char) 0 : (char) 65535;
                                int i12 = c7 != 0 ? c7 != 1 ? 1 : -2 : 2;
                                i1VarK = u7.q.k(b.f11517e, j0VarJ);
                                if (i1VarK.isEmpty()) {
                                    i1 i1VarK2 = u7.q.k(b.f11519g, j0VarJ);
                                    i1 i1VarK3 = u7.q.k(b.f11518f, j0VarJ);
                                    if (i1VarK2.isEmpty() && i1VarK3.isEmpty()) {
                                        str = str2;
                                        bVar = new b(-1, 0, i12);
                                    } else {
                                        k0 k0Var2 = new k0(i1VarK2);
                                        String str4 = (String) (k0Var2.hasNext() ? k0Var2.next() : "filled");
                                        int iHashCode3 = str4.hashCode();
                                        str = str2;
                                        if (iHashCode3 != -1274499742) {
                                            int i13 = (iHashCode3 == 3417674 && str4.equals("open")) ? 2 : 1;
                                            k0 k0Var3 = new k0(i1VarK3);
                                            String str5 = (String) (!k0Var3.hasNext() ? k0Var3.next() : "circle");
                                            iHashCode = str5.hashCode();
                                            if (iHashCode != -1360216880) {
                                                if (str5.equals("circle")) {
                                                    c10 = 2;
                                                }
                                                bVar2 = new b(c10 != 0 ? c10 != 1 ? 1 : 3 : 2, i13, i12);
                                            } else if (iHashCode != -905816648) {
                                                c10 = (iHashCode == 99657 && str5.equals("dot")) ? (char) 0 : (char) 65535;
                                                bVar2 = new b(c10 != 0 ? c10 != 1 ? 1 : 3 : 2, i13, i12);
                                            } else {
                                                if (str5.equals("sesame")) {
                                                    c10 = 1;
                                                }
                                                bVar2 = new b(c10 != 0 ? c10 != 1 ? 1 : 3 : 2, i13, i12);
                                            }
                                        } else {
                                            str4.equals("filled");
                                        }
                                        k0 k0Var32 = new k0(i1VarK3);
                                        String str52 = (String) (!k0Var32.hasNext() ? k0Var32.next() : "circle");
                                        iHashCode = str52.hashCode();
                                        if (iHashCode != -1360216880) {
                                        }
                                    }
                                } else {
                                    String str6 = (String) new k0(i1VarK).next();
                                    int iHashCode4 = str6.hashCode();
                                    if (iHashCode4 != 3005871) {
                                        int i14 = (iHashCode4 == 3387192 && str6.equals("none")) ? 0 : -1;
                                        str = str2;
                                        bVar2 = new b(i14, 0, i12);
                                    } else {
                                        str6.equals("auto");
                                    }
                                    str = str2;
                                    bVar2 = new b(i14, 0, i12);
                                }
                                bVar = bVar2;
                            } else {
                                if (str3.equals("outside")) {
                                    c7 = 1;
                                }
                                if (c7 != 0) {
                                }
                                i1VarK = u7.q.k(b.f11517e, j0VarJ);
                                if (i1VarK.isEmpty()) {
                                }
                                bVar = bVar2;
                            }
                        }
                        fVarA.r = bVar;
                        i10 = 1;
                    }
                    break;
                case "rubyPosition":
                    String strB06 = qf.c.b0(attributeValue);
                    strB06.getClass();
                    if (strB06.equals("before")) {
                        fVarA = a(fVarA);
                        fVarA.f11567n = 1;
                    } else if (strB06.equals(str2)) {
                        fVarA = a(fVarA);
                        fVarA.f11567n = 2;
                    }
                    str = str2;
                    i10 = 1;
                    break;
                case "backgroundColor":
                    fVarA = a(fVarA);
                    try {
                        fVarA.f11558d = u1.d.a(attributeValue, r11);
                        fVarA.f11559e = true;
                    } catch (IllegalArgumentException unused3) {
                        q.t("Failed parsing background value: ", attributeValue);
                    }
                    str = str2;
                    i10 = 1;
                    break;
                case "multiRowAlign":
                    fVarA = a(fVarA);
                    String strB07 = qf.c.b0(attributeValue);
                    strB07.getClass();
                    switch (strB07) {
                        case "center":
                            bVar = Layout.Alignment.ALIGN_CENTER;
                            break;
                        case "end":
                        case "right":
                            bVar = Layout.Alignment.ALIGN_OPPOSITE;
                            break;
                        case "left":
                        case "start":
                            bVar = Layout.Alignment.ALIGN_NORMAL;
                            break;
                    }
                    fVarA.f11569p = bVar;
                    str = str2;
                    i10 = 1;
                    break;
                default:
                    str = str2;
                    i10 = 1;
                    break;
            }
            i11 += i10;
            xmlPullParser2 = xmlPullParser;
            str2 = str;
            r11 = 0;
        }
        return fVarA;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long k(String str, m4.c cVar) throws i3.f, NumberFormatException {
        double d10;
        double d11;
        char c7 = 4;
        Matcher matcher = f11536b.matcher(str);
        if (matcher.matches()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            double d12 = Long.parseLong(strGroup) * 3600;
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            double d13 = Long.parseLong(strGroup2) * 60;
            Double.isNaN(d12);
            Double.isNaN(d13);
            double d14 = d12 + d13;
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            double d15 = Long.parseLong(strGroup3);
            Double.isNaN(d15);
            double d16 = d14 + d15;
            String strGroup4 = matcher.group(4);
            double d17 = 0.0d;
            double d18 = d16 + (strGroup4 != null ? Double.parseDouble(strGroup4) : 0.0d) + (matcher.group(5) != null ? Long.parseLong(r13) / cVar.f10851a : 0.0d);
            String strGroup5 = matcher.group(6);
            if (strGroup5 != null) {
                double d19 = Long.parseLong(strGroup5);
                double d20 = cVar.f10852b;
                Double.isNaN(d19);
                Double.isNaN(d20);
                double d21 = cVar.f10851a;
                Double.isNaN(d21);
                d17 = (d19 / d20) / d21;
            }
            return (long) ((d18 + d17) * 1000000.0d);
        }
        Matcher matcher2 = f11537c.matcher(str);
        if (!matcher2.matches()) {
            throw new i3.f(da.b.c("Malformed time expression: ", str));
        }
        String strGroup6 = matcher2.group(1);
        strGroup6.getClass();
        double d22 = Double.parseDouble(strGroup6);
        String strGroup7 = matcher2.group(2);
        strGroup7.getClass();
        switch (strGroup7.hashCode()) {
            case 102:
                if (!strGroup7.equals("f")) {
                    c7 = 65535;
                    break;
                } else {
                    c7 = 0;
                    break;
                }
            case 104:
                if (strGroup7.equals("h")) {
                    c7 = 1;
                    break;
                }
                break;
            case 109:
                if (strGroup7.equals("m")) {
                    c7 = 2;
                    break;
                }
                break;
            case 116:
                if (strGroup7.equals("t")) {
                    c7 = 3;
                    break;
                }
                break;
            case 3494:
                if (!strGroup7.equals("ms")) {
                }
                break;
        }
        switch (c7) {
            case 0:
                d10 = cVar.f10851a;
                Double.isNaN(d10);
                d22 /= d10;
                return (long) (d22 * 1000000.0d);
            case 1:
                d11 = 3600.0d;
                break;
            case 2:
                d11 = 60.0d;
                break;
            case 3:
                d10 = cVar.f10853c;
                Double.isNaN(d10);
                d22 /= d10;
                return (long) (d22 * 1000000.0d);
            case 4:
                d10 = 1000.0d;
                d22 /= d10;
                return (long) (d22 * 1000000.0d);
            default:
                return (long) (d22 * 1000000.0d);
        }
        d22 *= d11;
        return (long) (d22 * 1000000.0d);
    }

    public static eb.j l(XmlPullParser xmlPullParser) throws NumberFormatException {
        String strI = u1.a.i(xmlPullParser, "extent");
        if (strI == null) {
            return null;
        }
        Matcher matcher = f11541g.matcher(strI);
        if (!matcher.matches()) {
            u1.a.p("Ignoring non-pixel tts extent: ".concat(strI));
            return null;
        }
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i10 = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            return new eb.j(i10, Integer.parseInt(strGroup2));
        } catch (NumberFormatException unused) {
            u1.a.p("Ignoring malformed tts extent: ".concat(strI));
            return null;
        }
    }

    @Override // i3.j
    public final void b(byte[] bArr, int i10, int i11, i iVar, u1.f fVar) {
        q4.a.c0(e(i10, i11, bArr), iVar, fVar);
    }

    @Override // i3.j
    public final i3.d e(int i10, int i11, byte[] bArr) throws XmlPullParserException, NumberFormatException, IOException {
        m4.c cVar;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f11544a.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new e("", -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
            eb.j jVarL = null;
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, i10, i11), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            m4.c cVarG = f11543i;
            int iD = 15;
            kf.b bVar = null;
            int i12 = 0;
            for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.getEventType()) {
                c cVar2 = (c) arrayDeque.peek();
                if (i12 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            cVarG = g(xmlPullParserNewPullParser);
                            iD = d(xmlPullParserNewPullParser);
                            jVarL = l(xmlPullParserNewPullParser);
                        }
                        eb.j jVar = jVarL;
                        m4.c cVar3 = cVarG;
                        int i13 = iD;
                        if (c(name)) {
                            if ("head".equals(name)) {
                                cVar = cVar3;
                                h(xmlPullParserNewPullParser, map, i13, jVar, map2, map3);
                            } else {
                                cVar = cVar3;
                                try {
                                    c cVarI = i(xmlPullParserNewPullParser, cVar2, map2, cVar);
                                    arrayDeque.push(cVarI);
                                    if (cVar2 != null) {
                                        if (cVar2.f11535m == null) {
                                            cVar2.f11535m = new ArrayList();
                                        }
                                        cVar2.f11535m.add(cVarI);
                                    }
                                } catch (i3.f e7) {
                                    u1.a.q("Suppressing parser error", e7);
                                    i12++;
                                }
                            }
                            cVarG = cVar;
                        } else {
                            u1.a.j("Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            i12++;
                            cVarG = cVar3;
                        }
                        jVarL = jVar;
                        iD = i13;
                    } else if (eventType == 4) {
                        cVar2.getClass();
                        c cVarA = c.a(xmlPullParserNewPullParser.getText());
                        if (cVar2.f11535m == null) {
                            cVar2.f11535m = new ArrayList();
                        }
                        cVar2.f11535m.add(cVarA);
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals("tt")) {
                            c cVar4 = (c) arrayDeque.peek();
                            cVar4.getClass();
                            bVar = new kf.b(cVar4, map, map2, map3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i12++;
                } else if (eventType == 3) {
                    i12--;
                }
                xmlPullParserNewPullParser.next();
            }
            bVar.getClass();
            return bVar;
        } catch (IOException e10) {
            throw new IllegalStateException("Unexpected error when reading input.", e10);
        } catch (XmlPullParserException e11) {
            throw new IllegalStateException("Unable to decode source", e11);
        }
    }

    @Override // i3.j
    public final /* synthetic */ void reset() {
    }
}

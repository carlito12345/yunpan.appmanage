package t2;

import androidx.recyclerview.widget.h;
import java.io.IOException;
import java.io.StringReader;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import r1.f0;
import u7.a0;
import u7.e0;
import u7.g0;
import u7.q;
import u7.y0;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f14713a = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f14714b = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f14715c = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    public static h a(String str) throws XmlPullParserException, IOException, NumberFormatException {
        long j10;
        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
        xmlPullParserNewPullParser.setInput(new StringReader(str));
        xmlPullParserNewPullParser.next();
        if (!u1.a.m(xmlPullParserNewPullParser, "x:xmpmeta")) {
            throw f0.a(null, "Couldn't find xmp metadata");
        }
        e0 e0Var = g0.f15471b;
        y0 y0VarB = y0.f15549e;
        long j11 = -9223372036854775807L;
        loop0: do {
            xmlPullParserNewPullParser.next();
            if (u1.a.m(xmlPullParserNewPullParser, "rdf:Description")) {
                String[] strArr = f14713a;
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (i11 >= 4) {
                        break loop0;
                    }
                    String strI = u1.a.i(xmlPullParserNewPullParser, strArr[i11]);
                    if (strI == null) {
                        i11++;
                    } else if (Integer.parseInt(strI) == 1) {
                        String[] strArr2 = f14714b;
                        int i12 = 0;
                        while (true) {
                            if (i12 >= 4) {
                                break;
                            }
                            String strI2 = u1.a.i(xmlPullParserNewPullParser, strArr2[i12]);
                            if (strI2 != null) {
                                j10 = Long.parseLong(strI2);
                                if (j10 == -1) {
                                    break;
                                }
                            } else {
                                i12++;
                            }
                        }
                        j10 = -9223372036854775807L;
                        String[] strArr3 = f14715c;
                        while (true) {
                            if (i10 >= 2) {
                                e0 e0Var2 = g0.f15471b;
                                y0VarB = y0.f15549e;
                                break;
                            }
                            String strI3 = u1.a.i(xmlPullParserNewPullParser, strArr3[i10]);
                            if (strI3 != null) {
                                y0VarB = g0.s(new b("image/jpeg", 0L, 0L), new b("video/mp4", Long.parseLong(strI3), 0L));
                                break;
                            }
                            i10++;
                        }
                        j11 = j10;
                    }
                }
                return null;
            }
            if (u1.a.m(xmlPullParserNewPullParser, "Container:Directory")) {
                y0VarB = b(xmlPullParserNewPullParser, "Container", "Item");
            } else if (u1.a.m(xmlPullParserNewPullParser, "GContainer:Directory")) {
                y0VarB = b(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
            }
        } while (!u1.a.k(xmlPullParserNewPullParser, "x:xmpmeta"));
        if (y0VarB.isEmpty()) {
            return null;
        }
        return new h(4, j11, y0VarB);
    }

    public static y0 b(XmlPullParser xmlPullParser, String str, String str2) throws XmlPullParserException, IOException {
        e0 e0Var = g0.f15471b;
        q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        String strConcat = str.concat(":Item");
        String strConcat2 = str.concat(":Directory");
        int i10 = 0;
        do {
            xmlPullParser.next();
            if (u1.a.m(xmlPullParser, strConcat)) {
                String strConcat3 = str2.concat(":Mime");
                String strConcat4 = str2.concat(":Semantic");
                String strConcat5 = str2.concat(":Length");
                String strConcat6 = str2.concat(":Padding");
                String strI = u1.a.i(xmlPullParser, strConcat3);
                String strI2 = u1.a.i(xmlPullParser, strConcat4);
                String strI3 = u1.a.i(xmlPullParser, strConcat5);
                String strI4 = u1.a.i(xmlPullParser, strConcat6);
                if (strI == null || strI2 == null) {
                    return y0.f15549e;
                }
                b bVar = new b(strI, strI3 != null ? Long.parseLong(strI3) : 0L, strI4 != null ? Long.parseLong(strI4) : 0L);
                int i11 = i10 + 1;
                int iF = a0.f(objArrCopyOf.length, i11);
                if (iF > objArrCopyOf.length) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
                }
                objArrCopyOf[i10] = bVar;
                i10 = i11;
            }
        } while (!u1.a.k(xmlPullParser, strConcat2));
        return g0.i(i10, objArrCopyOf);
    }
}

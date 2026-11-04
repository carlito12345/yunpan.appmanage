package oh;

import a2.n;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.stream.Collector;
import java.net.URL;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.regex.Pattern;
import jg.o;

/* loaded from: classes3.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f11806a = {"", " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};

    /* renamed from: b, reason: collision with root package name */
    public static final Pattern f11807b = Pattern.compile("^/(?>(?>\\.\\.?/)+)");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f11808c = Pattern.compile("^[a-zA-Z][a-zA-Z0-9+-.]*:");

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f11809d = Pattern.compile("[\\x00-\\x1f]*");

    /* renamed from: e, reason: collision with root package name */
    public static final kf.d f11810e = new kf.d(new ah.a(3));

    public static void a(StringBuilder sb2, String str, boolean z) {
        int length = str.length();
        int iCharCount = 0;
        boolean z4 = false;
        boolean z10 = false;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt == 32 || iCodePointAt == 9 || iCodePointAt == 10 || iCodePointAt == 12 || iCodePointAt == 13 || iCodePointAt == 160) {
                if ((!z || z4) && !z10) {
                    sb2.append(' ');
                    z10 = true;
                }
            } else if (iCodePointAt != 8203 && iCodePointAt != 173) {
                sb2.appendCodePoint(iCodePointAt);
                z4 = true;
                z10 = false;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
    }

    public static StringBuilder b() {
        return (StringBuilder) f11810e.o();
    }

    public static boolean c(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean d(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }

    public static boolean e(char c7) {
        return (c7 >= 'a' && c7 <= 'z') || (c7 >= 'A' && c7 <= 'Z');
    }

    public static boolean f(String str) {
        if (str != null && str.length() != 0) {
            int length = str.length();
            for (int i10 = 0; i10 < length; i10++) {
                if (!i(str.codePointAt(i10))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean g(char c7) {
        return c7 >= '0' && c7 <= '9';
    }

    public static boolean h(char c7) {
        return g(c7) || (c7 >= 'a' && c7 <= 'f') || (c7 >= 'A' && c7 <= 'F');
    }

    public static boolean i(int i10) {
        return i10 == 32 || i10 == 9 || i10 == 10 || i10 == 12 || i10 == 13;
    }

    public static String j(String str, List list) {
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            return "";
        }
        String string = it.next().toString();
        if (!it.hasNext()) {
            return string;
        }
        StringBuilder sbB = b();
        nh.b.d0(sbB);
        sbB.append((Object) string);
        while (it.hasNext()) {
            Object next = it.next();
            sbB.append(str);
            sbB.append(next);
        }
        return l(sbB);
    }

    public static Collector k(String str) {
        return Collector.CC.of(new o(2, str), new BiConsumer() { // from class: oh.c
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                e eVar = (e) obj;
                CharSequence charSequence = (CharSequence) obj2;
                nh.b.d0(eVar.f11803a);
                if (!eVar.f11805c) {
                    eVar.f11803a.append(eVar.f11804b);
                }
                eVar.f11803a.append((Object) charSequence);
                eVar.f11805c = false;
            }

            public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        }, new BinaryOperator() { // from class: oh.d
            public final /* synthetic */ BiFunction andThen(Function function) {
                return BiFunction$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                e eVar = (e) obj;
                e eVar2 = (e) obj2;
                String strL = f.l(eVar2.f11803a);
                eVar2.f11803a = null;
                nh.b.d0(eVar.f11803a);
                eVar.f11803a.append((Object) strL);
                return eVar;
            }
        }, new n(4), new Collector.Characteristics[0]);
    }

    public static String l(StringBuilder sb2) {
        nh.b.d0(sb2);
        String string = sb2.toString();
        if (sb2.length() <= 8192) {
            sb2.delete(0, sb2.length());
            f11810e.N(sb2);
        }
        return string;
    }

    public static URL m(String str, URL url) {
        String strReplaceAll = f11809d.matcher(str).replaceAll("");
        if (strReplaceAll.startsWith("?")) {
            strReplaceAll = url.getPath() + strReplaceAll;
        }
        URL url2 = new URL(url, strReplaceAll);
        String strReplaceFirst = f11807b.matcher(url2.getFile()).replaceFirst("/");
        if (url2.getRef() != null) {
            StringBuilder sbB = d0.f.b(strReplaceFirst, "#");
            sbB.append(url2.getRef());
            strReplaceFirst = sbB.toString();
        }
        return new URL(url2.getProtocol(), url2.getHost(), url2.getPort(), strReplaceFirst);
    }
}

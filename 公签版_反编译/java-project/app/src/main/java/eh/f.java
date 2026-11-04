package eh;

import java.io.File;
import java.text.ParseException;

/* loaded from: classes.dex */
public final class f extends b {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f4991e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(dh.f fVar, int i10) {
        super("([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)");
        this.f4991e = i10;
        switch (i10) {
            case 1:
                super("(d|-){1}\\s+\\[([-A-Z]+)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)");
                a(fVar);
                break;
            case 2:
                super("\\s*([0-9]+)\\s*(\\s+|[A-Z]+)\\s*(DIR|\\s+)\\s*(\\S+)\\s+(\\S+)\\s+(\\S.*)");
                a(fVar);
                break;
            case 3:
                super("(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+((\\S+\\s*)+)?");
                a(fVar);
                break;
            default:
                a(fVar);
                break;
        }
    }

    public static boolean i(String str) {
        return str == null || str.isEmpty();
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b2, code lost:
    
        if (r6.toUpperCase(java.util.Locale.ROOT).endsWith(".SAVF") != false) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0250  */
    @Override // dh.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dh.g b(String str) throws NumberFormatException {
        int i10;
        boolean z;
        String str2;
        boolean z4;
        int iLastIndexOf;
        switch (this.f4991e) {
            case 0:
                dh.g gVar = new dh.g();
                gVar.f4666c = str;
                if (!h(str)) {
                    return null;
                }
                String strG = g(1);
                String strG2 = g(20);
                String str3 = g(21) + " " + g(22);
                String strG3 = g(23);
                String strG4 = g(24);
                try {
                    gVar.f4668e = this.f4981d.d(str3);
                } catch (ParseException unused) {
                }
                char cCharAt = strG.charAt(0);
                if (cCharAt == '-') {
                    i10 = 0;
                    z = false;
                } else if (cCharAt != 'l') {
                    switch (cCharAt) {
                        case 'b':
                        case 'c':
                            i10 = 0;
                            z = true;
                            break;
                        case 'd':
                            i10 = 1;
                            z = false;
                            break;
                        case 'e':
                            i10 = 2;
                            z = false;
                            break;
                        case 'f':
                            break;
                        default:
                            i10 = 3;
                            z = false;
                            break;
                    }
                }
                gVar.f4664a = i10;
                int i11 = 0;
                int i12 = 4;
                while (i11 < 3) {
                    gVar.b(i11, 0, !g(i12).equals("-"));
                    gVar.b(i11, 1, !g(i12 + 1).equals("-"));
                    String strG5 = g(i12 + 2);
                    gVar.b(i11, 2, (strG5.equals("-") || Character.isUpperCase(strG5.charAt(0))) ? false : true);
                    i11++;
                    i12 += 4;
                }
                if (!z) {
                    try {
                        Integer.parseInt("0");
                    } catch (NumberFormatException unused2) {
                    }
                }
                try {
                    gVar.f4665b = Long.parseLong(strG2);
                } catch (NumberFormatException unused3) {
                }
                if (strG4 == null) {
                    gVar.f4667d = strG3;
                    return gVar;
                }
                String strJ = g.b.j(strG3, strG4);
                if (i10 != 2) {
                    gVar.f4667d = strJ;
                    return gVar;
                }
                int iIndexOf = strJ.indexOf(" -> ");
                if (iIndexOf == -1) {
                    gVar.f4667d = strJ;
                    return gVar;
                }
                gVar.f4667d = strJ.substring(0, iIndexOf);
                strJ.substring(iIndexOf + 4);
                return gVar;
            case 1:
                dh.g gVar2 = new dh.g();
                if (!h(str)) {
                    return null;
                }
                String strG6 = g(1);
                String strG7 = g(2);
                g(3);
                String strG8 = g(4);
                String strG9 = g(5);
                String strG10 = g(9);
                try {
                    gVar2.f4668e = this.f4981d.d(strG9);
                } catch (ParseException unused4) {
                }
                if (strG6.trim().equals("d")) {
                    gVar2.f4664a = 1;
                } else {
                    gVar2.f4664a = 0;
                }
                gVar2.f4667d = strG10.trim();
                gVar2.f4665b = Long.parseLong(strG8.trim());
                if (strG7.indexOf(82) != -1) {
                    gVar2.b(0, 0, true);
                }
                if (strG7.indexOf(87) == -1) {
                    return gVar2;
                }
                gVar2.b(0, 1, true);
                return gVar2;
            case 2:
                dh.g gVar3 = new dh.g();
                if (!h(str)) {
                    return null;
                }
                String strG11 = g(1);
                String strG12 = g(2);
                String strG13 = g(3);
                String str4 = g(4) + " " + g(5);
                String strG14 = g(6);
                try {
                    gVar3.f4668e = this.f4981d.d(str4);
                } catch (ParseException unused5) {
                }
                if (strG13.trim().equals("DIR") || strG12.trim().equals("DIR")) {
                    gVar3.f4664a = 1;
                } else {
                    gVar3.f4664a = 0;
                }
                gVar3.f4667d = strG14.trim();
                gVar3.f4665b = Long.parseLong(strG11.trim());
                return gVar3;
            default:
                dh.g gVar4 = new dh.g();
                gVar4.f4666c = str;
                if (h(str)) {
                    g(1);
                    String strG15 = g(2);
                    int i13 = 3;
                    if (i(g(3)) && i(g(4))) {
                        str2 = "";
                    } else {
                        str2 = g(3) + " " + g(4);
                    }
                    String strG16 = g(5);
                    String strG17 = g(6);
                    try {
                        gVar4.f4668e = this.f4981d.d(str2);
                    } catch (ParseException unused6) {
                    }
                    if (strG16.equalsIgnoreCase("*STMF")) {
                        if (!i(strG15) && !i(strG17)) {
                            z4 = true;
                            i13 = 0;
                        }
                    } else if (!strG16.equalsIgnoreCase("*DIR")) {
                        if (strG16.equalsIgnoreCase("*FILE")) {
                            if (strG17 != null) {
                                break;
                            }
                        } else if (!strG16.equalsIgnoreCase("*MEM")) {
                            z4 = true;
                        } else if (!i(strG17) && i(strG15) && i(str2)) {
                            strG17 = strG17.replace('/', File.separatorChar);
                            z4 = false;
                        }
                        i13 = 0;
                    } else if (!i(strG15) && !i(strG17)) {
                        z4 = true;
                        i13 = 1;
                    }
                    gVar4.f4664a = i13;
                    try {
                        gVar4.f4665b = Long.parseLong(strG15);
                    } catch (NumberFormatException unused7) {
                    }
                    if (strG17.endsWith("/")) {
                        strG17 = android.support.v4.media.session.a.l(1, 0, strG17);
                    }
                    if (z4 && (iLastIndexOf = strG17.lastIndexOf(47)) > -1) {
                        strG17 = strG17.substring(iLastIndexOf + 1);
                    }
                    gVar4.f4667d = strG17;
                    return gVar4;
                }
                return null;
        }
    }

    @Override // eh.b
    public final dh.f f() {
        switch (this.f4991e) {
            case 0:
                return new dh.f("UNIX", "MMM d yyyy", "MMM d HH:mm");
            case 1:
                return new dh.f("NETWARE", "MMM dd yyyy", "MMM dd HH:mm");
            case 2:
                return new dh.f("OS/2", "MM-dd-yy HH:mm", null);
            default:
                return new dh.f("OS/400", "yy/MM/dd HH:mm:ss", null);
        }
    }
}

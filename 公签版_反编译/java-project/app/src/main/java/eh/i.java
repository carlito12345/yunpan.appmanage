package eh;

import android.os.Build;
import j$.util.Collection;
import java.text.ParseException;
import java.util.LinkedList;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class i extends b {

    /* renamed from: f, reason: collision with root package name */
    public static final Pattern f4994f = Pattern.compile("^total \\d+$");

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4995e;

    public i(dh.f fVar, boolean z) {
        super("([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3})|(?:\\d{1,2}月\\s+\\d{1,2}日))\\s+((?:\\d+(?::\\d+)?)|(?:\\d{4}年))\\s(.*)");
        a(fVar);
        this.f4995e = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a4  */
    @Override // dh.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dh.g b(String str) throws NumberFormatException {
        int i10;
        boolean z;
        int iIndexOf;
        dh.g gVar = new dh.g();
        gVar.f4666c = str;
        if (!h(str)) {
            return null;
        }
        String strG = g(1);
        String strG2 = g(15);
        g(16);
        g(17);
        String strG3 = g(18);
        String str2 = g(19) + " " + g(20);
        String strG4 = g(21);
        if (this.f4995e) {
            strG4 = strG4.replaceFirst("^\\s+", "");
        }
        try {
            if (g(19).contains("月")) {
                d dVar = new d();
                dVar.a(new dh.f("UNIX", "M'月' d'日' yyyy'年'", "M'月' d'日' HH:mm"));
                gVar.f4668e = dVar.d(str2);
            } else {
                gVar.f4668e = this.f4981d.d(str2);
            }
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
                Integer.parseInt(strG2);
            } catch (NumberFormatException unused2) {
            }
        }
        try {
            gVar.f4665b = Long.parseLong(strG3);
        } catch (NumberFormatException unused3) {
        }
        if (i10 != 2 || (iIndexOf = strG4.indexOf(" -> ")) == -1) {
            gVar.f4667d = strG4;
        } else {
            gVar.f4667d = strG4.substring(0, iIndexOf);
            strG4.substring(iIndexOf + 4);
        }
        return gVar;
    }

    @Override // dh.h
    public final void c(LinkedList linkedList) {
        if (Build.VERSION.SDK_INT >= 24) {
            Collection.EL.removeIf(linkedList, new h(0));
            return;
        }
        for (int size = linkedList.size() - 1; size >= 0; size--) {
            if (f4994f.matcher((CharSequence) linkedList.get(size)).matches()) {
                linkedList.remove(size);
            }
        }
    }

    @Override // eh.b
    public final dh.f f() {
        return new dh.f("UNIX", "MMM d yyyy", "MMM d HH:mm");
    }
}

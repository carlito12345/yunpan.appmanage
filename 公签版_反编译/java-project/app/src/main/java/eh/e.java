package eh;

import java.text.ParseException;
import java.util.LinkedList;

/* loaded from: classes.dex */
public final class e extends b {

    /* renamed from: e, reason: collision with root package name */
    public int f4989e;

    /* renamed from: f, reason: collision with root package name */
    public i f4990f;

    public e() {
        super("");
        this.f4989e = -1;
        a(null);
    }

    @Override // dh.h
    public final dh.g b(String str) {
        int i10 = this.f4989e;
        if (i10 == 0) {
            if (!h(str)) {
                boolean zStartsWith = str.startsWith("Migrated");
                if (!zStartsWith && !str.startsWith("ARCIVE")) {
                    return null;
                }
                dh.g gVar = new dh.g();
                gVar.f4666c = str;
                gVar.f4664a = 3;
                gVar.f4667d = str.split("\\s+")[zStartsWith ? (char) 1 : (char) 5];
                return gVar;
            }
            dh.g gVar2 = new dh.g();
            gVar2.f4666c = str;
            String strG = g(2);
            String strG2 = g(1);
            gVar2.f4667d = strG;
            if ("PS".equals(strG2)) {
                gVar2.f4664a = 0;
            } else {
                if (!"PO".equals(strG2) && !"PO-E".equals(strG2)) {
                    return null;
                }
                gVar2.f4664a = 1;
            }
            return gVar2;
        }
        if (i10 != 1) {
            if (i10 == 2) {
                return this.f4990f.b(str);
            }
            if (i10 == 3) {
                return i(3, str);
            }
            if (i10 != 4) {
                return null;
            }
            return i(4, str);
        }
        dh.g gVar3 = new dh.g();
        if (h(str)) {
            gVar3.f4666c = str;
            String strG3 = g(1);
            String str2 = g(2) + " " + g(3);
            gVar3.f4667d = strG3;
            gVar3.f4664a = 0;
            try {
                gVar3.f4668e = this.f4981d.d(str2);
            } catch (ParseException unused) {
            }
        } else {
            if (str == null || str.trim().isEmpty()) {
                return null;
            }
            gVar3.f4666c = str;
            gVar3.f4667d = str.split(" ")[0];
            gVar3.f4664a = 0;
        }
        return gVar3;
    }

    @Override // dh.h
    public final void c(LinkedList linkedList) {
        if (linkedList == null || linkedList.isEmpty()) {
            return;
        }
        String str = (String) linkedList.get(0);
        if (str.contains("Volume") && str.contains("Dsname")) {
            this.f4989e = 0;
            e(0, "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+(?:\\S+\\s+)?\\S+\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*");
        } else if (str.contains("Name") && str.contains("Id")) {
            this.f4989e = 1;
            e(0, "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*");
        } else if (str.startsWith("total")) {
            this.f4989e = 2;
            this.f4990f = new i(null, false);
        } else if (str.indexOf("Spool Files") >= 30) {
            this.f4989e = 3;
            e(0, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*");
        } else if (!str.startsWith("JOBNAME") || str.indexOf("JOBID") <= 8) {
            this.f4989e = -1;
        } else {
            this.f4989e = 4;
            e(0, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*");
        }
        if (this.f4989e != 3) {
            linkedList.remove(0);
        }
    }

    @Override // eh.b
    public final dh.f f() {
        return new dh.f("MVS", "yyyy/MM/dd HH:mm", null);
    }

    public final dh.g i(int i10, String str) {
        if (!h(str)) {
            return null;
        }
        dh.g gVar = new dh.g();
        if (!g(i10).equalsIgnoreCase("OUTPUT")) {
            return null;
        }
        gVar.f4666c = str;
        gVar.f4667d = g(2);
        gVar.f4664a = 0;
        return gVar;
    }
}

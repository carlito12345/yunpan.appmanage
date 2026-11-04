package eh;

import java.text.ParseException;

/* loaded from: classes.dex */
public final class g extends b {

    /* renamed from: e, reason: collision with root package name */
    public final d f4992e;

    public g(dh.f fVar) {
        a(fVar);
        dh.f fVar2 = new dh.f("WINDOWS", "MM-dd-yy kk:mm", null);
        fVar2.f4661b = "MM-dd-yy kk:mm";
        d dVar = new d();
        this.f4992e = dVar;
        dVar.a(fVar2);
    }

    @Override // dh.h
    public final dh.g b(String str) {
        dh.g gVar = new dh.g();
        gVar.f4666c = str;
        if (h(str)) {
            String str2 = g(1) + " " + g(2);
            String strG = g(3);
            String strG2 = g(4);
            String strG3 = g(5);
            try {
                try {
                    gVar.f4668e = this.f4981d.d(str2);
                } catch (ParseException unused) {
                    gVar.f4668e = this.f4992e.d(str2);
                }
            } catch (ParseException unused2) {
            }
            if (strG3 != null && !strG3.equals(".") && !strG3.equals("..")) {
                gVar.f4667d = strG3;
                if ("<DIR>".equals(strG)) {
                    gVar.f4664a = 1;
                    gVar.f4665b = 0L;
                } else {
                    gVar.f4664a = 0;
                    if (strG2 != null) {
                        gVar.f4665b = Long.parseLong(strG2);
                    }
                }
                return gVar;
            }
        }
        return null;
    }

    @Override // eh.b
    public final dh.f f() {
        return new dh.f("WINDOWS", "MM-dd-yy hh:mma", null);
    }
}

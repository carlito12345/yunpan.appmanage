package e2;

import b3.c;
import r1.p;
import z2.h;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f4710a = new a();

    public final nh.b a(p pVar) {
        String str = pVar.f13523o;
        if (str != null) {
            switch (str) {
                case "application/vnd.dvb.ait":
                    return new v2.b(0);
                case "application/x-icy":
                    return new y2.a();
                case "application/id3":
                    return new h(null);
                case "application/x-emsg":
                    return new v2.b(1);
                case "application/x-scte35":
                    return new c();
            }
        }
        throw new IllegalArgumentException(da.b.c("Attempted to create decoder for unsupported MIME type: ", str));
    }

    public final boolean b(p pVar) {
        String str = pVar.f13523o;
        return "application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
    }
}

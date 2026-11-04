package xd;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: h, reason: collision with root package name */
    public static final HashMap f18442h;

    /* renamed from: a, reason: collision with root package name */
    public final String f18443a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18444b;

    /* renamed from: c, reason: collision with root package name */
    public String f18445c = null;

    /* renamed from: d, reason: collision with root package name */
    public HashMap f18446d = null;

    /* renamed from: e, reason: collision with root package name */
    public f f18447e = null;

    /* renamed from: f, reason: collision with root package name */
    public int f18448f;

    /* renamed from: g, reason: collision with root package name */
    public int f18449g;

    static {
        HashMap map = new HashMap();
        f18442h = map;
        map.put("srvsvc", "4b324fc8-1670-01d3-1278-5a47bf6ee188:3.0");
        map.put("lsarpc", "12345778-1234-abcd-ef00-0123456789ab:0.0");
        map.put("samr", "12345778-1234-abcd-ef00-0123456789ac:1.0");
        map.put("netdfs", "4fc742e0-4a10-11cf-8273-00aa004ae673:3.0");
    }

    public b(String str, String str2) {
        this.f18443a = str;
        this.f18444b = str2;
    }

    public final String toString() {
        String str = this.f18443a + ":" + this.f18444b + "[" + this.f18445c;
        HashMap map = this.f18446d;
        if (map != null) {
            for (Object obj : map.keySet()) {
                str = str + "," + obj + "=" + this.f18446d.get(obj);
            }
        }
        return g.b.j(str, "]");
    }
}

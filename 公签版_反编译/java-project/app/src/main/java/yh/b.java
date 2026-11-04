package yh;

/* loaded from: classes3.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    public static volatile b f19214a;

    static {
        b bVar = new b();
        String property = System.getProperty("org.tukaani.xz.ArrayCache");
        if (property == null) {
            property = "Dummy";
        }
        if (property.equals("Basic")) {
            f19214a = e.f19228a;
        } else {
            if (!property.equals("Dummy")) {
                throw new Error(g.b.A("Unsupported value '", property, "' in the system property org.tukaani.xz.ArrayCache. Supported values: Dummy, Basic"));
            }
            f19214a = bVar;
        }
    }

    public byte[] a(int i10) {
        return new byte[i10];
    }

    public int[] b(int i10, boolean z) {
        return new int[i10];
    }

    public void c(byte[] bArr) {
    }

    public void d(int[] iArr) {
    }
}

package b;

import java.io.Serializable;
import java.security.PrivilegedAction;

/* loaded from: classes.dex */
public final class b implements PrivilegedAction {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2489a;

    /* renamed from: b, reason: collision with root package name */
    public final Serializable f2490b;

    public /* synthetic */ b(int i10, Serializable serializable) {
        this.f2489a = i10;
        this.f2490b = serializable;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        switch (this.f2489a) {
            case 0:
                String property = System.getProperty((String) this.f2490b);
                if (property == null) {
                    return null;
                }
                return property;
            default:
                c.a aVar = (c.a) this.f2490b;
                aVar.put("KeyFactory.EC", "sun.security.ec.ECKeyFactory");
                aVar.put("AlgorithmParameters.EC", "sun.security.ec.ECParameters");
                aVar.put("Alg.Alias.AlgorithmParameters.1.2.840.10045.2.1", "EC");
                return null;
        }
    }
}

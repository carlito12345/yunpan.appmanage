package c;

import java.security.Provider;
import java.security.Security;

/* loaded from: classes.dex */
public final class a extends Provider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(int i10) {
        super("SunEC-Internal", 1.0d, null);
        switch (i10) {
            case 1:
                super("JKS", 1.0d, "Java KeyStore");
                put("KeyStore.JKS", f.b.class.getName());
                put("KeyStore.CaseExactJKS", f.a.class.getName());
                put("KeyStore.PKCS12", e.a.class.getName());
                Security.setProperty("keystore.type", "jks");
                break;
            default:
                break;
        }
    }
}

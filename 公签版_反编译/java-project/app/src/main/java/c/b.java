package c;

import java.security.AccessController;
import java.security.KeyFactory;
import java.security.KeyFactorySpi;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public abstract class b extends KeyFactorySpi {

    /* renamed from: a, reason: collision with root package name */
    public static final a f2820a;

    static {
        a aVar = new a(0);
        AccessController.doPrivileged(new b.b(1, aVar));
        try {
            KeyFactory.getInstance("EC", aVar);
            f2820a = aVar;
        } catch (NoSuchAlgorithmException e7) {
            throw new RuntimeException(e7);
        }
    }
}

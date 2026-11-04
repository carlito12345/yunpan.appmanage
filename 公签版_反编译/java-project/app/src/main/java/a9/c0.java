package a9;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Vector;

/* loaded from: classes.dex */
public abstract class c0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Vector f476a = new Vector();

    static {
        try {
            InetAddress.getByName("0.0.0.0");
        } catch (UnknownHostException unused) {
        }
    }

    public static void a(f0 f0Var) {
        Vector vector = f476a;
        synchronized (vector) {
            try {
                c0[] c0VarArr = new c0[vector.size()];
                Vector vector2 = f476a;
                if (vector2.size() > 0) {
                    throw null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}

package org.bouncycastle.its.jcajce;

import g.b;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.jcajce.spec.AEADParameterSpec;
import org.bouncycastle.util.Integers;

/* loaded from: classes3.dex */
class ClassUtil {
    private static final Class gcmSpecClass = loadClass(ClassUtil.class, "javax.crypto.spec.GCMParameterSpec");

    public static AlgorithmParameterSpec getGCMSpec(final byte[] bArr, final int i10) {
        if (gcmSpecClass != null) {
            try {
                return (AlgorithmParameterSpec) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.bouncycastle.its.jcajce.ClassUtil.1
                    @Override // java.security.PrivilegedAction
                    public Object run() {
                        try {
                            return ClassUtil.gcmSpecClass.getConstructor(Integer.TYPE, byte[].class).newInstance(Integers.valueOf(i10), bArr);
                        } catch (NoSuchMethodException e7) {
                            throw new IllegalStateException("no matching constructor: " + e7.getMessage());
                        } catch (Exception e10) {
                            throw new IllegalStateException(b.z(e10, new StringBuilder("constructor failed")));
                        }
                    }
                });
            } catch (IllegalStateException unused) {
            }
        }
        return new AEADParameterSpec(bArr, i10);
    }

    public static Class loadClass(Class cls, final String str) {
        try {
            ClassLoader classLoader = cls.getClassLoader();
            return classLoader != null ? classLoader.loadClass(str) : (Class) AccessController.doPrivileged(new PrivilegedAction() { // from class: org.bouncycastle.its.jcajce.ClassUtil.2
                @Override // java.security.PrivilegedAction
                public Object run() {
                    try {
                        return Class.forName(str);
                    } catch (Exception unused) {
                        return null;
                    }
                }
            });
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}

package org.lsposed.hiddenapibypass;

import dalvik.system.PathClassLoader;

/* loaded from: classes.dex */
public final class b extends PathClassLoader {
    public b() {
        super(System.getProperty("java.boot.class.path", "").split(":", 2)[0], null);
    }

    @Override // java.lang.ClassLoader
    public final Class loadClass(String str) {
        if (Object.class.getName().equals(str)) {
            return Object.class;
        }
        try {
            return findClass(str);
        } catch (ClassNotFoundException unused) {
            return a.a().getName().equals(str) ? e.class : a.e().getName().equals(str) ? g.class : Class.class.getName().equals(str) ? d.class : super.loadClass(str);
        }
    }
}

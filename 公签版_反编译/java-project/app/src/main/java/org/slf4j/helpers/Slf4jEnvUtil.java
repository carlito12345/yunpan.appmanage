package org.slf4j.helpers;

/* loaded from: classes3.dex */
public class Slf4jEnvUtil {
    public static String slf4jVersion() {
        Package r02 = Slf4jEnvUtil.class.getPackage();
        if (r02 == null) {
            return null;
        }
        return r02.getImplementationVersion();
    }
}

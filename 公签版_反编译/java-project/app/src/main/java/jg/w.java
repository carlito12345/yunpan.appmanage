package jg;

import java.security.cert.Extension;
import java.security.cert.PKIXCertPathChecker;
import java.security.cert.PKIXRevocationChecker;

/* loaded from: classes.dex */
public abstract /* synthetic */ class w {
    public static /* bridge */ /* synthetic */ Extension i(Object obj) {
        return (Extension) obj;
    }

    public static /* bridge */ /* synthetic */ boolean w(PKIXCertPathChecker pKIXCertPathChecker) {
        return pKIXCertPathChecker instanceof PKIXRevocationChecker;
    }
}

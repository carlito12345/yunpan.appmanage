package b;

import java.security.PrivilegedAction;

/* loaded from: classes.dex */
public final class a implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public final Object run() {
        return Boolean.valueOf(Boolean.getBoolean("com.sun.security.preserveOldDCEncoding"));
    }
}

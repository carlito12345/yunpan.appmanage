package j$.util;

import java.io.Serializable;

/* renamed from: j$.util.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0029f extends RuntimeException {
    public C0029f(String str) {
        super(str);
    }

    public static void a(String str, Serializable serializable) {
        throw new C0029f("Unsupported " + str + " :" + serializable);
    }
}

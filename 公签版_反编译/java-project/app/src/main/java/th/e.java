package th;

import java.io.Serializable;

/* loaded from: classes3.dex */
public final class e extends d implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final e f15102a = new e();

    public static boolean b(long j10) {
        return (3 & j10) == 0 && (j10 % 100 != 0 || j10 % 400 == 0);
    }

    private Object readResolve() {
        return f15102a;
    }
}

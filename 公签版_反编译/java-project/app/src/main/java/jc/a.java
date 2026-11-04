package jc;

import androidx.emoji2.text.o;
import ha.j2;
import ha.l2;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final o f9850a = new o(1);

    /* renamed from: b, reason: collision with root package name */
    public static final l2 f9851b = new l2(13);

    /* renamed from: c, reason: collision with root package name */
    public static final j2 f9852c;

    /* renamed from: d, reason: collision with root package name */
    public static final l2 f9853d;

    static {
        int i10 = 14;
        f9852c = new j2(i10);
        f9853d = new l2(i10);
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static void b(int i10, String str) {
        if (i10 > 0) {
            return;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i10);
    }
}

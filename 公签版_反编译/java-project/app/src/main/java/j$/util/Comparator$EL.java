package j$.util;

import java.util.Collections;
import java.util.Comparator;

/* renamed from: j$.util.Comparator$-EL, reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class Comparator$EL {
    public static C0025c a(Comparator comparator, Comparator comparator2) {
        Objects.requireNonNull(comparator2);
        return new C0025c((EnumC0028e) ((InterfaceC0027d) comparator), comparator2, 0);
    }

    public static Comparator reversed(Comparator comparator) {
        if (!(comparator instanceof InterfaceC0027d)) {
            return Collections.reverseOrder(comparator);
        }
        ((EnumC0028e) ((InterfaceC0027d) comparator)).getClass();
        return Collections.reverseOrder();
    }
}

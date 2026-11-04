package n4;

import com.android.apksig.internal.compat.IntConsumerCompat;
import j$.util.Objects;
import ma.b;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static IntConsumerCompat a(IntConsumerCompat intConsumerCompat, IntConsumerCompat intConsumerCompat2) {
        Objects.requireNonNull(intConsumerCompat2);
        return new b(intConsumerCompat, 1, intConsumerCompat2);
    }

    public static /* synthetic */ void b(IntConsumerCompat intConsumerCompat, IntConsumerCompat intConsumerCompat2, int i10) {
        intConsumerCompat.accept(i10);
        intConsumerCompat2.accept(i10);
    }
}

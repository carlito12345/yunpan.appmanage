package com.android.apksig.internal.compat;

@FunctionalInterface
/* loaded from: classes.dex */
public interface IntConsumerCompat {
    void accept(int i10);

    IntConsumerCompat andThen(IntConsumerCompat intConsumerCompat);
}

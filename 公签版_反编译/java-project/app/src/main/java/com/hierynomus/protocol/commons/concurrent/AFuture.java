package com.hierynomus.protocol.commons.concurrent;

import java.util.concurrent.Future;

/* loaded from: classes.dex */
public abstract class AFuture<V> implements Future<V> {

    public interface Function<A, B> {
        B apply(A a10);
    }

    public <T> AFuture<T> map(Function<V, T> function) {
        return new TransformedFuture(this, function);
    }
}

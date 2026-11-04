package com.hierynomus.protocol.commons.concurrent;

import com.hierynomus.protocol.commons.concurrent.AFuture;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class Futures {
    public static <T, E extends Throwable> T get(Future<T> future, ExceptionWrapper<E> exceptionWrapper) throws Throwable {
        try {
            return future.get();
        } catch (InterruptedException e7) {
            Thread.currentThread().interrupt();
            throw exceptionWrapper.wrap(e7);
        } catch (ExecutionException e10) {
            throw exceptionWrapper.wrap(e10);
        }
    }

    public static <T> Future<List<T>> sequence(List<Future<T>> list) {
        return new SequencedFuture(list);
    }

    public static <F, T> Future<T> transform(Future<F> future, AFuture.Function<F, T> function) {
        return new TransformedFuture(future, function);
    }

    public static <T, E extends Throwable> T get(Future<T> future, long j10, TimeUnit timeUnit, ExceptionWrapper<E> exceptionWrapper) throws Throwable {
        try {
            return future.get(j10, timeUnit);
        } catch (InterruptedException e7) {
            Thread.currentThread().interrupt();
            throw exceptionWrapper.wrap(e7);
        } catch (ExecutionException e10) {
            e = e10;
            throw exceptionWrapper.wrap(e);
        } catch (TimeoutException e11) {
            e = e11;
            throw exceptionWrapper.wrap(e);
        }
    }
}

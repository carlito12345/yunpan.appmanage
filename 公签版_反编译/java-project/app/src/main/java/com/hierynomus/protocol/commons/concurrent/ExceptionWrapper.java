package com.hierynomus.protocol.commons.concurrent;

import java.lang.Throwable;

/* loaded from: classes.dex */
public interface ExceptionWrapper<T extends Throwable> {
    T wrap(Throwable th2);
}

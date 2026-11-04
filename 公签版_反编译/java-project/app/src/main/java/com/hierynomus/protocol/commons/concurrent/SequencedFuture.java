package com.hierynomus.protocol.commons.concurrent;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class SequencedFuture<V> extends AFuture<List<V>> {
    private List<Future<V>> futures;

    public SequencedFuture(List<Future<V>> list) {
        this.futures = list;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z4;
        Iterator<Future<V>> it = this.futures.iterator();
        while (true) {
            while (it.hasNext()) {
                z4 = z4 && it.next().cancel(z);
            }
            return z4;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Iterator<Future<V>> it = this.futures.iterator();
        while (it.hasNext()) {
            if (!it.next().isCancelled()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        Iterator<Future<V>> it = this.futures.iterator();
        while (it.hasNext()) {
            if (!it.next().isDone()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.concurrent.Future
    public List<V> get() {
        ArrayList arrayList = new ArrayList();
        Iterator<Future<V>> it = this.futures.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().get());
        }
        return arrayList;
    }

    @Override // java.util.concurrent.Future
    public List<V> get(long j10, TimeUnit timeUnit) {
        ArrayList arrayList = new ArrayList();
        Iterator<Future<V>> it = this.futures.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().get(j10, timeUnit));
        }
        return arrayList;
    }
}

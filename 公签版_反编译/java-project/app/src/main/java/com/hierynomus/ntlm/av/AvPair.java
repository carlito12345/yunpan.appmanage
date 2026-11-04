package com.hierynomus.ntlm.av;

import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public abstract class AvPair<T> {
    protected AvId avId;
    protected T value;

    public AvPair(AvId avId) {
        this.avId = avId;
    }

    public AvId getAvId() {
        return this.avId;
    }

    public T getValue() {
        return this.value;
    }

    public abstract AvPair<T> read(Buffer<?> buffer);

    public String toString() {
        return "AvPair{avId=" + this.avId.name() + ", value=" + this.value + '}';
    }

    public abstract void write(Buffer<?> buffer);

    public AvPair(AvId avId, T t10) {
        this.avId = avId;
        this.value = t10;
    }
}

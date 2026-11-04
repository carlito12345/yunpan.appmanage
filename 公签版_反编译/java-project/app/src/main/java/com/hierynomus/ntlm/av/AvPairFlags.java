package com.hierynomus.ntlm.av;

import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public class AvPairFlags extends AvPair<Long> {
    public AvPairFlags() {
        super(AvId.MsvAvFlags);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Long] */
    @Override // com.hierynomus.ntlm.av.AvPair
    public AvPair<Long> read(Buffer<?> buffer) {
        buffer.readUInt16();
        this.value = Long.valueOf(buffer.readUInt32());
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.hierynomus.ntlm.av.AvPair
    public void write(Buffer<?> buffer) {
        buffer.putUInt16((int) this.avId.getValue());
        buffer.putUInt16(4);
        buffer.putUInt32(((Long) this.value).longValue());
    }

    public AvPairFlags(long j10) {
        super(AvId.MsvAvFlags, Long.valueOf(j10));
    }
}

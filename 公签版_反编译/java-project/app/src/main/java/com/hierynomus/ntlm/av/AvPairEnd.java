package com.hierynomus.ntlm.av;

import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public class AvPairEnd extends AvPair<Void> {
    public AvPairEnd() {
        super(AvId.MsvAvEOL);
    }

    @Override // com.hierynomus.ntlm.av.AvPair
    public AvPair<Void> read(Buffer<?> buffer) {
        buffer.readUInt16();
        return this;
    }

    @Override // com.hierynomus.ntlm.av.AvPair
    public void write(Buffer<?> buffer) {
        buffer.putUInt16((int) this.avId.getValue());
        buffer.putUInt16(0);
    }
}

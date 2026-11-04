package com.hierynomus.ntlm.messages;

import com.hierynomus.protocol.Packet;
import com.hierynomus.protocol.commons.buffer.Buffer;

/* loaded from: classes.dex */
public class NtlmPacket implements Packet<Buffer.PlainBuffer> {
    @Override // com.hierynomus.protocol.Packet
    public void read(Buffer.PlainBuffer plainBuffer) {
        throw new UnsupportedOperationException("Not implemented by base class");
    }

    @Override // com.hierynomus.protocol.Packet
    public void write(Buffer.PlainBuffer plainBuffer) {
        throw new UnsupportedOperationException("Not implemented by base class");
    }
}

package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;

/* loaded from: classes.dex */
public class BaseRegEnumKeyResponse extends RequestResponse {
    private long lastWriteTime;
    private RPCUnicodeString.NullTerminated lpClassOut;
    private RPCUnicodeString.NullTerminated lpNameOut;

    public long getLastWriteTime() {
        return this.lastWriteTime;
    }

    public RPCUnicodeString.NullTerminated getLpClassOut() {
        return this.lpClassOut;
    }

    public RPCUnicodeString.NullTerminated getLpNameOut() {
        return this.lpNameOut;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        RPCUnicodeString.NullTerminated nullTerminated = new RPCUnicodeString.NullTerminated();
        this.lpNameOut = nullTerminated;
        packetInput.readUnmarshallable(nullTerminated);
        Alignment alignment = Alignment.FOUR;
        packetInput.align(alignment);
        if (packetInput.readReferentID() != 0) {
            RPCUnicodeString.NullTerminated nullTerminated2 = new RPCUnicodeString.NullTerminated();
            this.lpClassOut = nullTerminated2;
            packetInput.readUnmarshallable(nullTerminated2);
            packetInput.align(alignment);
        } else {
            this.lpClassOut = null;
        }
        if (packetInput.readReferentID() != 0) {
            this.lastWriteTime = packetInput.readLong();
        } else {
            this.lastWriteTime = 0L;
        }
    }
}

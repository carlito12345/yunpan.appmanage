package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateResponse;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class SamrEnumerateRequest<T extends SamrEnumerateResponse> extends RequestCall<T> {
    private final int enumContext;
    private final byte[] handle;
    private final int maxLength;

    public SamrEnumerateRequest(short s8, byte[] bArr, int i10, int i11) {
        super(s8);
        this.handle = bArr;
        this.enumContext = i10;
        this.maxLength = i11;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.handle);
        packetOutput.writeInt(this.enumContext);
        packetOutput.writeInt(this.maxLength);
    }
}

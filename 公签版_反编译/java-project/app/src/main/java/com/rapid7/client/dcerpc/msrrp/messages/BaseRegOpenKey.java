package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.HandleResponse;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import java.io.IOException;

/* loaded from: classes.dex */
public class BaseRegOpenKey extends RequestCall<HandleResponse> {
    private final int accessMask;
    private final byte[] hKey;
    private final int options;
    private final RPCUnicodeString.NullTerminated subKey;

    public BaseRegOpenKey(byte[] bArr, RPCUnicodeString.NullTerminated nullTerminated, int i10, int i11) {
        super((short) 15);
        this.hKey = bArr;
        this.subKey = nullTerminated;
        this.options = i10;
        this.accessMask = i11;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hKey);
        packetOutput.writeMarshallable(this.subKey);
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(this.options);
        packetOutput.writeInt(this.accessMask);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public HandleResponse getResponseObject() {
        return new HandleResponse();
    }
}

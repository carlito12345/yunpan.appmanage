package com.rapid7.client.dcerpc.mssrvs.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.WChar;
import java.io.IOException;

/* loaded from: classes.dex */
public class NetprPathCanonicalizeRequest extends RequestCall<NetprPathCanonicalizeResponse> {
    private final int flags;
    private final int outBufLen;
    private final WChar.NullTerminated pathName;
    private final int pathType;
    private final WChar.NullTerminated prefix;
    private final WChar.NullTerminated serverName;

    public NetprPathCanonicalizeRequest(WChar.NullTerminated nullTerminated, WChar.NullTerminated nullTerminated2, int i10, WChar.NullTerminated nullTerminated3, int i11, int i12) {
        super(NetrOpCode.NetprPathCanonicalize.getOpCode());
        this.serverName = nullTerminated;
        this.pathName = nullTerminated2;
        this.prefix = nullTerminated3;
        this.outBufLen = i10;
        this.pathType = i11;
        this.flags = i12;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        if (packetOutput.writeReferentID(this.serverName)) {
            packetOutput.writeMarshallable(this.serverName);
            packetOutput.align(Alignment.FOUR);
        }
        packetOutput.writeMarshallable(this.pathName);
        Alignment alignment = Alignment.FOUR;
        packetOutput.align(alignment);
        packetOutput.writeInt(this.outBufLen);
        packetOutput.writeMarshallable(this.prefix);
        packetOutput.align(alignment);
        packetOutput.writeInt(this.pathType);
        packetOutput.writeInt(this.flags);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public NetprPathCanonicalizeResponse getResponseObject() {
        return new NetprPathCanonicalizeResponse();
    }
}

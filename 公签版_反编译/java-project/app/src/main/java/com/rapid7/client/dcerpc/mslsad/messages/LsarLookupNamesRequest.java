package com.rapid7.client.dcerpc.mslsad.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import java.io.IOException;

/* loaded from: classes.dex */
public class LsarLookupNamesRequest extends RequestCall<LsarLookupNamesResponse> {
    private static final short OP_NUM = 14;
    private final short lookupLevel;
    private final RPCUnicodeString.NonNullTerminated[] names;
    private final byte[] policyHandle;

    public LsarLookupNamesRequest(byte[] bArr, RPCUnicodeString.NonNullTerminated[] nonNullTerminatedArr, short s8) {
        super(OP_NUM);
        this.policyHandle = bArr;
        this.names = nonNullTerminatedArr;
        this.lookupLevel = s8;
    }

    private void writeNames(PacketOutput packetOutput) throws IOException {
        packetOutput.writeInt(this.names.length);
        for (RPCUnicodeString.NonNullTerminated nonNullTerminated : this.names) {
            nonNullTerminated.marshalPreamble(packetOutput);
        }
        for (RPCUnicodeString.NonNullTerminated nonNullTerminated2 : this.names) {
            nonNullTerminated2.marshalEntity(packetOutput);
        }
        for (RPCUnicodeString.NonNullTerminated nonNullTerminated3 : this.names) {
            nonNullTerminated3.marshalDeferrals(packetOutput);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.policyHandle);
        packetOutput.writeInt(this.names.length);
        writeNames(packetOutput);
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(0);
        packetOutput.writeNull();
        packetOutput.writeShort(this.lookupLevel);
        packetOutput.pad(2L);
        packetOutput.writeNull();
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public LsarLookupNamesResponse getResponseObject() {
        return new LsarLookupNamesResponse();
    }
}

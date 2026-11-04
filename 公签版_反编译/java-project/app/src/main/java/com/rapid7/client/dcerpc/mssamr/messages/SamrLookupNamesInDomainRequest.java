package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrLookupNamesInDomainRequest extends RequestCall<SamrLookupNamesInDomainResponse> {
    public static final short OP_NUM = 17;
    private final byte[] domainHandle;
    private final RPCUnicodeString.NonNullTerminated[] names;

    public SamrLookupNamesInDomainRequest(byte[] bArr, RPCUnicodeString.NonNullTerminated[] nonNullTerminatedArr) {
        super((short) 17);
        if (bArr == null) {
            throw new IllegalArgumentException("domainHandle must not be null");
        }
        if (nonNullTerminatedArr == null) {
            throw new IllegalArgumentException("names must not be null");
        }
        if (nonNullTerminatedArr.length > 1000) {
            throw new IllegalArgumentException(String.format("names must not contain more than 1000 elements, got: %d", Integer.valueOf(nonNullTerminatedArr.length)));
        }
        this.domainHandle = bArr;
        this.names = nonNullTerminatedArr;
    }

    public byte[] getDomainHandle() {
        return this.domainHandle;
    }

    public RPCUnicodeString.NonNullTerminated[] getNames() {
        return this.names;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.domainHandle);
        packetOutput.writeInt(this.names.length);
        packetOutput.writeInt(1000);
        packetOutput.writeInt(0);
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

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrLookupNamesInDomainResponse getResponseObject() {
        return new SamrLookupNamesInDomainResponse();
    }
}

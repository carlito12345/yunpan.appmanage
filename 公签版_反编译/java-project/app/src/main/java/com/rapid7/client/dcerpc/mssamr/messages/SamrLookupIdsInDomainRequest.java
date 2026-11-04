package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import da.b;
import java.io.IOException;

/* loaded from: classes.dex */
public class SamrLookupIdsInDomainRequest extends RequestCall<SamrLookupIdsInDomainResponse> {
    public static short OP_NUM = 18;
    private final int count;
    private final byte[] handle;
    private final long[] relativeIDs;

    public SamrLookupIdsInDomainRequest(byte[] bArr, long... jArr) {
        super(OP_NUM);
        this.handle = bArr;
        int length = jArr.length;
        this.count = length;
        if (length > 1000) {
            throw new IllegalArgumentException(b.a(length, "Count cannot exceed 1000 to limit the amount of memory client can force the server to allocate: "));
        }
        this.relativeIDs = jArr;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.handle);
        packetOutput.writeInt(this.count);
        packetOutput.writeInt(1000);
        packetOutput.writeInt(0);
        packetOutput.writeInt(this.count);
        for (long j10 : this.relativeIDs) {
            packetOutput.writeInt(j10);
        }
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public SamrLookupIdsInDomainResponse getResponseObject() {
        return new SamrLookupIdsInDomainResponse();
    }
}

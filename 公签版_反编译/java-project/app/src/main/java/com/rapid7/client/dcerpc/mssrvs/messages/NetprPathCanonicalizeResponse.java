package com.rapid7.client.dcerpc.mssrvs.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestResponse;

/* loaded from: classes.dex */
public class NetprPathCanonicalizeResponse extends RequestResponse {
    private String outBuf;
    private int pathType;

    private String readChars(PacketInput packetInput) {
        int i10 = packetInput.readInt() / 2;
        StringBuilder sb2 = new StringBuilder(i10);
        int i11 = 0;
        while (i11 < i10) {
            i11++;
            char c7 = (char) packetInput.readShort();
            if (c7 == 0) {
                break;
            }
            sb2.append(c7);
        }
        packetInput.fullySkipBytes((i10 - i11) * 2);
        return sb2.toString();
    }

    public String getOutBuf() {
        return this.outBuf;
    }

    public int getPathType() {
        return this.pathType;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        this.outBuf = readChars(packetInput);
        packetInput.align(Alignment.FOUR);
        this.pathType = packetInput.readInt();
    }
}

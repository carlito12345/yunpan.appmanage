package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.messages.RequestCall;
import com.rapid7.client.dcerpc.msrrp.objects.RPCSecurityDescriptor;
import java.io.IOException;

/* loaded from: classes.dex */
public class BaseRegGetKeySecurityRequest extends RequestCall<BaseRegGetKeySecurityResponse> {
    public static short OP_NUM = 12;
    private final byte[] hKey;
    private final int securityDescriptorInfo;
    private final int securityDescriptorSize;

    public BaseRegGetKeySecurityRequest(byte[] bArr, int i10, int i11) {
        super(OP_NUM);
        this.hKey = bArr;
        this.securityDescriptorInfo = i10;
        this.securityDescriptorSize = i11;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        packetOutput.write(this.hKey);
        packetOutput.writeInt(this.securityDescriptorInfo);
        RPCSecurityDescriptor rPCSecurityDescriptor = new RPCSecurityDescriptor();
        rPCSecurityDescriptor.setCbInSecurityDescriptor(this.securityDescriptorSize);
        rPCSecurityDescriptor.setLpSecurityDescriptor(new byte[0]);
        packetOutput.writeMarshallable(rPCSecurityDescriptor);
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestCall
    public BaseRegGetKeySecurityResponse getResponseObject() {
        return new BaseRegGetKeySecurityResponse();
    }
}

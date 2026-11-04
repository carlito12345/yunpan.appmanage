package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.msrrp.objects.RPCSecurityDescriptor;

/* loaded from: classes.dex */
public class BaseRegGetKeySecurityResponse extends RequestResponse {
    private RPCSecurityDescriptor pRpcSecurityDescriptorOut;

    public RPCSecurityDescriptor getpRpcSecurityDescriptorOut() {
        return this.pRpcSecurityDescriptorOut;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        RPCSecurityDescriptor rPCSecurityDescriptor = new RPCSecurityDescriptor();
        this.pRpcSecurityDescriptorOut = rPCSecurityDescriptor;
        packetInput.readUnmarshallable(rPCSecurityDescriptor);
    }
}

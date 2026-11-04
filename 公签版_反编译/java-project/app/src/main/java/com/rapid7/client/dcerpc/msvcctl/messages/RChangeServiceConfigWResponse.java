package com.rapid7.client.dcerpc.msvcctl.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.messages.RequestResponse;

/* loaded from: classes.dex */
public class RChangeServiceConfigWResponse extends RequestResponse {
    private Integer tagId;

    public Integer getTagId() {
        return this.tagId;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        if (packetInput.readReferentID() != 0) {
            this.tagId = Integer.valueOf(packetInput.readInt());
        } else {
            this.tagId = null;
        }
    }
}

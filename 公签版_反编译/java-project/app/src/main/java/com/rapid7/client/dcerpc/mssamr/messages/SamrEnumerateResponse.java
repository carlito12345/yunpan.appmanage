package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import java.util.List;

/* loaded from: classes.dex */
public abstract class SamrEnumerateResponse<T> extends RequestResponse {
    private int numEntries;
    private int resumeHandle;

    public abstract List<T> getList();

    public int getNumEntries() {
        return this.numEntries;
    }

    public int getResumeHandle() {
        return this.resumeHandle;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        this.resumeHandle = packetInput.readInt();
        if (packetInput.readReferentID() != 0) {
            unmarshallBuffer(packetInput);
        }
        packetInput.align(Alignment.FOUR);
        this.numEntries = packetInput.readInt();
    }

    public abstract void unmarshallBuffer(PacketInput packetInput);
}

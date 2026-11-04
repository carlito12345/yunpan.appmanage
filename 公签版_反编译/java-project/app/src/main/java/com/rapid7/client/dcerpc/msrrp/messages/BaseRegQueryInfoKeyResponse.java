package com.rapid7.client.dcerpc.msrrp.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.objects.RPCUnicodeString;

/* loaded from: classes.dex */
public class BaseRegQueryInfoKeyResponse extends RequestResponse {
    private long lastWriteTime;
    private int maxClassLen;
    private int maxSubKeyLen;
    private int maxValueLen;
    private int maxValueNameLen;
    private int securityDescriptor;
    private int subKeys;
    private int values;

    public long getLastWriteTime() {
        return this.lastWriteTime;
    }

    public int getMaxClassLen() {
        return this.maxClassLen;
    }

    public int getMaxSubKeyLen() {
        return this.maxSubKeyLen;
    }

    public int getMaxValueLen() {
        return this.maxValueLen;
    }

    public int getMaxValueNameLen() {
        return this.maxValueNameLen;
    }

    public int getSecurityDescriptor() {
        return this.securityDescriptor;
    }

    public int getSubKeys() {
        return this.subKeys;
    }

    public int getValues() {
        return this.values;
    }

    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) {
        packetInput.readUnmarshallable(new RPCUnicodeString.NullTerminated());
        packetInput.align(Alignment.FOUR);
        this.subKeys = packetInput.readInt();
        this.maxSubKeyLen = packetInput.readInt();
        this.maxClassLen = packetInput.readInt();
        this.values = packetInput.readInt();
        this.maxValueNameLen = packetInput.readInt();
        this.maxValueLen = packetInput.readInt();
        this.securityDescriptor = packetInput.readInt();
        this.lastWriteTime = packetInput.readLong();
    }
}

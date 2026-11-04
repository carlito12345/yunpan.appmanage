package com.hierynomus.mssmb2;

/* loaded from: classes.dex */
public class SMB2MultiCreditPacket extends SMB2Packet {
    private int maxPayloadSize;

    public SMB2MultiCreditPacket(int i10, SMB2Dialect sMB2Dialect, SMB2MessageCommandCode sMB2MessageCommandCode, long j10, long j11, int i11) {
        super(i10, sMB2Dialect, sMB2MessageCommandCode, j10, j11);
        this.maxPayloadSize = i11;
    }

    @Override // com.hierynomus.mssmb2.SMB2Packet
    public int getMaxPayloadSize() {
        return this.maxPayloadSize;
    }

    public int getPayloadSize() {
        return Math.min(this.maxPayloadSize, getCreditsAssigned() * 65536);
    }
}

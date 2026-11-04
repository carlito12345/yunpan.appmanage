package com.rapid7.client.dcerpc;

import com.hierynomus.protocol.commons.EnumWithValue;

/* loaded from: classes.dex */
public enum PDUType implements EnumWithValue<PDUType> {
    REQUEST(0),
    PING(1),
    RESPONSE(2),
    FAULT(3),
    WORKING(4),
    NOCALL(5),
    REJECT(6),
    ACK(7),
    CL_CANCEL(8),
    FACK(9),
    CANCEL_ACK(10),
    BIND(11),
    BIND_ACK(12),
    BIND_NAK(13),
    ALTER_CONTEXT(14),
    ALTER_CONTEXT_RESP(15),
    SHUTDOWN(17),
    CO_CANCEL(18),
    ORPHANED(19);

    private final int value;

    PDUType(int i10) {
        this.value = i10;
    }

    @Override // com.hierynomus.protocol.commons.EnumWithValue
    public long getValue() {
        return this.value;
    }
}

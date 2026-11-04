package com.rapid7.client.dcerpc.transport.exceptions;

import com.rapid7.client.dcerpc.PDUFault;
import com.rapid7.client.dcerpc.io.PacketInput;
import java.io.EOFException;
import java.io.IOException;

/* loaded from: classes.dex */
public class RPCFaultException extends IOException {
    private final PDUFault rpcFault;
    private final int rpcFaultValue;

    public RPCFaultException(int i10) {
        this.rpcFaultValue = i10;
        this.rpcFault = PDUFault.fromValue(i10);
    }

    public static RPCFaultException read(PacketInput packetInput) {
        int i10;
        try {
            i10 = packetInput.readInt();
        } catch (EOFException unused) {
            i10 = -1;
        }
        return new RPCFaultException(i10);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return String.format("Fault: %s (0x%08X)", getRpcFault(), Integer.valueOf(getRpcFaultValue()));
    }

    public PDUFault getRpcFault() {
        return this.rpcFault;
    }

    public int getRpcFaultValue() {
        return this.rpcFaultValue;
    }
}

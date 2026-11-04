package com.rapid7.client.dcerpc.messages;

import com.rapid7.client.dcerpc.io.Hexify;
import com.rapid7.client.dcerpc.io.HexifyImpl;
import com.rapid7.client.dcerpc.io.Packet;
import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.mserref.SystemErrorCode;
import java.io.EOFException;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public abstract class RequestResponse extends HexifyImpl implements Packet, Hexify {
    private int returnValue;

    public SystemErrorCode getReturnCode() {
        return SystemErrorCode.getErrorCode(getReturnValue());
    }

    public int getReturnValue() {
        return this.returnValue;
    }

    public boolean isSuccess() {
        return getReturnCode() == SystemErrorCode.ERROR_SUCCESS;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) {
        throw new UnsupportedOperationException("Marshal Not Implemented.");
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.io.Packet
    public void unmarshal(PacketInput packetInput) throws UnmarshalException {
        unmarshalResponse(packetInput);
        packetInput.align(Alignment.FOUR);
        this.returnValue = packetInput.readInt();
        try {
            packetInput.readByte();
            throw new UnmarshalException("At least one byte remained after reading the return code. Is this response aligned properly?");
        } catch (EOFException unused) {
        }
    }

    public abstract void unmarshalResponse(PacketInput packetInput);
}

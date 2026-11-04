package com.rapid7.client.dcerpc.msrrp.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import java.io.IOException;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public class RPCSecurityDescriptor implements Unmarshallable, Marshallable {
    private int cbInSecurityDescriptor;
    private byte[] lpSecurityDescriptor;

    public byte[] getLpSecurityDescriptor() {
        return this.lpSecurityDescriptor;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalDeferrals(PacketOutput packetOutput) throws IOException {
        if (this.lpSecurityDescriptor != null) {
            packetOutput.align(Alignment.FOUR);
            packetOutput.writeInt(this.cbInSecurityDescriptor);
            packetOutput.writeInt(0);
            packetOutput.writeInt(this.lpSecurityDescriptor.length);
            packetOutput.write(this.lpSecurityDescriptor);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) throws IOException {
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeReferentID(this.lpSecurityDescriptor);
        packetOutput.writeInt(this.cbInSecurityDescriptor);
        packetOutput.writeInt(0);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalPreamble(PacketOutput packetOutput) {
    }

    public void setCbInSecurityDescriptor(int i10) {
        this.cbInSecurityDescriptor = i10;
    }

    public void setLpSecurityDescriptor(byte[] bArr) {
        this.lpSecurityDescriptor = bArr;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) throws UnmarshalException {
        if (this.lpSecurityDescriptor != null) {
            packetInput.align(Alignment.FOUR);
            packetInput.fullySkipBytes(4);
            packetInput.fullySkipBytes(packetInput.readIndex("Offset"));
            int index = packetInput.readIndex("ActualCount");
            byte[] bArr = this.lpSecurityDescriptor;
            if (index != bArr.length) {
                throw new UnmarshalException(String.format("AcutalCount of the conformant varying array does not match cbOutSecurityDescriptor: %d != %d", Integer.valueOf(index), Integer.valueOf(this.lpSecurityDescriptor.length)));
            }
            packetInput.readRawBytes(bArr);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) throws UnmarshalException {
        packetInput.align(Alignment.FOUR);
        boolean z = packetInput.readReferentID() != 0;
        packetInput.fullySkipBytes(4);
        int index = packetInput.readIndex("cbOutSecurityDescriptor");
        if (z) {
            this.lpSecurityDescriptor = new byte[index];
        } else {
            this.lpSecurityDescriptor = null;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}

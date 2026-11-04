package com.rapid7.client.dcerpc;

import com.hierynomus.protocol.commons.EnumWithValue;
import com.rapid7.client.dcerpc.io.Hexify;
import com.rapid7.client.dcerpc.io.HexifyImpl;
import com.rapid7.client.dcerpc.io.Packet;
import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import java.io.IOException;
import java.util.Set;

/* loaded from: classes.dex */
public class Header extends HexifyImpl implements Packet, Hexify {
    private PDUType pduType;
    private Set<PFCFlag> pfcFlags;
    private byte majorVersion = 5;
    private byte minorVersion = 0;
    private byte[] ndr = {16, 0, 0, 0};
    private short fragLength = 16;
    private short authLength = 0;
    private int callID = 0;

    public int getAuthLength() {
        return this.authLength;
    }

    public int getCallID() {
        return this.callID;
    }

    public int getFragLength() {
        return this.fragLength;
    }

    public byte getMajorVersion() {
        return this.majorVersion;
    }

    public byte getMinorVersion() {
        return this.minorVersion;
    }

    public byte[] getNDR() {
        return this.ndr;
    }

    public PDUType getPDUType() {
        return this.pduType;
    }

    public Set<PFCFlag> getPFCFlags() {
        return this.pfcFlags;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void marshal(PacketOutput packetOutput) throws IOException {
        if (getPDUType() == null) {
            throw new IllegalStateException("Invalid PDU type: " + getPDUType());
        }
        if (getPFCFlags() == null) {
            throw new IllegalStateException("Invalid PFC flag(s): " + getPFCFlags());
        }
        packetOutput.writeByte(getMajorVersion());
        packetOutput.writeByte(getMinorVersion());
        packetOutput.writeByte((byte) getPDUType().getValue());
        packetOutput.writeByte((byte) EnumWithValue.EnumUtils.toLong(getPFCFlags()));
        packetOutput.write(getNDR());
        packetOutput.writeShort(getFragLength());
        packetOutput.writeShort(0);
        packetOutput.writeInt(getCallID());
    }

    public void setAuthLength(short s8) {
        this.authLength = s8;
    }

    public void setCallID(int i10) {
        this.callID = i10;
    }

    public void setFragLength(short s8) {
        this.fragLength = s8;
    }

    public void setMajorVersion(byte b10) {
        this.majorVersion = b10;
    }

    public void setMinorVersion(byte b10) {
        this.minorVersion = b10;
    }

    public void setNDR(byte[] bArr) {
        this.ndr = bArr;
    }

    public void setPDUType(PDUType pDUType) {
        this.pduType = pDUType;
    }

    public void setPFCFlags(Set<PFCFlag> set) {
        this.pfcFlags = set;
    }

    @Override // com.rapid7.client.dcerpc.io.Packet
    public void unmarshal(PacketInput packetInput) throws IOException {
        setMajorVersion(packetInput.readByte());
        setMinorVersion(packetInput.readByte());
        if (5 != getMajorVersion() || getMinorVersion() != 0) {
            throw new IOException(String.format("Version mismatch: %d.%d != 5.0", Byte.valueOf(getMajorVersion()), Byte.valueOf(getMinorVersion())));
        }
        PDUType pDUType = (PDUType) EnumWithValue.EnumUtils.valueOf(packetInput.readByte(), PDUType.class, null);
        if (pDUType == null) {
            throw new IOException(String.format("PDU type invalid: %d", pDUType));
        }
        setPDUType(pDUType);
        setPFCFlags(EnumWithValue.EnumUtils.toEnumSet(packetInput.readByte(), PFCFlag.class));
        byte[] bArr = new byte[4];
        packetInput.readFully(bArr);
        if (bArr[0] != 16) {
            throw new IOException(String.format("Integer and Character representation mismatch: %d", Byte.valueOf(bArr[0])));
        }
        if (bArr[1] != 0) {
            throw new IOException(String.format("Floating-Point representation mismatch: %d", Byte.valueOf(bArr[1])));
        }
        setNDR(bArr);
        setFragLength(packetInput.readShort());
        setAuthLength(packetInput.readShort());
        setCallID(packetInput.readInt());
    }
}

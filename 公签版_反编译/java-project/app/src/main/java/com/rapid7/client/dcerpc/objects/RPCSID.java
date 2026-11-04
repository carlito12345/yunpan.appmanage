package com.rapid7.client.dcerpc.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.PacketOutput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Marshallable;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import j$.util.Objects;
import java.io.IOException;
import java.rmi.MarshalException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class RPCSID implements Unmarshallable, Marshallable {
    private byte[] identifierAuthority;
    private char revision;
    private long[] subAuthority;
    private char subAuthorityCount;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RPCSID)) {
            return false;
        }
        RPCSID rpcsid = (RPCSID) obj;
        return getRevision() == rpcsid.getRevision() && getSubAuthorityCount() == rpcsid.getSubAuthorityCount() && Arrays.equals(getIdentifierAuthority(), rpcsid.getIdentifierAuthority()) && Arrays.equals(getSubAuthority(), rpcsid.getSubAuthority());
    }

    public byte[] getIdentifierAuthority() {
        return this.identifierAuthority;
    }

    public char getRevision() {
        return this.revision;
    }

    public long[] getSubAuthority() {
        return this.subAuthority;
    }

    public char getSubAuthorityCount() {
        return this.subAuthorityCount;
    }

    public int hashCode() {
        return Arrays.hashCode(getSubAuthority()) + ((Arrays.hashCode(getIdentifierAuthority()) + (Objects.hash(Character.valueOf(getRevision()), Character.valueOf(getSubAuthorityCount())) * 31)) * 31);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalDeferrals(PacketOutput packetOutput) {
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.MarshalException */
    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalEntity(PacketOutput packetOutput) throws IOException, MarshalException {
        if (this.subAuthorityCount != this.subAuthority.length) {
            throw new MarshalException(String.format("SubAuthorityCount (%d) != SubAuthority[] length (%d)", Integer.valueOf(this.subAuthorityCount), Integer.valueOf(this.subAuthority.length)));
        }
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeByte(this.revision);
        packetOutput.writeByte(this.subAuthorityCount);
        packetOutput.write(this.identifierAuthority, 0, 6);
        for (long j10 : this.subAuthority) {
            packetOutput.writeInt((int) j10);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Marshallable
    public void marshalPreamble(PacketOutput packetOutput) throws IOException {
        packetOutput.align(Alignment.FOUR);
        packetOutput.writeInt(this.subAuthority.length);
    }

    public void setIdentifierAuthority(byte[] bArr) {
        this.identifierAuthority = bArr;
    }

    public void setRevision(char c7) {
        this.revision = c7;
    }

    public void setSubAuthority(long[] jArr) {
        this.subAuthority = jArr;
        this.subAuthorityCount = (char) jArr.length;
    }

    public String toString() {
        return String.format("RPC_SID{Revision:%d, SubAuthorityCount:%d, IdentifierAuthority:%s, SubAuthority: %s}", Integer.valueOf(getRevision()), Integer.valueOf(getSubAuthorityCount()), Arrays.toString(getIdentifierAuthority()), Arrays.toString(getSubAuthority()));
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.revision = packetInput.readUnsignedByte();
        this.subAuthorityCount = packetInput.readUnsignedByte();
        byte[] bArr = new byte[6];
        this.identifierAuthority = bArr;
        packetInput.readRawBytes(bArr);
        this.subAuthority = new long[this.subAuthorityCount];
        int i10 = 0;
        while (true) {
            long[] jArr = this.subAuthority;
            if (i10 >= jArr.length) {
                return;
            }
            jArr[i10] = packetInput.readUnsignedInt();
            i10++;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        packetInput.fullySkipBytes(4);
    }
}

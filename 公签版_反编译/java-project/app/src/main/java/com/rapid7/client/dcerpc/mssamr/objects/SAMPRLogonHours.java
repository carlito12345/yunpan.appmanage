package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SAMPRLogonHours implements Unmarshallable {
    private byte[] logonHours;
    private short unitsPerWeek;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SAMPRLogonHours)) {
            return false;
        }
        SAMPRLogonHours sAMPRLogonHours = (SAMPRLogonHours) obj;
        return getUnitsPerWeek() == sAMPRLogonHours.getUnitsPerWeek() && Arrays.equals(getLogonHours(), sAMPRLogonHours.getLogonHours());
    }

    public byte[] getLogonHours() {
        return this.logonHours;
    }

    public short getUnitsPerWeek() {
        return this.unitsPerWeek;
    }

    public int hashCode() {
        return Arrays.hashCode(this.logonHours) + (this.unitsPerWeek * 31);
    }

    public void setLogonHours(byte[] bArr) {
        this.logonHours = bArr;
    }

    public void setUnitsPerWeek(short s8) {
        this.unitsPerWeek = s8;
    }

    public String toString() {
        Short shValueOf = Short.valueOf(this.unitsPerWeek);
        byte[] bArr = this.logonHours;
        return String.format("SAMPR_LOGON_HOURS{UnitsPerWeek:%d,size(LogonHours):%s}", shValueOf, bArr == null ? "null" : Integer.valueOf(bArr.length));
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        if (this.logonHours == null) {
            return;
        }
        packetInput.align(Alignment.FOUR);
        packetInput.fullySkipBytes(4);
        packetInput.fullySkipBytes(4);
        packetInput.fullySkipBytes(4);
        int i10 = 0;
        while (true) {
            byte[] bArr = this.logonHours;
            if (i10 >= bArr.length) {
                return;
            }
            bArr[i10] = packetInput.readByte();
            i10++;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.unitsPerWeek = packetInput.readShort();
        packetInput.fullySkipBytes(2);
        if (packetInput.readReferentID() != 0) {
            this.logonHours = new byte[(this.unitsPerWeek + 7) / 8];
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}

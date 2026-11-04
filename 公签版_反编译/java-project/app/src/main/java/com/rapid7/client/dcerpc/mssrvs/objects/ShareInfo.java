package com.rapid7.client.dcerpc.mssrvs.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.objects.WChar;
import j$.util.Objects;

/* loaded from: classes.dex */
public class ShareInfo implements Unmarshallable {
    private WChar.NullTerminated netName;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ShareInfo) {
            return Objects.equals(this.netName, ((ShareInfo) obj).netName);
        }
        return false;
    }

    public WChar.NullTerminated getNetName() {
        return this.netName;
    }

    public int hashCode() {
        return Objects.hash(this.netName);
    }

    public void setNetName(WChar.NullTerminated nullTerminated) {
        this.netName = nullTerminated;
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        WChar.NullTerminated nullTerminated = this.netName;
        if (nullTerminated != null) {
            packetInput.readUnmarshallable(nullTerminated);
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        if (packetInput.readReferentID() != 0) {
            this.netName = new WChar.NullTerminated();
        } else {
            this.netName = null;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}

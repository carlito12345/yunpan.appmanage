package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import g.b;
import java.util.Arrays;

/* loaded from: classes.dex */
public class LSAPRTranslatedNames implements Unmarshallable {
    private LSAPRTranslatedName[] names;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LSAPRTranslatedNames) {
            return Arrays.equals(this.names, ((LSAPRTranslatedNames) obj).names);
        }
        return false;
    }

    public LSAPRTranslatedName[] getNames() {
        return this.names;
    }

    public int hashCode() {
        return Arrays.hashCode(this.names);
    }

    public String toString() {
        return b.A("LSAPR_TRANSLATED_NAMES{Names:", Arrays.toString(this.names), "}");
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        LSAPRTranslatedName[] lSAPRTranslatedNameArr;
        if (this.names != null) {
            packetInput.align(Alignment.FOUR);
            packetInput.fullySkipBytes(4);
            int i10 = 0;
            while (true) {
                lSAPRTranslatedNameArr = this.names;
                if (i10 >= lSAPRTranslatedNameArr.length) {
                    break;
                }
                LSAPRTranslatedName lSAPRTranslatedName = new LSAPRTranslatedName();
                lSAPRTranslatedName.unmarshalPreamble(packetInput);
                this.names[i10] = lSAPRTranslatedName;
                i10++;
            }
            for (LSAPRTranslatedName lSAPRTranslatedName2 : lSAPRTranslatedNameArr) {
                lSAPRTranslatedName2.unmarshalEntity(packetInput);
            }
            for (LSAPRTranslatedName lSAPRTranslatedName3 : this.names) {
                lSAPRTranslatedName3.unmarshalDeferrals(packetInput);
            }
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        int i10 = packetInput.readInt();
        if (packetInput.readReferentID() != 0) {
            this.names = new LSAPRTranslatedName[i10];
        } else {
            this.names = null;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}

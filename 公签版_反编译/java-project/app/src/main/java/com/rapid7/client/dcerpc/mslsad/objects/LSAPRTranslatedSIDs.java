package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import da.b;
import java.util.Arrays;

/* loaded from: classes.dex */
public class LSAPRTranslatedSIDs implements Unmarshallable {
    private LSAPRTranslatedSID[] sids;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LSAPRTranslatedSIDs) {
            return Arrays.equals(this.sids, ((LSAPRTranslatedSIDs) obj).sids);
        }
        return false;
    }

    public LSAPRTranslatedSID[] getSIDs() {
        return this.sids;
    }

    public int hashCode() {
        return Arrays.hashCode(this.sids);
    }

    public String toString() {
        return b.c("LSAPR_TRANSLATED_SIDS{Sids:", Arrays.toString(this.sids));
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        LSAPRTranslatedSID[] lSAPRTranslatedSIDArr;
        if (this.sids != null) {
            packetInput.align(Alignment.FOUR);
            packetInput.fullySkipBytes(4);
            int i10 = 0;
            while (true) {
                lSAPRTranslatedSIDArr = this.sids;
                if (i10 >= lSAPRTranslatedSIDArr.length) {
                    break;
                }
                LSAPRTranslatedSID lSAPRTranslatedSID = new LSAPRTranslatedSID();
                lSAPRTranslatedSID.unmarshalPreamble(packetInput);
                this.sids[i10] = lSAPRTranslatedSID;
                i10++;
            }
            for (LSAPRTranslatedSID lSAPRTranslatedSID2 : lSAPRTranslatedSIDArr) {
                lSAPRTranslatedSID2.unmarshalEntity(packetInput);
            }
            for (LSAPRTranslatedSID lSAPRTranslatedSID3 : this.sids) {
                lSAPRTranslatedSID3.unmarshalDeferrals(packetInput);
            }
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        int i10 = packetInput.readInt();
        if (packetInput.readReferentID() != 0) {
            this.sids = new LSAPRTranslatedSID[i10];
        } else {
            this.sids = null;
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}

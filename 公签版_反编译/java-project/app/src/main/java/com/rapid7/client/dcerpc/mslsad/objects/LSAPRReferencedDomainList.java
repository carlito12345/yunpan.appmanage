package com.rapid7.client.dcerpc.mslsad.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import g.b;
import java.util.Arrays;

/* loaded from: classes.dex */
public class LSAPRReferencedDomainList implements Unmarshallable {
    private LSAPRTrustInformation[] domains;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LSAPRReferencedDomainList) {
            return Arrays.equals(this.domains, ((LSAPRReferencedDomainList) obj).domains);
        }
        return false;
    }

    public LSAPRTrustInformation[] getDomains() {
        return this.domains;
    }

    public int hashCode() {
        return Arrays.hashCode(this.domains);
    }

    public String toString() {
        return b.A("LSAPRReferencedDomainList{domains:", Arrays.toString(this.domains), "}");
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        LSAPRTrustInformation[] lSAPRTrustInformationArr;
        if (this.domains != null) {
            packetInput.align(Alignment.FOUR);
            packetInput.fullySkipBytes(4);
            int i10 = 0;
            while (true) {
                lSAPRTrustInformationArr = this.domains;
                if (i10 >= lSAPRTrustInformationArr.length) {
                    break;
                }
                LSAPRTrustInformation lSAPRTrustInformation = new LSAPRTrustInformation();
                lSAPRTrustInformation.unmarshalPreamble(packetInput);
                this.domains[i10] = lSAPRTrustInformation;
                i10++;
            }
            for (LSAPRTrustInformation lSAPRTrustInformation2 : lSAPRTrustInformationArr) {
                lSAPRTrustInformation2.unmarshalEntity(packetInput);
            }
            for (LSAPRTrustInformation lSAPRTrustInformation3 : this.domains) {
                lSAPRTrustInformation3.unmarshalDeferrals(packetInput);
            }
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        int i10 = packetInput.readInt();
        if (packetInput.readReferentID() != 0) {
            this.domains = new LSAPRTrustInformation[i10];
        } else {
            this.domains = null;
        }
        packetInput.fullySkipBytes(4);
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}

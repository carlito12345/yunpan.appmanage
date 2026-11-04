package org.bouncycastle.asn1.dvcs;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import da.b;
import java.math.BigInteger;
import l2.z;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1GeneralizedTime;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.x509.Extensions;
import org.bouncycastle.asn1.x509.GeneralNames;
import org.bouncycastle.asn1.x509.PolicyInformation;

/* loaded from: classes.dex */
public class DVCSRequestInformation extends ASN1Object {
    private static final int DEFAULT_VERSION = 1;
    private static final int TAG_DATA_LOCATIONS = 3;
    private static final int TAG_DVCS = 2;
    private static final int TAG_EXTENSIONS = 4;
    private static final int TAG_REQUESTER = 0;
    private static final int TAG_REQUEST_POLICY = 1;
    private GeneralNames dataLocations;
    private GeneralNames dvcs;
    private Extensions extensions;
    private BigInteger nonce;
    private PolicyInformation requestPolicy;
    private DVCSTime requestTime;
    private GeneralNames requester;
    private ServiceType service;
    private int version;

    private DVCSRequestInformation(ASN1Sequence aSN1Sequence) {
        int i10;
        this.version = 1;
        if (aSN1Sequence.getObjectAt(0) instanceof ASN1Integer) {
            this.version = z.b(aSN1Sequence, 0);
            i10 = 1;
        } else {
            this.version = 1;
            i10 = 0;
        }
        this.service = ServiceType.getInstance(aSN1Sequence.getObjectAt(i10));
        for (int i11 = i10 + 1; i11 < aSN1Sequence.size(); i11++) {
            ASN1Encodable objectAt = aSN1Sequence.getObjectAt(i11);
            if (objectAt instanceof ASN1Integer) {
                this.nonce = ASN1Integer.getInstance(objectAt).getValue();
            } else if (!(objectAt instanceof ASN1GeneralizedTime) && (objectAt instanceof ASN1TaggedObject)) {
                ASN1TaggedObject aSN1TaggedObject = ASN1TaggedObject.getInstance(objectAt);
                int tagNo = aSN1TaggedObject.getTagNo();
                if (tagNo == 0) {
                    this.requester = GeneralNames.getInstance(aSN1TaggedObject, false);
                } else if (tagNo == 1) {
                    this.requestPolicy = PolicyInformation.getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, false));
                } else if (tagNo == 2) {
                    this.dvcs = GeneralNames.getInstance(aSN1TaggedObject, false);
                } else if (tagNo == 3) {
                    this.dataLocations = GeneralNames.getInstance(aSN1TaggedObject, false);
                } else {
                    if (tagNo != 4) {
                        throw new IllegalArgumentException(b.a(tagNo, "unknown tag number encountered: "));
                    }
                    this.extensions = Extensions.getInstance(aSN1TaggedObject, false);
                }
            } else {
                this.requestTime = DVCSTime.getInstance(objectAt);
            }
        }
    }

    public static DVCSRequestInformation getInstance(Object obj) {
        if (obj instanceof DVCSRequestInformation) {
            return (DVCSRequestInformation) obj;
        }
        if (obj != null) {
            return new DVCSRequestInformation(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GeneralNames getDVCS() {
        return this.dvcs;
    }

    public GeneralNames getDataLocations() {
        return this.dataLocations;
    }

    public Extensions getExtensions() {
        return this.extensions;
    }

    public BigInteger getNonce() {
        return this.nonce;
    }

    public PolicyInformation getRequestPolicy() {
        return this.requestPolicy;
    }

    public DVCSTime getRequestTime() {
        return this.requestTime;
    }

    public GeneralNames getRequester() {
        return this.requester;
    }

    public ServiceType getService() {
        return this.service;
    }

    public int getVersion() {
        return this.version;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector(9);
        if (this.version != 1) {
            aSN1EncodableVector.add(new ASN1Integer(this.version));
        }
        aSN1EncodableVector.add(this.service);
        if (this.nonce != null) {
            aSN1EncodableVector.add(new ASN1Integer(this.nonce));
        }
        DVCSTime dVCSTime = this.requestTime;
        if (dVCSTime != null) {
            aSN1EncodableVector.add(dVCSTime);
        }
        int[] iArr = {0, 1, 2, 3, 4};
        ASN1Encodable[] aSN1EncodableArr = {this.requester, this.requestPolicy, this.dvcs, this.dataLocations, this.extensions};
        for (int i10 = 0; i10 < 5; i10++) {
            int i11 = iArr[i10];
            ASN1Encodable aSN1Encodable = aSN1EncodableArr[i10];
            if (aSN1Encodable != null) {
                aSN1EncodableVector.add(new DERTaggedObject(false, i11, aSN1Encodable));
            }
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("DVCSRequestInformation {\n");
        if (this.version != 1) {
            sb2.append("version: " + this.version + SignParameters.NEW_LINE);
        }
        sb2.append("service: " + this.service + SignParameters.NEW_LINE);
        if (this.nonce != null) {
            sb2.append("nonce: " + this.nonce + SignParameters.NEW_LINE);
        }
        if (this.requestTime != null) {
            sb2.append("requestTime: " + this.requestTime + SignParameters.NEW_LINE);
        }
        if (this.requester != null) {
            sb2.append("requester: " + this.requester + SignParameters.NEW_LINE);
        }
        if (this.requestPolicy != null) {
            sb2.append("requestPolicy: " + this.requestPolicy + SignParameters.NEW_LINE);
        }
        if (this.dvcs != null) {
            sb2.append("dvcs: " + this.dvcs + SignParameters.NEW_LINE);
        }
        if (this.dataLocations != null) {
            sb2.append("dataLocations: " + this.dataLocations + SignParameters.NEW_LINE);
        }
        if (this.extensions != null) {
            sb2.append("extensions: " + this.extensions + SignParameters.NEW_LINE);
        }
        sb2.append("}\n");
        return sb2.toString();
    }

    public static DVCSRequestInformation getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z));
    }
}

package fe;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1BitString;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1OutputStream;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

/* loaded from: classes.dex */
public final class a extends c {

    /* renamed from: e, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f5793e = new ASN1ObjectIdentifier("1.3.6.1.5.5.2");

    /* renamed from: c, reason: collision with root package name */
    public final ASN1ObjectIdentifier[] f5794c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5795d;

    public a(ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr, int i10, byte[] bArr) {
        this.f5794c = aSN1ObjectIdentifierArr;
        this.f5795d = i10;
        this.f5798a = bArr;
        this.f5799b = null;
    }

    @Override // fe.c
    public final byte[] i() {
        try {
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = this.f5794c;
            if (aSN1ObjectIdentifierArr != null) {
                ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                for (ASN1ObjectIdentifier aSN1ObjectIdentifier : aSN1ObjectIdentifierArr) {
                    aSN1EncodableVector2.add(aSN1ObjectIdentifier);
                }
                aSN1EncodableVector.add(new DERTaggedObject(true, 0, (ASN1Encodable) new DERSequence(aSN1EncodableVector2)));
            }
            int i10 = this.f5795d;
            if (i10 != 0) {
                aSN1EncodableVector.add(new DERTaggedObject(true, 1, (ASN1Encodable) new DERBitString(i10)));
            }
            byte[] bArr = (byte[]) this.f5798a;
            if (bArr != null) {
                aSN1EncodableVector.add(new DERTaggedObject(true, 2, (ASN1Encodable) new DEROctetString(bArr)));
            }
            byte[] bArr2 = (byte[]) this.f5799b;
            if (bArr2 != null) {
                aSN1EncodableVector.add(new DERTaggedObject(true, 3, (ASN1Encodable) new DEROctetString(bArr2)));
            }
            ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
            aSN1EncodableVector3.add(f5793e);
            aSN1EncodableVector3.add(new DERTaggedObject(true, 0, (ASN1Encodable) new DERSequence(aSN1EncodableVector)));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ASN1OutputStream.create(byteArrayOutputStream, ASN1Encoding.DER).writeObject((ASN1Primitive) new DERTaggedObject(false, 64, 0, (ASN1Encodable) new DERSequence(aSN1EncodableVector3)));
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e7) {
            throw new IllegalStateException(e7.getMessage());
        }
    }

    public final String toString() {
        byte[] bArr = (byte[]) this.f5799b;
        return String.format("NegTokenInit[flags=%d,mechs=%s,mic=%s]", Integer.valueOf(this.f5795d), Arrays.toString(this.f5794c), bArr != null ? ge.a.m(bArr, 0, bArr.length) : null);
    }

    public a(byte[] bArr) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        ASN1InputStream aSN1InputStream = new ASN1InputStream(bArr);
        try {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1InputStream.readObject();
            if (aSN1TaggedObject == null || aSN1TaggedObject.getTagClass() != 64 || !(aSN1TaggedObject.getBaseObject() instanceof ASN1Sequence)) {
                throw new IOException("Malformed SPNEGO token " + aSN1TaggedObject);
            }
            ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1TaggedObject.getBaseObject();
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) aSN1Sequence.getObjectAt(0);
            if (f5793e.equals((ASN1Primitive) aSN1ObjectIdentifier)) {
                ASN1TaggedObject aSN1TaggedObject2 = (ASN1TaggedObject) aSN1Sequence.getObjectAt(1);
                if (aSN1TaggedObject2.getTagNo() == 0) {
                    Enumeration objects = ASN1Sequence.getInstance(aSN1TaggedObject2, true).getObjects();
                    while (objects.hasMoreElements()) {
                        ASN1TaggedObject aSN1TaggedObject3 = (ASN1TaggedObject) objects.nextElement();
                        int tagNo = aSN1TaggedObject3.getTagNo();
                        if (tagNo == 0) {
                            ASN1Sequence aSN1Sequence2 = ASN1Sequence.getInstance(aSN1TaggedObject3, true);
                            int size = aSN1Sequence2.size();
                            ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = new ASN1ObjectIdentifier[size];
                            for (int i10 = size - 1; i10 >= 0; i10--) {
                                aSN1ObjectIdentifierArr[i10] = (ASN1ObjectIdentifier) aSN1Sequence2.getObjectAt(i10);
                            }
                            this.f5794c = aSN1ObjectIdentifierArr;
                        } else if (tagNo == 1) {
                            this.f5795d = ASN1BitString.getInstance(aSN1TaggedObject3, true).getBytes()[0] & 255;
                        } else if (tagNo != 2) {
                            if (tagNo != 3) {
                                if (tagNo != 4) {
                                    throw new IOException("Malformed token field.");
                                }
                            } else if (!(aSN1TaggedObject3.getBaseObject() instanceof DEROctetString)) {
                            }
                            this.f5799b = ASN1OctetString.getInstance(aSN1TaggedObject3, true).getOctets();
                        } else {
                            this.f5798a = ASN1OctetString.getInstance(aSN1TaggedObject3, true).getOctets();
                        }
                    }
                    aSN1InputStream.close();
                    return;
                }
                throw new IOException("Malformed SPNEGO token: tag " + aSN1TaggedObject2.getTagNo() + " " + aSN1TaggedObject2);
            }
            throw new IOException("Malformed SPNEGO token, OID " + aSN1ObjectIdentifier);
        } catch (Throwable th2) {
            try {
                aSN1InputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }
}

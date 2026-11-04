package fe;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1OutputStream;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERTaggedObject;

/* loaded from: classes.dex */
public final class b extends c {

    /* renamed from: c, reason: collision with root package name */
    public final ASN1ObjectIdentifier f5796c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5797d;

    public b(byte[] bArr, byte[] bArr2) {
        this.f5797d = -1;
        this.f5796c = null;
        this.f5798a = bArr;
        this.f5799b = bArr2;
    }

    @Override // fe.c
    public final byte[] i() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ASN1OutputStream aSN1OutputStreamCreate = ASN1OutputStream.create(byteArrayOutputStream, ASN1Encoding.DER);
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            int i10 = this.f5797d;
            if (i10 != -1) {
                aSN1EncodableVector.add(new DERTaggedObject(true, 0, (ASN1Encodable) new ASN1Enumerated(i10)));
            }
            ASN1ObjectIdentifier aSN1ObjectIdentifier = this.f5796c;
            if (aSN1ObjectIdentifier != null) {
                aSN1EncodableVector.add(new DERTaggedObject(true, 1, (ASN1Encodable) aSN1ObjectIdentifier));
            }
            byte[] bArr = (byte[]) this.f5798a;
            if (bArr != null) {
                aSN1EncodableVector.add(new DERTaggedObject(true, 2, (ASN1Encodable) new DEROctetString(bArr)));
            }
            byte[] bArr2 = (byte[]) this.f5799b;
            if (bArr2 != null) {
                aSN1EncodableVector.add(new DERTaggedObject(true, 3, (ASN1Encodable) new DEROctetString(bArr2)));
            }
            aSN1OutputStreamCreate.writeObject((ASN1Primitive) new DERTaggedObject(true, 1, (ASN1Encodable) new DERSequence(aSN1EncodableVector)));
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e7) {
            throw new IllegalStateException(e7.getMessage());
        }
    }

    public b(byte[] bArr) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        this.f5797d = -1;
        ASN1InputStream aSN1InputStream = new ASN1InputStream(bArr);
        try {
            Enumeration objects = ASN1Sequence.getInstance((ASN1TaggedObject) aSN1InputStream.readObject(), true).getObjects();
            while (objects.hasMoreElements()) {
                ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) objects.nextElement();
                int tagNo = aSN1TaggedObject.getTagNo();
                if (tagNo == 0) {
                    this.f5797d = ASN1Enumerated.getInstance(aSN1TaggedObject, true).getValue().intValue();
                } else if (tagNo == 1) {
                    this.f5796c = ASN1ObjectIdentifier.getInstance(aSN1TaggedObject, true);
                } else if (tagNo == 2) {
                    this.f5798a = ASN1OctetString.getInstance(aSN1TaggedObject, true).getOctets();
                } else if (tagNo == 3) {
                    this.f5799b = ASN1OctetString.getInstance(aSN1TaggedObject, true).getOctets();
                } else {
                    throw new IOException("Malformed token field.");
                }
            }
            aSN1InputStream.close();
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

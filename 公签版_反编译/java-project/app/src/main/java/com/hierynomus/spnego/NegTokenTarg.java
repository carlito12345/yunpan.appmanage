package com.hierynomus.spnego;

import com.hierynomus.asn1.ASN1InputStream;
import com.hierynomus.asn1.ASN1OutputStream;
import com.hierynomus.asn1.encodingrules.der.DERDecoder;
import com.hierynomus.asn1.encodingrules.der.DEREncoder;
import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Tag;
import com.hierynomus.asn1.types.constructed.ASN1Sequence;
import com.hierynomus.asn1.types.constructed.ASN1TaggedObject;
import com.hierynomus.asn1.types.primitive.ASN1Enumerated;
import com.hierynomus.asn1.types.primitive.ASN1ObjectIdentifier;
import com.hierynomus.asn1.types.string.ASN1OctetString;
import com.hierynomus.protocol.commons.buffer.Buffer;
import com.hierynomus.protocol.commons.buffer.Endian;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class NegTokenTarg extends SpnegoToken {
    private byte[] mechListMic;
    private BigInteger negotiationResult;
    private byte[] responseToken;
    private ASN1ObjectIdentifier supportedMech;

    public NegTokenTarg() {
        super(1, "NegTokenTarg");
    }

    private void readMechListMIC(ASN1Object<?> aSN1Object) throws SpnegoException {
        if (aSN1Object instanceof ASN1OctetString) {
            this.mechListMic = ((ASN1OctetString) aSN1Object).getValue();
        } else {
            throw new SpnegoException("Expected the responseToken (OCTET_STRING) contents, not: " + aSN1Object);
        }
    }

    private void readNegResult(ASN1Object<?> aSN1Object) throws SpnegoException {
        if (aSN1Object instanceof ASN1Enumerated) {
            this.negotiationResult = ((ASN1Enumerated) aSN1Object).getValue();
        } else {
            throw new SpnegoException("Expected the negResult (ENUMERATED) contents, not: " + this.supportedMech);
        }
    }

    private void readResponseToken(ASN1Object<?> aSN1Object) throws SpnegoException {
        if (aSN1Object instanceof ASN1OctetString) {
            this.responseToken = ((ASN1OctetString) aSN1Object).getValue();
        } else {
            throw new SpnegoException("Expected the responseToken (OCTET_STRING) contents, not: " + aSN1Object);
        }
    }

    private void readSupportedMech(ASN1Object<?> aSN1Object) throws SpnegoException {
        if (aSN1Object instanceof ASN1ObjectIdentifier) {
            this.supportedMech = (ASN1ObjectIdentifier) aSN1Object;
        } else {
            throw new SpnegoException("Expected the supportedMech (OBJECT IDENTIFIER) contents, not: " + aSN1Object);
        }
    }

    public byte[] getMechListMic() {
        return this.mechListMic;
    }

    public BigInteger getNegotiationResult() {
        return this.negotiationResult;
    }

    public byte[] getResponseToken() {
        return this.responseToken;
    }

    public ASN1ObjectIdentifier getSupportedMech() {
        return this.supportedMech;
    }

    @Override // com.hierynomus.spnego.SpnegoToken
    public void parseTagged(ASN1TaggedObject aSN1TaggedObject) throws SpnegoException {
        int tagNo = aSN1TaggedObject.getTagNo();
        if (tagNo == 0) {
            readNegResult(aSN1TaggedObject.getObject());
            return;
        }
        if (tagNo == 1) {
            readSupportedMech(aSN1TaggedObject.getObject());
            return;
        }
        if (tagNo == 2) {
            readResponseToken(aSN1TaggedObject.getObject());
        } else {
            if (tagNo == 3) {
                readMechListMIC(aSN1TaggedObject.getObject());
                return;
            }
            throw new SpnegoException("Unknown Object Tag " + aSN1TaggedObject.getTagNo() + " encountered.");
        }
    }

    public NegTokenTarg read(byte[] bArr) {
        return read(new Buffer.PlainBuffer(bArr, Endian.LE));
    }

    public void setMechListMic(byte[] bArr) {
        this.mechListMic = bArr;
    }

    public void setNegotiationResult(BigInteger bigInteger) {
        this.negotiationResult = bigInteger;
    }

    public void setResponseToken(byte[] bArr) {
        this.responseToken = bArr;
    }

    public void setSupportedMech(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.supportedMech = aSN1ObjectIdentifier;
    }

    @Override // com.hierynomus.spnego.SpnegoToken
    public void write(Buffer<?> buffer) throws IllegalAccessException, SpnegoException, IllegalArgumentException, InvocationTargetException {
        ArrayList arrayList = new ArrayList();
        try {
            if (this.negotiationResult != null) {
                arrayList.add(new ASN1TaggedObject(ASN1Tag.contextSpecific(0).constructed(), new ASN1Enumerated(this.negotiationResult)));
            }
            if (this.supportedMech != null) {
                arrayList.add(new ASN1TaggedObject(ASN1Tag.contextSpecific(1).constructed(), this.supportedMech));
            }
            byte[] bArr = this.responseToken;
            if (bArr != null && bArr.length > 0) {
                arrayList.add(new ASN1TaggedObject(ASN1Tag.contextSpecific(2).constructed(), new ASN1OctetString(this.responseToken)));
            }
            byte[] bArr2 = this.mechListMic;
            if (bArr2 != null && bArr2.length > 0) {
                arrayList.add(new ASN1TaggedObject(ASN1Tag.contextSpecific(3).constructed(), new ASN1OctetString(this.mechListMic)));
            }
            writeGss(buffer, new ASN1Sequence(arrayList));
        } catch (IOException e7) {
            throw new SpnegoException("Could not write NegTokenTarg to buffer", e7);
        }
    }

    @Override // com.hierynomus.spnego.SpnegoToken
    public void writeGss(Buffer<?> buffer, ASN1Object<?> aSN1Object) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        ASN1TaggedObject aSN1TaggedObject = new ASN1TaggedObject(ASN1Tag.contextSpecific(1).constructed(), (ASN1Object) aSN1Object, true);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(new DEREncoder(), byteArrayOutputStream);
        try {
            aSN1OutputStream.writeObject(aSN1TaggedObject);
            aSN1OutputStream.close();
            buffer.putRawBytes(byteArrayOutputStream.toByteArray());
        } catch (Throwable th2) {
            try {
                aSN1OutputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused) {
                }
            }
            throw th2;
        }
    }

    private NegTokenTarg read(Buffer<?> buffer) throws IllegalAccessException, IOException, SpnegoException, IllegalArgumentException, InvocationTargetException {
        try {
            ASN1InputStream aSN1InputStream = new ASN1InputStream(new DERDecoder(), buffer.asInputStream());
            try {
                parseSpnegoToken(aSN1InputStream.readObject());
                aSN1InputStream.close();
                return this;
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
        } catch (IOException e7) {
            throw new SpnegoException("Could not read NegTokenTarg from buffer", e7);
        }
    }
}

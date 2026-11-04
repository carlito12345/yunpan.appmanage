package com.hierynomus.spnego;

import com.hierynomus.asn1.ASN1OutputStream;
import com.hierynomus.asn1.encodingrules.der.DEREncoder;
import com.hierynomus.asn1.types.ASN1Object;
import com.hierynomus.asn1.types.ASN1Tag;
import com.hierynomus.asn1.types.constructed.ASN1Sequence;
import com.hierynomus.asn1.types.constructed.ASN1TaggedObject;
import com.hierynomus.protocol.commons.buffer.Buffer;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class SpnegoToken {
    private String tokenName;
    private int tokenTagNo;

    public SpnegoToken(int i10, String str) {
        this.tokenTagNo = i10;
        this.tokenName = str;
    }

    public void parseSpnegoToken(ASN1Object<?> aSN1Object) throws IllegalAccessException, IOException, SpnegoException, IllegalArgumentException, InvocationTargetException {
        if (aSN1Object instanceof ASN1TaggedObject) {
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Object;
            if (aSN1TaggedObject.getTagNo() == this.tokenTagNo) {
                ASN1Object object = aSN1TaggedObject.getObject();
                if (!(object instanceof ASN1Sequence)) {
                    throw new SpnegoException("Expected a " + this.tokenName + " (SEQUENCE), not: " + object);
                }
                Iterator<ASN1Object> it = ((ASN1Sequence) object).iterator();
                while (it.hasNext()) {
                    ASN1Object next = it.next();
                    if (!(next instanceof ASN1TaggedObject)) {
                        throw new SpnegoException("Expected an ASN.1 TaggedObject as " + this.tokenName + " contents, not: " + next);
                    }
                    parseTagged((ASN1TaggedObject) next);
                }
                return;
            }
        }
        throw new SpnegoException("Expected to find the " + this.tokenName + " (CHOICE [" + this.tokenTagNo + "]) header, not: " + aSN1Object);
    }

    public abstract void parseTagged(ASN1TaggedObject aSN1TaggedObject);

    public abstract void write(Buffer<?> buffer);

    public void writeGss(Buffer<?> buffer, ASN1Object<?> aSN1Object) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        ASN1TaggedObject aSN1TaggedObject = new ASN1TaggedObject(ASN1Tag.contextSpecific(this.tokenTagNo).constructed(), aSN1Object);
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectIdentifiers.SPNEGO);
        arrayList.add(aSN1TaggedObject);
        ASN1TaggedObject aSN1TaggedObject2 = new ASN1TaggedObject(ASN1Tag.application(0), (ASN1Object) new ASN1Sequence(arrayList), false);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(new DEREncoder(), byteArrayOutputStream);
        try {
            aSN1OutputStream.writeObject(aSN1TaggedObject2);
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
}

package com.hierynomus.asn1.types;

/* loaded from: classes.dex */
public abstract class ASN1Object<T> {
    protected ASN1Tag tag;

    public ASN1Object(ASN1Tag aSN1Tag) {
        this.tag = aSN1Tag;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ASN1Object aSN1Object = (ASN1Object) obj;
        if (this.tag != aSN1Object.tag) {
            return false;
        }
        return getValue() != null ? getValue().equals(aSN1Object.getValue()) : aSN1Object.getValue() == null;
    }

    public ASN1Tag getTag() {
        return this.tag;
    }

    public abstract T getValue();

    public int hashCode() {
        return this.tag.getTag();
    }

    public String toString() {
        return getClass().getSimpleName() + "[" + valueString() + "]";
    }

    public String valueString() {
        if (getValue() != null) {
            return getValue().toString();
        }
        return null;
    }
}

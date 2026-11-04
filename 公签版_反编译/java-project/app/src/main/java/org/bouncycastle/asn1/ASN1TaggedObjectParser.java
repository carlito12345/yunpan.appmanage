package org.bouncycastle.asn1;

/* loaded from: classes.dex */
public interface ASN1TaggedObjectParser extends ASN1Encodable, InMemoryRepresentable {
    int getTagClass();

    int getTagNo();

    boolean hasContextTag();

    boolean hasContextTag(int i10);

    boolean hasTag(int i10, int i11);

    boolean hasTagClass(int i10);

    ASN1Encodable parseBaseUniversal(boolean z, int i10);

    ASN1Encodable parseExplicitBaseObject();

    ASN1TaggedObjectParser parseExplicitBaseTagged();

    ASN1TaggedObjectParser parseImplicitBaseTagged(int i10, int i11);
}

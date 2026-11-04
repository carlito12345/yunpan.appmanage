package org.bouncycastle.asn1;

import java.io.IOException;

/* loaded from: classes.dex */
class DLTaggedObjectParser extends BERTaggedObjectParser {
    private final boolean _constructed;

    public DLTaggedObjectParser(int i10, int i11, boolean z, ASN1StreamParser aSN1StreamParser) {
        super(i10, i11, aSN1StreamParser);
        this._constructed = z;
    }

    private ASN1StreamParser checkConstructed() throws IOException {
        if (this._constructed) {
            return this._parser;
        }
        throw new IOException("Explicit tags must be constructed (see X.690 8.14.2)");
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.InMemoryRepresentable
    public ASN1Primitive getLoadedObject() {
        return this._parser.loadTaggedDL(this._tagClass, this._tagNo, this._constructed);
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseBaseUniversal(boolean z, int i10) {
        return z ? checkConstructed().parseObject(i10) : this._constructed ? this._parser.parseImplicitConstructedDL(i10) : this._parser.parseImplicitPrimitive(i10);
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1Encodable parseExplicitBaseObject() {
        return checkConstructed().readObject();
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseExplicitBaseTagged() {
        return checkConstructed().parseTaggedObject();
    }

    @Override // org.bouncycastle.asn1.BERTaggedObjectParser, org.bouncycastle.asn1.ASN1TaggedObjectParser
    public ASN1TaggedObjectParser parseImplicitBaseTagged(int i10, int i11) {
        return new DLTaggedObjectParser(i10, i11, this._constructed, this._parser);
    }
}

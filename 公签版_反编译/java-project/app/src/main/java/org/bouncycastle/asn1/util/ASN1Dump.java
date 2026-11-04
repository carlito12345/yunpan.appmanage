package org.bouncycastle.asn1.util;

import d0.f;
import g.b;
import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1BMPString;
import org.bouncycastle.asn1.ASN1BitString;
import org.bouncycastle.asn1.ASN1Boolean;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1External;
import org.bouncycastle.asn1.ASN1GeneralizedTime;
import org.bouncycastle.asn1.ASN1GraphicString;
import org.bouncycastle.asn1.ASN1IA5String;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1Null;
import org.bouncycastle.asn1.ASN1NumericString;
import org.bouncycastle.asn1.ASN1ObjectDescriptor;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1PrintableString;
import org.bouncycastle.asn1.ASN1RelativeOID;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1T61String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.ASN1UTCTime;
import org.bouncycastle.asn1.ASN1UTF8String;
import org.bouncycastle.asn1.ASN1Util;
import org.bouncycastle.asn1.ASN1VideotexString;
import org.bouncycastle.asn1.ASN1VisibleString;
import org.bouncycastle.asn1.BEROctetString;
import org.bouncycastle.asn1.BERSequence;
import org.bouncycastle.asn1.BERSet;
import org.bouncycastle.asn1.BERTaggedObject;
import org.bouncycastle.asn1.DERBitString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.DLBitString;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes.dex */
public class ASN1Dump {
    private static final int SAMPLE_SIZE = 32;
    private static final String TAB = "    ";

    public static void _dumpAsString(String str, boolean z, ASN1Primitive aSN1Primitive, StringBuffer stringBuffer) {
        StringBuilder sb2;
        String string;
        BigInteger value;
        String id2;
        String strLineSeparator = Strings.lineSeparator();
        stringBuffer.append(str);
        if (aSN1Primitive instanceof ASN1Null) {
            stringBuffer.append("NULL");
            stringBuffer.append(strLineSeparator);
            return;
        }
        int i10 = 0;
        if (aSN1Primitive instanceof ASN1Sequence) {
            stringBuffer.append(aSN1Primitive instanceof BERSequence ? "BER Sequence" : aSN1Primitive instanceof DERSequence ? "DER Sequence" : "Sequence");
            stringBuffer.append(strLineSeparator);
            ASN1Sequence aSN1Sequence = (ASN1Sequence) aSN1Primitive;
            String strJ = b.j(str, TAB);
            int size = aSN1Sequence.size();
            while (i10 < size) {
                _dumpAsString(strJ, z, aSN1Sequence.getObjectAt(i10).toASN1Primitive(), stringBuffer);
                i10++;
            }
            return;
        }
        if (aSN1Primitive instanceof ASN1Set) {
            stringBuffer.append(aSN1Primitive instanceof BERSet ? "BER Set" : aSN1Primitive instanceof DERSet ? "DER Set" : "Set");
            stringBuffer.append(strLineSeparator);
            ASN1Set aSN1Set = (ASN1Set) aSN1Primitive;
            String strJ2 = b.j(str, TAB);
            int size2 = aSN1Set.size();
            while (i10 < size2) {
                _dumpAsString(strJ2, z, aSN1Set.getObjectAt(i10).toASN1Primitive(), stringBuffer);
                i10++;
            }
            return;
        }
        if (aSN1Primitive instanceof ASN1TaggedObject) {
            stringBuffer.append(aSN1Primitive instanceof BERTaggedObject ? "BER Tagged " : aSN1Primitive instanceof DERTaggedObject ? "DER Tagged " : "Tagged ");
            ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Primitive;
            stringBuffer.append(ASN1Util.getTagText(aSN1TaggedObject));
            if (!aSN1TaggedObject.isExplicit()) {
                stringBuffer.append(" IMPLICIT");
            }
            stringBuffer.append(strLineSeparator);
            _dumpAsString(str + TAB, z, aSN1TaggedObject.getBaseObject().toASN1Primitive(), stringBuffer);
            return;
        }
        if (aSN1Primitive instanceof ASN1ObjectIdentifier) {
            sb2 = new StringBuilder("ObjectIdentifier(");
            id2 = ((ASN1ObjectIdentifier) aSN1Primitive).getId();
        } else {
            if (!(aSN1Primitive instanceof ASN1RelativeOID)) {
                if (aSN1Primitive instanceof ASN1Boolean) {
                    sb2 = new StringBuilder("Boolean(");
                    sb2.append(((ASN1Boolean) aSN1Primitive).isTrue());
                } else {
                    if (!(aSN1Primitive instanceof ASN1Integer)) {
                        if (aSN1Primitive instanceof ASN1OctetString) {
                            ASN1OctetString aSN1OctetString = (ASN1OctetString) aSN1Primitive;
                            stringBuffer.append(aSN1Primitive instanceof BEROctetString ? "BER Constructed Octet String[" : "DER Octet String[");
                            stringBuffer.append(aSN1OctetString.getOctetsLength() + "]" + strLineSeparator);
                            if (z) {
                                dumpBinaryDataAsString(stringBuffer, str, aSN1OctetString.getOctets());
                                return;
                            }
                            return;
                        }
                        if (aSN1Primitive instanceof ASN1BitString) {
                            ASN1BitString aSN1BitString = (ASN1BitString) aSN1Primitive;
                            stringBuffer.append(aSN1BitString instanceof DERBitString ? "DER Bit String[" : aSN1BitString instanceof DLBitString ? "DL Bit String[" : "BER Bit String[");
                            stringBuffer.append(aSN1BitString.getBytesLength() + ", " + aSN1BitString.getPadBits() + "]" + strLineSeparator);
                            if (z) {
                                dumpBinaryDataAsString(stringBuffer, str, aSN1BitString.getBytes());
                                return;
                            }
                            return;
                        }
                        if (aSN1Primitive instanceof ASN1IA5String) {
                            sb2 = new StringBuilder("IA5String(");
                            string = ((ASN1IA5String) aSN1Primitive).getString();
                        } else if (aSN1Primitive instanceof ASN1UTF8String) {
                            sb2 = new StringBuilder("UTF8String(");
                            string = ((ASN1UTF8String) aSN1Primitive).getString();
                        } else if (aSN1Primitive instanceof ASN1NumericString) {
                            sb2 = new StringBuilder("NumericString(");
                            string = ((ASN1NumericString) aSN1Primitive).getString();
                        } else if (aSN1Primitive instanceof ASN1PrintableString) {
                            sb2 = new StringBuilder("PrintableString(");
                            string = ((ASN1PrintableString) aSN1Primitive).getString();
                        } else if (aSN1Primitive instanceof ASN1VisibleString) {
                            sb2 = new StringBuilder("VisibleString(");
                            string = ((ASN1VisibleString) aSN1Primitive).getString();
                        } else if (aSN1Primitive instanceof ASN1BMPString) {
                            sb2 = new StringBuilder("BMPString(");
                            string = ((ASN1BMPString) aSN1Primitive).getString();
                        } else if (aSN1Primitive instanceof ASN1T61String) {
                            sb2 = new StringBuilder("T61String(");
                            string = ((ASN1T61String) aSN1Primitive).getString();
                        } else if (aSN1Primitive instanceof ASN1GraphicString) {
                            sb2 = new StringBuilder("GraphicString(");
                            string = ((ASN1GraphicString) aSN1Primitive).getString();
                        } else if (aSN1Primitive instanceof ASN1VideotexString) {
                            sb2 = new StringBuilder("VideotexString(");
                            string = ((ASN1VideotexString) aSN1Primitive).getString();
                        } else if (aSN1Primitive instanceof ASN1UTCTime) {
                            sb2 = new StringBuilder("UTCTime(");
                            string = ((ASN1UTCTime) aSN1Primitive).getTime();
                        } else if (aSN1Primitive instanceof ASN1GeneralizedTime) {
                            sb2 = new StringBuilder("GeneralizedTime(");
                            string = ((ASN1GeneralizedTime) aSN1Primitive).getTime();
                        } else if (aSN1Primitive instanceof ASN1Enumerated) {
                            sb2 = new StringBuilder("DER Enumerated(");
                            value = ((ASN1Enumerated) aSN1Primitive).getValue();
                        } else {
                            if (!(aSN1Primitive instanceof ASN1ObjectDescriptor)) {
                                if (!(aSN1Primitive instanceof ASN1External)) {
                                    sb2 = new StringBuilder();
                                    sb2.append(aSN1Primitive.toString());
                                    sb2.append(strLineSeparator);
                                    stringBuffer.append(sb2.toString());
                                }
                                ASN1External aSN1External = (ASN1External) aSN1Primitive;
                                stringBuffer.append("External " + strLineSeparator);
                                String str2 = str + TAB;
                                if (aSN1External.getDirectReference() != null) {
                                    StringBuilder sbB = f.b(str2, "Direct Reference: ");
                                    sbB.append(aSN1External.getDirectReference().getId());
                                    sbB.append(strLineSeparator);
                                    stringBuffer.append(sbB.toString());
                                }
                                if (aSN1External.getIndirectReference() != null) {
                                    StringBuilder sbB2 = f.b(str2, "Indirect Reference: ");
                                    sbB2.append(aSN1External.getIndirectReference().toString());
                                    sbB2.append(strLineSeparator);
                                    stringBuffer.append(sbB2.toString());
                                }
                                if (aSN1External.getDataValueDescriptor() != null) {
                                    _dumpAsString(str2, z, aSN1External.getDataValueDescriptor(), stringBuffer);
                                }
                                StringBuilder sbB3 = f.b(str2, "Encoding: ");
                                sbB3.append(aSN1External.getEncoding());
                                sbB3.append(strLineSeparator);
                                stringBuffer.append(sbB3.toString());
                                _dumpAsString(str2, z, aSN1External.getExternalContent(), stringBuffer);
                                return;
                            }
                            sb2 = new StringBuilder("ObjectDescriptor(");
                            string = ((ASN1ObjectDescriptor) aSN1Primitive).getBaseGraphicString().getString();
                        }
                        sb2.append(string);
                        sb2.append(") ");
                        sb2.append(strLineSeparator);
                        stringBuffer.append(sb2.toString());
                    }
                    sb2 = new StringBuilder("Integer(");
                    value = ((ASN1Integer) aSN1Primitive).getValue();
                    sb2.append(value);
                }
                sb2.append(")");
                sb2.append(strLineSeparator);
                stringBuffer.append(sb2.toString());
            }
            sb2 = new StringBuilder("RelativeOID(");
            id2 = ((ASN1RelativeOID) aSN1Primitive).getId();
        }
        sb2.append(id2);
        sb2.append(")");
        sb2.append(strLineSeparator);
        stringBuffer.append(sb2.toString());
    }

    private static void appendAscString(StringBuffer stringBuffer, byte[] bArr, int i10, int i11) {
        for (int i12 = i10; i12 != i10 + i11; i12++) {
            byte b10 = bArr[i12];
            if (b10 >= 32 && b10 <= 126) {
                stringBuffer.append((char) b10);
            }
        }
    }

    public static String dumpAsString(Object obj) {
        return dumpAsString(obj, false);
    }

    private static void dumpBinaryDataAsString(StringBuffer stringBuffer, String str, byte[] bArr) {
        if (bArr.length < 1) {
            return;
        }
        String strLineSeparator = Strings.lineSeparator();
        String strJ = b.j(str, TAB);
        for (int i10 = 0; i10 < bArr.length; i10 += 32) {
            int iMin = Math.min(bArr.length - i10, 32);
            stringBuffer.append(strJ);
            stringBuffer.append(Hex.toHexString(bArr, i10, iMin));
            for (int i11 = iMin; i11 < 32; i11++) {
                stringBuffer.append("  ");
            }
            stringBuffer.append(TAB);
            appendAscString(stringBuffer, bArr, i10, iMin);
            stringBuffer.append(strLineSeparator);
        }
    }

    public static String dumpAsString(Object obj, boolean z) {
        ASN1Primitive aSN1Primitive;
        if (obj instanceof ASN1Primitive) {
            aSN1Primitive = (ASN1Primitive) obj;
        } else {
            if (!(obj instanceof ASN1Encodable)) {
                return "unknown object type " + obj.toString();
            }
            aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
        }
        StringBuffer stringBuffer = new StringBuffer();
        _dumpAsString("", z, aSN1Primitive, stringBuffer);
        return stringBuffer.toString();
    }
}

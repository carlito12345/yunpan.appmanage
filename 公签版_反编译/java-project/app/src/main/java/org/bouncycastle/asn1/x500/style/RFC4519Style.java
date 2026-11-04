package org.bouncycastle.asn1.x500.style;

import java.util.Hashtable;
import l2.z;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.DERIA5String;
import org.bouncycastle.asn1.DERPrintableString;
import org.bouncycastle.asn1.x500.RDN;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.asn1.x500.X500NameStyle;

/* loaded from: classes.dex */
public class RFC4519Style extends AbstractX500NameStyle {
    private static final Hashtable DefaultLookUp;
    private static final Hashtable DefaultSymbols;
    public static final X500NameStyle INSTANCE;
    public static final ASN1ObjectIdentifier businessCategory;

    /* renamed from: c, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f11838c;
    public static final ASN1ObjectIdentifier cn;

    /* renamed from: dc, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f11839dc;
    public static final ASN1ObjectIdentifier description;
    public static final ASN1ObjectIdentifier destinationIndicator;
    public static final ASN1ObjectIdentifier distinguishedName;
    public static final ASN1ObjectIdentifier dnQualifier;
    public static final ASN1ObjectIdentifier enhancedSearchGuide;
    public static final ASN1ObjectIdentifier facsimileTelephoneNumber;
    public static final ASN1ObjectIdentifier generationQualifier;
    public static final ASN1ObjectIdentifier givenName;
    public static final ASN1ObjectIdentifier houseIdentifier;
    public static final ASN1ObjectIdentifier initials;
    public static final ASN1ObjectIdentifier internationalISDNNumber;
    public static final ASN1ObjectIdentifier l;
    public static final ASN1ObjectIdentifier member;
    public static final ASN1ObjectIdentifier name;

    /* renamed from: o, reason: collision with root package name */
    public static final ASN1ObjectIdentifier f11840o;
    public static final ASN1ObjectIdentifier ou;
    public static final ASN1ObjectIdentifier owner;
    public static final ASN1ObjectIdentifier physicalDeliveryOfficeName;
    public static final ASN1ObjectIdentifier postOfficeBox;
    public static final ASN1ObjectIdentifier postalAddress;
    public static final ASN1ObjectIdentifier postalCode;
    public static final ASN1ObjectIdentifier preferredDeliveryMethod;
    public static final ASN1ObjectIdentifier registeredAddress;
    public static final ASN1ObjectIdentifier roleOccupant;
    public static final ASN1ObjectIdentifier searchGuide;
    public static final ASN1ObjectIdentifier seeAlso;
    public static final ASN1ObjectIdentifier serialNumber;
    public static final ASN1ObjectIdentifier sn;
    public static final ASN1ObjectIdentifier st;
    public static final ASN1ObjectIdentifier street;
    public static final ASN1ObjectIdentifier telephoneNumber;
    public static final ASN1ObjectIdentifier teletexTerminalIdentifier;
    public static final ASN1ObjectIdentifier telexNumber;
    public static final ASN1ObjectIdentifier title;
    public static final ASN1ObjectIdentifier uid;
    public static final ASN1ObjectIdentifier uniqueMember;
    public static final ASN1ObjectIdentifier userPassword;
    public static final ASN1ObjectIdentifier x121Address;
    public static final ASN1ObjectIdentifier x500UniqueIdentifier;
    protected final Hashtable defaultSymbols = AbstractX500NameStyle.copyHashTable(DefaultSymbols);
    protected final Hashtable defaultLookUp = AbstractX500NameStyle.copyHashTable(DefaultLookUp);

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifierX = z.x("2.5.4.15");
        businessCategory = aSN1ObjectIdentifierX;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX2 = z.x("2.5.4.6");
        f11838c = aSN1ObjectIdentifierX2;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX3 = z.x("2.5.4.3");
        cn = aSN1ObjectIdentifierX3;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX4 = z.x("0.9.2342.19200300.100.1.25");
        f11839dc = aSN1ObjectIdentifierX4;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX5 = z.x("2.5.4.13");
        description = aSN1ObjectIdentifierX5;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX6 = z.x("2.5.4.27");
        destinationIndicator = aSN1ObjectIdentifierX6;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX7 = z.x("2.5.4.49");
        distinguishedName = aSN1ObjectIdentifierX7;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX8 = z.x("2.5.4.46");
        dnQualifier = aSN1ObjectIdentifierX8;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX9 = z.x("2.5.4.47");
        enhancedSearchGuide = aSN1ObjectIdentifierX9;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX10 = z.x("2.5.4.23");
        facsimileTelephoneNumber = aSN1ObjectIdentifierX10;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX11 = z.x("2.5.4.44");
        generationQualifier = aSN1ObjectIdentifierX11;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX12 = z.x("2.5.4.42");
        givenName = aSN1ObjectIdentifierX12;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX13 = z.x("2.5.4.51");
        houseIdentifier = aSN1ObjectIdentifierX13;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX14 = z.x("2.5.4.43");
        initials = aSN1ObjectIdentifierX14;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX15 = z.x("2.5.4.25");
        internationalISDNNumber = aSN1ObjectIdentifierX15;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX16 = z.x("2.5.4.7");
        l = aSN1ObjectIdentifierX16;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX17 = z.x("2.5.4.31");
        member = aSN1ObjectIdentifierX17;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX18 = z.x("2.5.4.41");
        name = aSN1ObjectIdentifierX18;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX19 = z.x("2.5.4.10");
        f11840o = aSN1ObjectIdentifierX19;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX20 = z.x("2.5.4.11");
        ou = aSN1ObjectIdentifierX20;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX21 = z.x("2.5.4.32");
        owner = aSN1ObjectIdentifierX21;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX22 = z.x("2.5.4.19");
        physicalDeliveryOfficeName = aSN1ObjectIdentifierX22;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX23 = z.x("2.5.4.16");
        postalAddress = aSN1ObjectIdentifierX23;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX24 = z.x("2.5.4.17");
        postalCode = aSN1ObjectIdentifierX24;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX25 = z.x("2.5.4.18");
        postOfficeBox = aSN1ObjectIdentifierX25;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX26 = z.x("2.5.4.28");
        preferredDeliveryMethod = aSN1ObjectIdentifierX26;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX27 = z.x("2.5.4.26");
        registeredAddress = aSN1ObjectIdentifierX27;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX28 = z.x("2.5.4.33");
        roleOccupant = aSN1ObjectIdentifierX28;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX29 = z.x("2.5.4.14");
        searchGuide = aSN1ObjectIdentifierX29;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX30 = z.x("2.5.4.34");
        seeAlso = aSN1ObjectIdentifierX30;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX31 = z.x("2.5.4.5");
        serialNumber = aSN1ObjectIdentifierX31;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX32 = z.x("2.5.4.4");
        sn = aSN1ObjectIdentifierX32;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX33 = z.x("2.5.4.8");
        st = aSN1ObjectIdentifierX33;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX34 = z.x("2.5.4.9");
        street = aSN1ObjectIdentifierX34;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX35 = z.x("2.5.4.20");
        telephoneNumber = aSN1ObjectIdentifierX35;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX36 = z.x("2.5.4.22");
        teletexTerminalIdentifier = aSN1ObjectIdentifierX36;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX37 = z.x("2.5.4.21");
        telexNumber = aSN1ObjectIdentifierX37;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX38 = z.x("2.5.4.12");
        title = aSN1ObjectIdentifierX38;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX39 = z.x("0.9.2342.19200300.100.1.1");
        uid = aSN1ObjectIdentifierX39;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX40 = z.x("2.5.4.50");
        uniqueMember = aSN1ObjectIdentifierX40;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX41 = z.x("2.5.4.35");
        userPassword = aSN1ObjectIdentifierX41;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX42 = z.x("2.5.4.24");
        x121Address = aSN1ObjectIdentifierX42;
        ASN1ObjectIdentifier aSN1ObjectIdentifierX43 = z.x("2.5.4.45");
        x500UniqueIdentifier = aSN1ObjectIdentifierX43;
        Hashtable hashtable = new Hashtable();
        DefaultSymbols = hashtable;
        Hashtable hashtable2 = new Hashtable();
        DefaultLookUp = hashtable2;
        hashtable.put(aSN1ObjectIdentifierX, "businessCategory");
        hashtable.put(aSN1ObjectIdentifierX2, "c");
        hashtable.put(aSN1ObjectIdentifierX3, "cn");
        hashtable.put(aSN1ObjectIdentifierX4, "dc");
        hashtable.put(aSN1ObjectIdentifierX5, "description");
        hashtable.put(aSN1ObjectIdentifierX6, "destinationIndicator");
        hashtable.put(aSN1ObjectIdentifierX7, "distinguishedName");
        hashtable.put(aSN1ObjectIdentifierX8, "dnQualifier");
        hashtable.put(aSN1ObjectIdentifierX9, "enhancedSearchGuide");
        hashtable.put(aSN1ObjectIdentifierX10, "facsimileTelephoneNumber");
        hashtable.put(aSN1ObjectIdentifierX11, "generationQualifier");
        hashtable.put(aSN1ObjectIdentifierX12, "givenName");
        hashtable.put(aSN1ObjectIdentifierX13, "houseIdentifier");
        hashtable.put(aSN1ObjectIdentifierX14, "initials");
        hashtable.put(aSN1ObjectIdentifierX15, "internationalISDNNumber");
        hashtable.put(aSN1ObjectIdentifierX16, "l");
        hashtable.put(aSN1ObjectIdentifierX17, "member");
        hashtable.put(aSN1ObjectIdentifierX18, "name");
        hashtable.put(aSN1ObjectIdentifierX19, "o");
        hashtable.put(aSN1ObjectIdentifierX20, "ou");
        hashtable.put(aSN1ObjectIdentifierX21, "owner");
        hashtable.put(aSN1ObjectIdentifierX22, "physicalDeliveryOfficeName");
        hashtable.put(aSN1ObjectIdentifierX23, "postalAddress");
        hashtable.put(aSN1ObjectIdentifierX24, "postalCode");
        hashtable.put(aSN1ObjectIdentifierX25, "postOfficeBox");
        hashtable.put(aSN1ObjectIdentifierX26, "preferredDeliveryMethod");
        hashtable.put(aSN1ObjectIdentifierX27, "registeredAddress");
        hashtable.put(aSN1ObjectIdentifierX28, "roleOccupant");
        hashtable.put(aSN1ObjectIdentifierX29, "searchGuide");
        hashtable.put(aSN1ObjectIdentifierX30, "seeAlso");
        hashtable.put(aSN1ObjectIdentifierX31, "serialNumber");
        hashtable.put(aSN1ObjectIdentifierX32, "sn");
        hashtable.put(aSN1ObjectIdentifierX33, "st");
        hashtable.put(aSN1ObjectIdentifierX34, "street");
        hashtable.put(aSN1ObjectIdentifierX35, "telephoneNumber");
        hashtable.put(aSN1ObjectIdentifierX36, "teletexTerminalIdentifier");
        hashtable.put(aSN1ObjectIdentifierX37, "telexNumber");
        hashtable.put(aSN1ObjectIdentifierX38, "title");
        hashtable.put(aSN1ObjectIdentifierX39, "uid");
        hashtable.put(aSN1ObjectIdentifierX40, "uniqueMember");
        hashtable.put(aSN1ObjectIdentifierX41, "userPassword");
        hashtable.put(aSN1ObjectIdentifierX42, "x121Address");
        hashtable.put(aSN1ObjectIdentifierX43, "x500UniqueIdentifier");
        hashtable2.put("businesscategory", aSN1ObjectIdentifierX);
        hashtable2.put("c", aSN1ObjectIdentifierX2);
        hashtable2.put("cn", aSN1ObjectIdentifierX3);
        hashtable2.put("dc", aSN1ObjectIdentifierX4);
        hashtable2.put("description", aSN1ObjectIdentifierX5);
        hashtable2.put("destinationindicator", aSN1ObjectIdentifierX6);
        hashtable2.put("distinguishedname", aSN1ObjectIdentifierX7);
        hashtable2.put("dnqualifier", aSN1ObjectIdentifierX8);
        hashtable2.put("enhancedsearchguide", aSN1ObjectIdentifierX9);
        hashtable2.put("facsimiletelephonenumber", aSN1ObjectIdentifierX10);
        hashtable2.put("generationqualifier", aSN1ObjectIdentifierX11);
        hashtable2.put("givenname", aSN1ObjectIdentifierX12);
        hashtable2.put("houseidentifier", aSN1ObjectIdentifierX13);
        hashtable2.put("initials", aSN1ObjectIdentifierX14);
        hashtable2.put("internationalisdnnumber", aSN1ObjectIdentifierX15);
        hashtable2.put("l", aSN1ObjectIdentifierX16);
        hashtable2.put("member", aSN1ObjectIdentifierX17);
        hashtable2.put("name", aSN1ObjectIdentifierX18);
        hashtable2.put("o", aSN1ObjectIdentifierX19);
        hashtable2.put("ou", aSN1ObjectIdentifierX20);
        hashtable2.put("owner", aSN1ObjectIdentifierX21);
        hashtable2.put("physicaldeliveryofficename", aSN1ObjectIdentifierX22);
        hashtable2.put("postaladdress", aSN1ObjectIdentifierX23);
        hashtable2.put("postalcode", aSN1ObjectIdentifierX24);
        hashtable2.put("postofficebox", aSN1ObjectIdentifierX25);
        hashtable2.put("preferreddeliverymethod", aSN1ObjectIdentifierX26);
        hashtable2.put("registeredaddress", aSN1ObjectIdentifierX27);
        hashtable2.put("roleoccupant", aSN1ObjectIdentifierX28);
        hashtable2.put("searchguide", aSN1ObjectIdentifierX29);
        hashtable2.put("seealso", aSN1ObjectIdentifierX30);
        hashtable2.put("serialnumber", aSN1ObjectIdentifierX31);
        hashtable2.put("sn", aSN1ObjectIdentifierX32);
        hashtable2.put("st", aSN1ObjectIdentifierX33);
        hashtable2.put("street", aSN1ObjectIdentifierX34);
        hashtable2.put("telephonenumber", aSN1ObjectIdentifierX35);
        hashtable2.put("teletexterminalidentifier", aSN1ObjectIdentifierX36);
        hashtable2.put("telexnumber", aSN1ObjectIdentifierX37);
        hashtable2.put("title", aSN1ObjectIdentifierX38);
        hashtable2.put("uid", aSN1ObjectIdentifierX39);
        hashtable2.put("uniquemember", aSN1ObjectIdentifierX40);
        hashtable2.put("userpassword", aSN1ObjectIdentifierX41);
        hashtable2.put("x121address", aSN1ObjectIdentifierX42);
        hashtable2.put("x500uniqueidentifier", aSN1ObjectIdentifierX43);
        INSTANCE = new RFC4519Style();
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public ASN1ObjectIdentifier attrNameToOID(String str) {
        return IETFUtils.decodeAttrName(str, this.defaultLookUp);
    }

    @Override // org.bouncycastle.asn1.x500.style.AbstractX500NameStyle
    public ASN1Encodable encodeStringValue(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        return aSN1ObjectIdentifier.equals((ASN1Primitive) f11839dc) ? new DERIA5String(str) : (aSN1ObjectIdentifier.equals((ASN1Primitive) f11838c) || aSN1ObjectIdentifier.equals((ASN1Primitive) serialNumber) || aSN1ObjectIdentifier.equals((ASN1Primitive) dnQualifier) || aSN1ObjectIdentifier.equals((ASN1Primitive) telephoneNumber)) ? new DERPrintableString(str) : super.encodeStringValue(aSN1ObjectIdentifier, str);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public RDN[] fromString(String str) {
        RDN[] rdnArrRDNsFromString = IETFUtils.rDNsFromString(str, this);
        RDN[] rdnArr = new RDN[rdnArrRDNsFromString.length];
        for (int i10 = 0; i10 != rdnArrRDNsFromString.length; i10++) {
            rdnArr[(r0 - i10) - 1] = rdnArrRDNsFromString[i10];
        }
        return rdnArr;
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String[] oidToAttrNames(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return IETFUtils.findAttrNamesForOID(aSN1ObjectIdentifier, this.defaultLookUp);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String oidToDisplayName(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return (String) this.defaultSymbols.get(aSN1ObjectIdentifier);
    }

    @Override // org.bouncycastle.asn1.x500.X500NameStyle
    public String toString(X500Name x500Name) {
        StringBuffer stringBuffer = new StringBuffer();
        RDN[] rDNs = x500Name.getRDNs();
        boolean z = true;
        for (int length = rDNs.length - 1; length >= 0; length--) {
            if (z) {
                z = false;
            } else {
                stringBuffer.append(',');
            }
            IETFUtils.appendRDN(stringBuffer, rDNs[length], this.defaultSymbols);
        }
        return stringBuffer.toString();
    }
}

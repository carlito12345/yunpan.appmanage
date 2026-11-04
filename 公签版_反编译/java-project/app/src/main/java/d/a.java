package d;

import com.hsae.autosdk.p001os.SocConst;
import g.c;
import g.h;
import java.util.Hashtable;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final h[] f4191a;

    /* renamed from: b, reason: collision with root package name */
    public static final h f4192b;

    static {
        c.a("jar");
        f4191a = new h[18];
        int i10 = 1;
        while (true) {
            h[] hVarArr = f4191a;
            if (i10 >= hVarArr.length - 2) {
                hVarArr[hVarArr.length - 2] = h.d(new int[]{1, 2, 840, 113549, 1, 9, 16, 2, 12});
                hVarArr[hVarArr.length - 1] = h.d(new int[]{1, 2, 840, 113549, 1, 9, 16, 2, 14});
                f4192b = hVarArr[1];
                h hVar = hVarArr[2];
                h hVar2 = hVarArr[3];
                h hVar3 = hVarArr[4];
                h hVar4 = hVarArr[5];
                h hVar5 = hVarArr[6];
                h hVar6 = hVarArr[7];
                h hVar7 = hVarArr[8];
                h hVar8 = hVarArr[9];
                h hVar9 = hVarArr[10];
                h hVar10 = hVarArr[14];
                h hVar11 = hVarArr[15];
                h hVar12 = hVarArr[16];
                h hVar13 = hVarArr[17];
                Hashtable hashtable = new Hashtable(18);
                hashtable.put("emailaddress", hVarArr[1]);
                hashtable.put("unstructuredname", hVarArr[2]);
                hashtable.put("contenttype", hVarArr[3]);
                hashtable.put("messagedigest", hVarArr[4]);
                hashtable.put("signingtime", hVarArr[5]);
                hashtable.put("countersignature", hVarArr[6]);
                hashtable.put("challengepassword", hVarArr[7]);
                hashtable.put("unstructuredaddress", hVarArr[8]);
                hashtable.put("extendedcertificateattributes", hVarArr[9]);
                hashtable.put("issuerandserialnumber", hVarArr[10]);
                hashtable.put("rsaproprietary", hVarArr[11]);
                hashtable.put("rsaproprietary", hVarArr[12]);
                hashtable.put("signingdescription", hVarArr[13]);
                hashtable.put("extensionrequest", hVarArr[14]);
                hashtable.put("smimecapability", hVarArr[15]);
                hashtable.put("signingcertificate", hVarArr[16]);
                hashtable.put("signaturetimestamptoken", hVarArr[17]);
                Hashtable hashtable2 = new Hashtable(16);
                hashtable2.put(hVarArr[1], "EmailAddress");
                hashtable2.put(hVarArr[2], "UnstructuredName");
                hashtable2.put(hVarArr[3], "ContentType");
                hashtable2.put(hVarArr[4], "MessageDigest");
                hashtable2.put(hVarArr[5], "SigningTime");
                hashtable2.put(hVarArr[6], "Countersignature");
                hashtable2.put(hVarArr[7], "ChallengePassword");
                hashtable2.put(hVarArr[8], "UnstructuredAddress");
                hashtable2.put(hVarArr[9], "ExtendedCertificateAttributes");
                hashtable2.put(hVarArr[10], "IssuerAndSerialNumber");
                hashtable2.put(hVarArr[11], "RSAProprietary");
                hashtable2.put(hVarArr[12], "RSAProprietary");
                hashtable2.put(hVarArr[13], "SMIMESigningDesc");
                hashtable2.put(hVarArr[14], "ExtensionRequest");
                hashtable2.put(hVarArr[15], "SMIMECapability");
                hashtable2.put(hVarArr[16], "SigningCertificate");
                hashtable2.put(hVarArr[17], "SignatureTimestampToken");
                new Byte((byte) 22);
                new Byte((byte) 22);
                new Byte((byte) 6);
                new Byte((byte) 4);
                new Byte((byte) 23);
                new Byte((byte) 48);
                new Byte((byte) 19);
                new Byte((byte) 20);
                new Byte((byte) 19);
                new Byte((byte) 20);
                new Byte(SocConst.Upgrade.CUPID_CMD);
                new Byte((byte) 48);
                new Byte((byte) 48);
                new Byte((byte) 48);
                new Byte((byte) 48);
                new Byte((byte) 48);
                try {
                    Class.forName("[B");
                    Class.forName("java.util.Date");
                    Class.forName("[L" + b.class.getName() + ";");
                    Class.forName("[B");
                    return;
                } catch (ClassNotFoundException e7) {
                    throw new ExceptionInInitializerError(e7.toString());
                }
            }
            hVarArr[i10] = h.d(new int[]{1, 2, 840, 113549, 1, 9, i10});
            i10++;
        }
    }
}

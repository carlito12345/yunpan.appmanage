package org.bouncycastle.jcajce.provider.digest;

import java.security.spec.KeySpec;
import java.util.ArrayList;
import java.util.HashMap;
import nh.b;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.math.ec.ECFieldElement;
import org.bouncycastle.pqc.crypto.lms.LMSigParameters;
import org.bouncycastle.pqc.crypto.xmss.XMSSMTParameters;
import org.bouncycastle.pqc.jcajce.provider.snova.SnovaKeyFactorySpi;
import org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyFactorySpi;
import ph.l;
import ph.q;
import rh.u;
import s4.j;
import s4.k;
import u1.f0;
import wh.m;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class a {
    public static void a(u uVar, q qVar) {
        b.d0(qVar);
        q qVarN = qVar;
        int i10 = 0;
        while (qVarN != null) {
            l lVar = qVarN.f12741a;
            int size = lVar != null ? lVar.f12723e.size() : 0;
            q qVarN2 = qVarN.n();
            uVar.i(qVarN, i10);
            if (lVar != null && qVarN.f12741a == null) {
                if (size == lVar.f12723e.size()) {
                    qVarN = (q) ((ArrayList) lVar.h()).get(qVarN.f12742b);
                } else if (qVarN2 == null) {
                    i10--;
                    qVarN = lVar;
                } else {
                    qVarN = qVarN2;
                }
            }
            if (qVarN.e() > 0) {
                qVarN = (q) qVarN.h().get(0);
                i10++;
            } else {
                while (qVarN.n() == null && i10 > 0) {
                    uVar.p(qVarN, i10);
                    qVarN = qVarN.f12741a;
                    i10--;
                }
                uVar.p(qVarN, i10);
                if (qVarN == qVar) {
                    return;
                } else {
                    qVarN = qVarN.n();
                }
            }
        }
    }

    public static int b(int i10, int i11, int i12, int i13) {
        return (i10 * i11) + i12 + i13;
    }

    public static int c(int i10, int i11, String str) {
        return (str.hashCode() + i10) * i11;
    }

    public static String e(String str, String str2, String str3, String str4, ConfigurableProvider configurableProvider) {
        configurableProvider.addAlgorithm(str, str2);
        return str3 + str4;
    }

    public static String f(String str, m mVar) {
        return str + mVar;
    }

    public static String g(KeySpec keySpec, StringBuilder sb2, String str) {
        sb2.append(keySpec.getClass());
        sb2.append(str);
        return sb2.toString();
    }

    public static StringBuilder h(String str, String str2, String str3, String str4, ConfigurableProvider configurableProvider) {
        configurableProvider.addAlgorithm(str, str2);
        configurableProvider.addAlgorithm(str3, str4);
        return new StringBuilder();
    }

    public static StringBuilder i(String str, String str2, String str3, StringBuilder sb2, ConfigurableProvider configurableProvider) {
        sb2.append(str);
        configurableProvider.addAlgorithm(str2, sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str3);
        return sb3;
    }

    public static StringBuilder j(String str, String str2, StringBuilder sb2, ASN1ObjectIdentifier aSN1ObjectIdentifier, ConfigurableProvider configurableProvider) {
        sb2.append(str);
        configurableProvider.addAlgorithm(str2, aSN1ObjectIdentifier, sb2.toString());
        return new StringBuilder();
    }

    public static StringBuilder k(ConfigurableProvider configurableProvider, String str, String str2, String str3, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        configurableProvider.addAlgorithm(str, aSN1ObjectIdentifier, str2);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str3);
        return sb2;
    }

    public static ECFieldElement l(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return eCFieldElement.square().add(eCFieldElement2).add(eCFieldElement3);
    }

    public static void m(int i10, int i11, int i12, int i13, int i14) {
        f0.B(i10);
        f0.B(i11);
        f0.B(i12);
        f0.B(i13);
        f0.B(i14);
    }

    public static void n(int i10, int i11, ASN1ObjectIdentifier aSN1ObjectIdentifier, HashMap map, Integer num) {
        map.put(num, new XMSSMTParameters(i10, i11, aSN1ObjectIdentifier));
    }

    public static void o(int i10, String str) {
        u1.a.p(str + i10);
    }

    public static void q(String str, String str2, String str3, StringBuilder sb2, ConfigurableProvider configurableProvider) {
        sb2.append(str);
        sb2.append(str2);
        configurableProvider.addAlgorithm(str3, sb2.toString());
    }

    public static void r(StringBuilder sb2, String str, ConfigurableProvider configurableProvider, String str2) {
        sb2.append(str);
        configurableProvider.addAlgorithm(str2, sb2.toString());
    }

    public static void s(ConfigurableProvider configurableProvider, String str, String str2, String str3, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        configurableProvider.addAlgorithm(str3, aSN1ObjectIdentifier, str + str2);
    }

    public static void t(BouncyCastleProvider bouncyCastleProvider, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        bouncyCastleProvider.addKeyInfoConverter(aSN1ObjectIdentifier, new SnovaKeyFactorySpi());
    }

    public static void u(LMSigParameters lMSigParameters, LMSigParameters.AnonymousClass1 anonymousClass1, LMSigParameters lMSigParameters2) {
        anonymousClass1.put(Integer.valueOf(lMSigParameters.type), lMSigParameters2);
    }

    public static void v(j jVar, j jVar2, j jVar3, j jVar4, j jVar5) {
        k.a(jVar);
        k.a(jVar2);
        k.a(jVar3);
        k.a(jVar4);
        k.a(jVar5);
    }

    public static void w(BouncyCastleProvider bouncyCastleProvider, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        bouncyCastleProvider.addKeyInfoConverter(aSN1ObjectIdentifier, new SPHINCSPlusKeyFactorySpi());
    }

    public static /* synthetic */ String x(int i10) {
        switch (i10) {
            case 1:
                return "Doctype";
            case 2:
                return "StartTag";
            case 3:
                return "EndTag";
            case 4:
                return "Comment";
            case 5:
                return "Character";
            case 6:
                return "XmlDecl";
            case 7:
                return "EOF";
            default:
                return "null";
        }
    }
}

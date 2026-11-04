package l2;

import ha.u9;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Iterator;
import java.util.Map;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.jcajce.provider.asymmetric.EC;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.util.Arrays;

/* loaded from: classes.dex */
public abstract /* synthetic */ class z {
    public static StringBuilder A(String str, String str2, StringBuilder sb2, ASN1ObjectIdentifier aSN1ObjectIdentifier, ConfigurableProvider configurableProvider) {
        sb2.append(aSN1ObjectIdentifier);
        configurableProvider.addAlgorithm(sb2.toString(), str);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(str2);
        return sb3;
    }

    public static int a(int i10, int i11, int i12, int i13) {
        return ((i10 * i11) / i12) + i13;
    }

    public static int b(ASN1Sequence aSN1Sequence, int i10) {
        return ASN1Integer.getInstance(aSN1Sequence.getObjectAt(i10)).intValueExact();
    }

    public static long c(long j10, long j11, long j12, long j13) {
        return (j10 * j11) + j12 + j13;
    }

    public static ClassCastException d(Iterator it) {
        it.next().getClass();
        return new ClassCastException();
    }

    public static String e(Exception exc, String str) {
        return str + exc;
    }

    public static String f(IllegalArgumentException illegalArgumentException, StringBuilder sb2) {
        sb2.append(illegalArgumentException.getMessage());
        return sb2.toString();
    }

    public static String g(Object obj, String str) {
        return str.concat(obj.getClass().getName());
    }

    public static String h(String str, IOException iOException) {
        return str + iOException;
    }

    public static String i(String str, AlgorithmParameterSpec algorithmParameterSpec) {
        return str + algorithmParameterSpec;
    }

    public static String j(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return str + aSN1ObjectIdentifier;
    }

    public static String k(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier, String str2) {
        return str + aSN1ObjectIdentifier + str2;
    }

    public static String l(String str, CipherParameters cipherParameters) {
        return str.concat(cipherParameters.getClass().getName());
    }

    public static String m(GeneralSecurityException generalSecurityException, StringBuilder sb2) {
        sb2.append(generalSecurityException.getMessage());
        return sb2.toString();
    }

    public static String n(Key key, StringBuilder sb2, String str) {
        sb2.append(key.getClass());
        sb2.append(str);
        return sb2.toString();
    }

    public static String o(ASN1Sequence aSN1Sequence, StringBuilder sb2) {
        sb2.append(aSN1Sequence.size());
        return sb2.toString();
    }

    public static String p(ASN1TaggedObject aSN1TaggedObject, StringBuilder sb2) {
        sb2.append(aSN1TaggedObject.getTagNo());
        return sb2.toString();
    }

    public static String q(ConfigurableProvider configurableProvider, String str, String str2, String str3, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        configurableProvider.addAlgorithm(str, str2);
        return str3 + aSN1ObjectIdentifier;
    }

    public static StringBuilder r(u9 u9Var, String str) {
        u9Var.a();
        return new StringBuilder(str);
    }

    public static StringBuilder s(String str, String str2, String str3, String str4, ConfigurableProvider configurableProvider) {
        configurableProvider.addAlgorithm(str3, str + str2);
        return new StringBuilder(str4);
    }

    public static StringBuilder t(String str, String str2, String str3, StringBuilder sb2, ConfigurableProvider configurableProvider) {
        sb2.append(str);
        sb2.append(str2);
        configurableProvider.addAlgorithm(str3, sb2.toString());
        return new StringBuilder();
    }

    public static StringBuilder u(String str, String str2, StringBuilder sb2, ASN1ObjectIdentifier aSN1ObjectIdentifier, ConfigurableProvider configurableProvider) {
        sb2.append(aSN1ObjectIdentifier);
        configurableProvider.addAlgorithm(sb2.toString(), str);
        return new StringBuilder(str2);
    }

    public static StringBuilder v(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm(str, str2);
        return new StringBuilder(str3);
    }

    public static Map w(String str, String str2, String str3, String str4, ConfigurableProvider configurableProvider) {
        configurableProvider.addAlgorithm(str, str2, EC.generalEcAttributes);
        configurableProvider.addAlgorithm(str3, str4, EC.generalEcAttributes);
        return EC.generalEcAttributes;
    }

    public static ASN1ObjectIdentifier x(String str) {
        return new ASN1ObjectIdentifier(str).intern();
    }

    public static void y(StringBuilder sb2, ASN1ObjectIdentifier aSN1ObjectIdentifier, ConfigurableProvider configurableProvider, String str) {
        sb2.append(aSN1ObjectIdentifier);
        configurableProvider.addAlgorithm(sb2.toString(), str);
    }

    public static byte[] z(ASN1Sequence aSN1Sequence, int i10) {
        return Arrays.clone(ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(i10)).getOctets());
    }
}

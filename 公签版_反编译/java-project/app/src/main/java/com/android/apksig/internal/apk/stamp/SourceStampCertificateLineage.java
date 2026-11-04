package com.android.apksig.internal.apk.stamp;

import com.android.apksig.apk.ApkFormatException;
import com.android.apksig.internal.apk.ApkSigningBlockUtilsLite;
import com.android.apksig.internal.apk.SignatureAlgorithm;
import com.android.apksig.internal.util.GuaranteedEncodedFormX509Certificate;
import g.b;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public class SourceStampCertificateLineage {
    private static final int CURRENT_VERSION = 1;
    private static final int FIRST_VERSION = 1;

    public static class SigningCertificateNode {
        public int flags;
        public final SignatureAlgorithm parentSigAlgorithm;
        public SignatureAlgorithm sigAlgorithm;
        public final byte[] signature;
        public final X509Certificate signingCert;

        public SigningCertificateNode(X509Certificate x509Certificate, SignatureAlgorithm signatureAlgorithm, SignatureAlgorithm signatureAlgorithm2, byte[] bArr, int i10) {
            this.signingCert = x509Certificate;
            this.parentSigAlgorithm = signatureAlgorithm;
            this.sigAlgorithm = signatureAlgorithm2;
            this.signature = bArr;
            this.flags = i10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SigningCertificateNode)) {
                return false;
            }
            SigningCertificateNode signingCertificateNode = (SigningCertificateNode) obj;
            return this.signingCert.equals(signingCertificateNode.signingCert) && this.parentSigAlgorithm == signingCertificateNode.parentSigAlgorithm && this.sigAlgorithm == signingCertificateNode.sigAlgorithm && Arrays.equals(this.signature, signingCertificateNode.signature) && this.flags == signingCertificateNode.flags;
        }

        public int hashCode() {
            X509Certificate x509Certificate = this.signingCert;
            int iHashCode = ((x509Certificate == null ? 0 : x509Certificate.hashCode()) + 31) * 31;
            SignatureAlgorithm signatureAlgorithm = this.parentSigAlgorithm;
            int iHashCode2 = (iHashCode + (signatureAlgorithm == null ? 0 : signatureAlgorithm.hashCode())) * 31;
            SignatureAlgorithm signatureAlgorithm2 = this.sigAlgorithm;
            return ((Arrays.hashCode(this.signature) + ((iHashCode2 + (signatureAlgorithm2 != null ? signatureAlgorithm2.hashCode() : 0)) * 31)) * 31) + this.flags;
        }
    }

    public static List<SigningCertificateNode> readSigningCertificateLineage(ByteBuffer byteBuffer) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, IOException, CertificateException, InvalidAlgorithmParameterException {
        String str;
        Throwable th2;
        String str2;
        String str3;
        String str4 = " when parsing SourceStampCertificateLineage object";
        ArrayList arrayList = new ArrayList();
        GuaranteedEncodedFormX509Certificate guaranteedEncodedFormX509Certificate = null;
        if (byteBuffer == null || !byteBuffer.hasRemaining()) {
            return null;
        }
        ApkSigningBlockUtilsLite.checkByteOrderLittleEndian(byteBuffer);
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            int i10 = 0;
            try {
                try {
                    try {
                    } catch (CertificateException e7) {
                        e = e7;
                        str2 = str4;
                    }
                    try {
                        if (byteBuffer.getInt() != 1) {
                            throw new IllegalArgumentException("Encoded SigningCertificateLineage has a version different than any of which we are aware");
                        }
                        try {
                            HashSet hashSet = new HashSet();
                            int i11 = 0;
                            while (byteBuffer.hasRemaining()) {
                                i10++;
                                ByteBuffer lengthPrefixedSlice = ApkSigningBlockUtilsLite.getLengthPrefixedSlice(byteBuffer);
                                ByteBuffer lengthPrefixedSlice2 = ApkSigningBlockUtilsLite.getLengthPrefixedSlice(lengthPrefixedSlice);
                                int i12 = lengthPrefixedSlice.getInt();
                                int i13 = lengthPrefixedSlice.getInt();
                                SignatureAlgorithm signatureAlgorithmFindById = SignatureAlgorithm.findById(i11);
                                byte[] lengthPrefixedByteArray = ApkSigningBlockUtilsLite.readLengthPrefixedByteArray(lengthPrefixedSlice);
                                if (guaranteedEncodedFormX509Certificate != null) {
                                    String first = signatureAlgorithmFindById.getJcaSignatureAlgorithmAndParams().getFirst();
                                    AlgorithmParameterSpec second = signatureAlgorithmFindById.getJcaSignatureAlgorithmAndParams().getSecond();
                                    PublicKey publicKey = guaranteedEncodedFormX509Certificate.getPublicKey();
                                    str3 = str4;
                                    Signature signature = Signature.getInstance(first);
                                    signature.initVerify(publicKey);
                                    if (second != null) {
                                        signature.setParameter(second);
                                    }
                                    signature.update(lengthPrefixedSlice2);
                                    if (!signature.verify(lengthPrefixedByteArray)) {
                                        throw new SecurityException("Unable to verify signature of certificate #" + i10 + " using " + first + " when verifying SourceStampCertificateLineage object");
                                    }
                                } else {
                                    str3 = str4;
                                }
                                lengthPrefixedSlice2.rewind();
                                byte[] lengthPrefixedByteArray2 = ApkSigningBlockUtilsLite.readLengthPrefixedByteArray(lengthPrefixedSlice2);
                                int i14 = lengthPrefixedSlice2.getInt();
                                if (guaranteedEncodedFormX509Certificate != null && i11 != i14) {
                                    throw new SecurityException("Signing algorithm ID mismatch for certificate #" + lengthPrefixedSlice + " when verifying SourceStampCertificateLineage object");
                                }
                                GuaranteedEncodedFormX509Certificate guaranteedEncodedFormX509Certificate2 = new GuaranteedEncodedFormX509Certificate((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(lengthPrefixedByteArray2)), lengthPrefixedByteArray2);
                                if (hashSet.contains(guaranteedEncodedFormX509Certificate2)) {
                                    throw new SecurityException("Encountered duplicate entries in SigningCertificateLineage at certificate #" + i10 + ".  All signing certificates should be unique");
                                }
                                hashSet.add(guaranteedEncodedFormX509Certificate2);
                                arrayList.add(new SigningCertificateNode(guaranteedEncodedFormX509Certificate2, SignatureAlgorithm.findById(i14), SignatureAlgorithm.findById(i13), lengthPrefixedByteArray, i12));
                                guaranteedEncodedFormX509Certificate = guaranteedEncodedFormX509Certificate2;
                                i11 = i13;
                                str4 = str3;
                            }
                            return arrayList;
                        } catch (InvalidAlgorithmParameterException e10) {
                            e = e10;
                            String str5 = str4;
                            th2 = e;
                            str = str5;
                            throw new SecurityException(b.i("Failed to verify signature over signed data for certificate #", i10, str), th2);
                        } catch (InvalidKeyException e11) {
                            e = e11;
                            String str52 = str4;
                            th2 = e;
                            str = str52;
                            throw new SecurityException(b.i("Failed to verify signature over signed data for certificate #", i10, str), th2);
                        } catch (NoSuchAlgorithmException e12) {
                            e = e12;
                            String str522 = str4;
                            th2 = e;
                            str = str522;
                            throw new SecurityException(b.i("Failed to verify signature over signed data for certificate #", i10, str), th2);
                        } catch (SignatureException e13) {
                            e = e13;
                            String str5222 = str4;
                            th2 = e;
                            str = str5222;
                            throw new SecurityException(b.i("Failed to verify signature over signed data for certificate #", i10, str), th2);
                        }
                    } catch (InvalidAlgorithmParameterException e14) {
                        e = e14;
                    } catch (InvalidKeyException e15) {
                        e = e15;
                    } catch (NoSuchAlgorithmException e16) {
                        e = e16;
                    } catch (SignatureException e17) {
                        e = e17;
                    } catch (CertificateException e18) {
                        e = e18;
                        throw new SecurityException(b.i("Failed to decode certificate #", i10, str2), e);
                    }
                } catch (ApkFormatException e19) {
                    e = e19;
                    throw new IOException("Failed to parse SourceStampCertificateLineage object", e);
                } catch (BufferUnderflowException e20) {
                    e = e20;
                    throw new IOException("Failed to parse SourceStampCertificateLineage object", e);
                }
            } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException e21) {
                str = " when parsing SourceStampCertificateLineage object";
                th2 = e21;
            }
        } catch (CertificateException e22) {
            throw new IllegalStateException("Failed to obtain X.509 CertificateFactory", e22);
        }
    }
}

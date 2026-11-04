package org.bouncycastle.cert.jcajce;

import android.support.v4.media.session.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.cert.CertificateException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import org.bouncycastle.cert.X509CertificateHolder;

/* loaded from: classes3.dex */
public class JcaX509CertificateConverter {
    private CertHelper helper;

    public static class ExCertificateException extends CertificateException {
        private Throwable cause;

        public ExCertificateException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }
    }

    public static class ExCertificateParsingException extends CertificateParsingException {
        private Throwable cause;

        public ExCertificateParsingException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }
    }

    public JcaX509CertificateConverter() {
        this.helper = new DefaultCertHelper();
        this.helper = new DefaultCertHelper();
    }

    public X509Certificate getCertificate(X509CertificateHolder x509CertificateHolder) throws ExCertificateParsingException, ExCertificateException {
        try {
            return (X509Certificate) this.helper.getCertificateFactory("X.509").generateCertificate(new ByteArrayInputStream(x509CertificateHolder.getEncoded()));
        } catch (IOException e7) {
            throw new ExCertificateParsingException(a.n(e7, new StringBuilder("exception parsing certificate: ")), e7);
        } catch (NoSuchProviderException e10) {
            throw new ExCertificateException("cannot find required provider:" + e10.getMessage(), e10);
        }
    }

    public JcaX509CertificateConverter setProvider(String str) {
        this.helper = new NamedCertHelper(str);
        return this;
    }

    public JcaX509CertificateConverter setProvider(Provider provider) {
        this.helper = new ProviderCertHelper(provider);
        return this;
    }
}

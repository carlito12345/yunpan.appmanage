package org.bouncycastle.cert.jcajce;

import android.support.v4.media.session.a;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.cert.CRLException;
import java.security.cert.CertificateException;
import java.security.cert.X509CRL;
import org.bouncycastle.cert.X509CRLHolder;

/* loaded from: classes3.dex */
public class JcaX509CRLConverter {
    private CertHelper helper;

    public static class ExCRLException extends CRLException {
        private Throwable cause;

        public ExCRLException(String str, Throwable th2) {
            super(str);
            this.cause = th2;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }
    }

    public JcaX509CRLConverter() {
        this.helper = new DefaultCertHelper();
        this.helper = new DefaultCertHelper();
    }

    public X509CRL getCRL(X509CRLHolder x509CRLHolder) throws ExCRLException {
        try {
            return (X509CRL) this.helper.getCertificateFactory("X.509").generateCRL(new ByteArrayInputStream(x509CRLHolder.getEncoded()));
        } catch (IOException e7) {
            throw new ExCRLException(a.n(e7, new StringBuilder("exception parsing certificate: ")), e7);
        } catch (NoSuchProviderException e10) {
            throw new ExCRLException("cannot find required provider:" + e10.getMessage(), e10);
        } catch (CertificateException e11) {
            throw new ExCRLException("cannot create factory: " + e11.getMessage(), e11);
        }
    }

    public JcaX509CRLConverter setProvider(String str) {
        this.helper = new NamedCertHelper(str);
        return this;
    }

    public JcaX509CRLConverter setProvider(Provider provider) {
        this.helper = new ProviderCertHelper(provider);
        return this;
    }
}

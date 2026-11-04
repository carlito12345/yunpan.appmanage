package org.bouncycastle.jcajce.provider.asymmetric.util;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithContext;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.jcajce.spec.ContextParameterSpec;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.util.Exceptions;

/* loaded from: classes3.dex */
public abstract class BaseDeterministicOrRandomSignature extends Signature {
    protected AlgorithmParameters engineParams;
    private final JcaJceHelper helper;
    protected boolean isInitState;
    protected AsymmetricKeyParameter keyParams;
    private final AlgorithmParameterSpec originalSpec;
    protected ContextParameterSpec paramSpec;

    public BaseDeterministicOrRandomSignature(String str) {
        super(str);
        this.helper = new BCJcaJceHelper();
        this.isInitState = true;
        this.originalSpec = ContextParameterSpec.EMPTY_CONTEXT_SPEC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [org.bouncycastle.crypto.params.ParametersWithContext] */
    /* JADX WARN: Type inference failed for: r2v1, types: [org.bouncycastle.crypto.params.ParametersWithContext] */
    /* JADX WARN: Type inference failed for: r2v2, types: [org.bouncycastle.crypto.params.ParametersWithRandom] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.security.Signature, org.bouncycastle.jcajce.provider.asymmetric.util.BaseDeterministicOrRandomSignature] */
    private void reInit() {
        boolean z;
        AsymmetricKeyParameter parametersWithContext = this.keyParams;
        if (parametersWithContext.isPrivate()) {
            SecureRandom secureRandom = ((Signature) this).appRandom;
            if (secureRandom != null) {
                parametersWithContext = new ParametersWithRandom(parametersWithContext, secureRandom);
            }
            ContextParameterSpec contextParameterSpec = this.paramSpec;
            if (contextParameterSpec != null) {
                parametersWithContext = new ParametersWithContext(parametersWithContext, contextParameterSpec.getContext());
            }
            z = true;
        } else {
            ContextParameterSpec contextParameterSpec2 = this.paramSpec;
            if (contextParameterSpec2 != null) {
                parametersWithContext = new ParametersWithContext(parametersWithContext, contextParameterSpec2.getContext());
            }
            z = false;
        }
        reInitialize(z, parametersWithContext);
    }

    @Override // java.security.SignatureSpi
    public final Object engineGetParameter(String str) {
        throw new UnsupportedOperationException("GetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public final AlgorithmParameters engineGetParameters() throws InvalidParameterSpecException {
        ContextParameterSpec contextParameterSpec;
        if (this.engineParams == null && (contextParameterSpec = this.paramSpec) != null && contextParameterSpec != ContextParameterSpec.EMPTY_CONTEXT_SPEC) {
            try {
                AlgorithmParameters algorithmParametersCreateAlgorithmParameters = this.helper.createAlgorithmParameters("CONTEXT");
                this.engineParams = algorithmParametersCreateAlgorithmParameters;
                algorithmParametersCreateAlgorithmParameters.init(this.paramSpec);
            } catch (Exception e7) {
                throw Exceptions.illegalStateException(e7.toString(), e7);
            }
        }
        return this.engineParams;
    }

    @Override // java.security.SignatureSpi
    public final void engineInitSign(PrivateKey privateKey) {
        signInit(privateKey, null);
        this.paramSpec = ContextParameterSpec.EMPTY_CONTEXT_SPEC;
        this.isInitState = true;
        reInit();
    }

    @Override // java.security.SignatureSpi
    public final void engineInitVerify(PublicKey publicKey) {
        verifyInit(publicKey);
        this.paramSpec = ContextParameterSpec.EMPTY_CONTEXT_SPEC;
        this.isInitState = true;
        reInit();
    }

    @Override // java.security.SignatureSpi
    public final void engineSetParameter(String str, Object obj) {
        throw new UnsupportedOperationException("SetParameter unsupported");
    }

    @Override // java.security.SignatureSpi
    public final void engineUpdate(byte b10) {
        this.isInitState = false;
        updateEngine(b10);
    }

    public abstract void reInitialize(boolean z, CipherParameters cipherParameters);

    public abstract void signInit(PrivateKey privateKey, SecureRandom secureRandom);

    public abstract void updateEngine(byte b10);

    public abstract void updateEngine(byte[] bArr, int i10, int i11);

    public abstract void verifyInit(PublicKey publicKey);

    @Override // java.security.SignatureSpi
    public final void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) {
        signInit(privateKey, secureRandom);
        this.paramSpec = ContextParameterSpec.EMPTY_CONTEXT_SPEC;
        this.isInitState = true;
        reInit();
    }

    @Override // java.security.SignatureSpi
    public void engineSetParameter(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
        if (algorithmParameterSpec == null && (algorithmParameterSpec = this.originalSpec) == null) {
            return;
        }
        if (!this.isInitState) {
            throw new ProviderException("cannot call setParameter in the middle of update");
        }
        if (!(algorithmParameterSpec instanceof ContextParameterSpec)) {
            throw new InvalidAlgorithmParameterException("unknown AlgorithmParameterSpec in signature");
        }
        this.paramSpec = (ContextParameterSpec) algorithmParameterSpec;
        reInit();
    }

    @Override // java.security.SignatureSpi
    public final void engineUpdate(byte[] bArr, int i10, int i11) {
        this.isInitState = false;
        updateEngine(bArr, i10, i11);
    }
}

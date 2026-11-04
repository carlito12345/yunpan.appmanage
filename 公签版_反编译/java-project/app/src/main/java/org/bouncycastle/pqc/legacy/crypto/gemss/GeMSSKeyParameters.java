package org.bouncycastle.pqc.legacy.crypto.gemss;

import org.bouncycastle.crypto.params.AsymmetricKeyParameter;

/* loaded from: classes3.dex */
public class GeMSSKeyParameters extends AsymmetricKeyParameter {
    final GeMSSParameters parameters;

    public GeMSSKeyParameters(boolean z, GeMSSParameters geMSSParameters) {
        super(z);
        this.parameters = geMSSParameters;
    }

    public GeMSSParameters getParameters() {
        return this.parameters;
    }
}

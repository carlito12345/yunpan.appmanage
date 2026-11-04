package org.bouncycastle.its.operator;

import org.bouncycastle.its.ITSCertificate;
import org.bouncycastle.operator.ContentVerifier;

/* loaded from: classes3.dex */
public interface ITSContentVerifierProvider {
    ContentVerifier get(int i10);

    ITSCertificate getAssociatedCertificate();

    boolean hasAssociatedCertificate();
}

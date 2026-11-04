package org.bouncycastle.jcajce.interfaces;

import java.security.Key;
import org.bouncycastle.jcajce.spec.MLKEMParameterSpec;

/* loaded from: classes3.dex */
public interface MLKEMKey extends Key {
    MLKEMParameterSpec getParameterSpec();
}

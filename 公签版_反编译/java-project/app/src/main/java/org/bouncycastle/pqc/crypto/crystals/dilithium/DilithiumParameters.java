package org.bouncycastle.pqc.crypto.crystals.dilithium;

import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class DilithiumParameters {
    public static final DilithiumParameters dilithium2 = new DilithiumParameters("dilithium2", 2, false);
    public static final DilithiumParameters dilithium3 = new DilithiumParameters("dilithium3", 3, false);
    public static final DilithiumParameters dilithium5 = new DilithiumParameters("dilithium5", 5, false);

    /* renamed from: k, reason: collision with root package name */
    private final int f12290k;
    private final String name;
    private final boolean usingAES;

    private DilithiumParameters(String str, int i10, boolean z) {
        this.name = str;
        this.f12290k = i10;
        this.usingAES = z;
    }

    public DilithiumEngine getEngine(SecureRandom secureRandom) {
        return new DilithiumEngine(this.f12290k, secureRandom, this.usingAES);
    }

    public String getName() {
        return this.name;
    }
}

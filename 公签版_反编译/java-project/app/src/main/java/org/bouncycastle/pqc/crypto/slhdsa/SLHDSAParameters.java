package org.bouncycastle.pqc.crypto.slhdsa;

import org.bouncycastle.pqc.crypto.slhdsa.SLHDSAEngine;

/* loaded from: classes3.dex */
public class SLHDSAParameters {
    public static final int TYPE_PURE = 0;
    public static final int TYPE_SHA2_256 = 1;
    public static final int TYPE_SHA2_512 = 2;
    public static final int TYPE_SHAKE128 = 3;
    public static final int TYPE_SHAKE256 = 4;
    private final SLHDSAEngineProvider engineProvider;
    private final String name;
    private final int preHashDigest;
    public static final SLHDSAParameters sha2_128f = new SLHDSAParameters("sha2-128f", new Sha2EngineProvider(16, 16, 22, 6, 33, 66), 0);
    public static final SLHDSAParameters sha2_128s = new SLHDSAParameters("sha2-128s", new Sha2EngineProvider(16, 16, 7, 12, 14, 63), 0);
    public static final SLHDSAParameters sha2_192f = new SLHDSAParameters("sha2-192f", new Sha2EngineProvider(24, 16, 22, 8, 33, 66), 0);
    public static final SLHDSAParameters sha2_192s = new SLHDSAParameters("sha2-192s", new Sha2EngineProvider(24, 16, 7, 14, 17, 63), 0);
    public static final SLHDSAParameters sha2_256f = new SLHDSAParameters("sha2-256f", new Sha2EngineProvider(32, 16, 17, 9, 35, 68), 0);
    public static final SLHDSAParameters sha2_256s = new SLHDSAParameters("sha2-256s", new Sha2EngineProvider(32, 16, 8, 14, 22, 64), 0);
    public static final SLHDSAParameters shake_128f = new SLHDSAParameters("shake-128f", new Shake256EngineProvider(16, 16, 22, 6, 33, 66), 0);
    public static final SLHDSAParameters shake_128s = new SLHDSAParameters("shake-128s", new Shake256EngineProvider(16, 16, 7, 12, 14, 63), 0);
    public static final SLHDSAParameters shake_192f = new SLHDSAParameters("shake-192f", new Shake256EngineProvider(24, 16, 22, 8, 33, 66), 0);
    public static final SLHDSAParameters shake_192s = new SLHDSAParameters("shake-192s", new Shake256EngineProvider(24, 16, 7, 14, 17, 63), 0);
    public static final SLHDSAParameters shake_256f = new SLHDSAParameters("shake-256f", new Shake256EngineProvider(32, 16, 17, 9, 35, 68), 0);
    public static final SLHDSAParameters shake_256s = new SLHDSAParameters("shake-256s", new Shake256EngineProvider(32, 16, 8, 14, 22, 64), 0);
    public static final SLHDSAParameters sha2_128f_with_sha256 = new SLHDSAParameters("sha2-128f-with-sha256", new Sha2EngineProvider(16, 16, 22, 6, 33, 66), 1);
    public static final SLHDSAParameters sha2_128s_with_sha256 = new SLHDSAParameters("sha2-128s-with-sha256", new Sha2EngineProvider(16, 16, 7, 12, 14, 63), 1);
    public static final SLHDSAParameters sha2_192f_with_sha512 = new SLHDSAParameters("sha2-192f-with-sha512", new Sha2EngineProvider(24, 16, 22, 8, 33, 66), 2);
    public static final SLHDSAParameters sha2_192s_with_sha512 = new SLHDSAParameters("sha2-192s-with-sha512", new Sha2EngineProvider(24, 16, 7, 14, 17, 63), 2);
    public static final SLHDSAParameters sha2_256f_with_sha512 = new SLHDSAParameters("sha2-256f-with-sha512", new Sha2EngineProvider(32, 16, 17, 9, 35, 68), 2);
    public static final SLHDSAParameters sha2_256s_with_sha512 = new SLHDSAParameters("sha2-256s-with-sha512", new Sha2EngineProvider(32, 16, 8, 14, 22, 64), 2);
    public static final SLHDSAParameters shake_128f_with_shake128 = new SLHDSAParameters("shake-128f-with-shake128", new Shake256EngineProvider(16, 16, 22, 6, 33, 66), 3);
    public static final SLHDSAParameters shake_128s_with_shake128 = new SLHDSAParameters("shake-128s-with-shake128", new Shake256EngineProvider(16, 16, 7, 12, 14, 63), 3);
    public static final SLHDSAParameters shake_192f_with_shake256 = new SLHDSAParameters("shake-192f-with-shake256", new Shake256EngineProvider(24, 16, 22, 8, 33, 66), 4);
    public static final SLHDSAParameters shake_192s_with_shake256 = new SLHDSAParameters("shake-192s-with-shake256", new Shake256EngineProvider(24, 16, 7, 14, 17, 63), 4);
    public static final SLHDSAParameters shake_256f_with_shake256 = new SLHDSAParameters("shake-256f-with-shake256", new Shake256EngineProvider(32, 16, 17, 9, 35, 68), 4);
    public static final SLHDSAParameters shake_256s_with_shake256 = new SLHDSAParameters("shake-256s-with-shake256", new Shake256EngineProvider(32, 16, 8, 14, 22, 64), 4);

    public static class Sha2EngineProvider implements SLHDSAEngineProvider {

        /* renamed from: a, reason: collision with root package name */
        private final int f12390a;

        /* renamed from: d, reason: collision with root package name */
        private final int f12391d;

        /* renamed from: h, reason: collision with root package name */
        private final int f12392h;

        /* renamed from: k, reason: collision with root package name */
        private final int f12393k;

        /* renamed from: n, reason: collision with root package name */
        private final int f12394n;

        /* renamed from: w, reason: collision with root package name */
        private final int f12395w;

        public Sha2EngineProvider(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f12394n = i10;
            this.f12395w = i11;
            this.f12391d = i12;
            this.f12390a = i13;
            this.f12393k = i14;
            this.f12392h = i15;
        }

        @Override // org.bouncycastle.pqc.crypto.slhdsa.SLHDSAEngineProvider
        public SLHDSAEngine get() {
            return new SLHDSAEngine.Sha2Engine(this.f12394n, this.f12395w, this.f12391d, this.f12390a, this.f12393k, this.f12392h);
        }

        @Override // org.bouncycastle.pqc.crypto.slhdsa.SLHDSAEngineProvider
        public int getN() {
            return this.f12394n;
        }
    }

    public static class Shake256EngineProvider implements SLHDSAEngineProvider {

        /* renamed from: a, reason: collision with root package name */
        private final int f12396a;

        /* renamed from: d, reason: collision with root package name */
        private final int f12397d;

        /* renamed from: h, reason: collision with root package name */
        private final int f12398h;

        /* renamed from: k, reason: collision with root package name */
        private final int f12399k;

        /* renamed from: n, reason: collision with root package name */
        private final int f12400n;

        /* renamed from: w, reason: collision with root package name */
        private final int f12401w;

        public Shake256EngineProvider(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f12400n = i10;
            this.f12401w = i11;
            this.f12397d = i12;
            this.f12396a = i13;
            this.f12399k = i14;
            this.f12398h = i15;
        }

        @Override // org.bouncycastle.pqc.crypto.slhdsa.SLHDSAEngineProvider
        public SLHDSAEngine get() {
            return new SLHDSAEngine.Shake256Engine(this.f12400n, this.f12401w, this.f12397d, this.f12396a, this.f12399k, this.f12398h);
        }

        @Override // org.bouncycastle.pqc.crypto.slhdsa.SLHDSAEngineProvider
        public int getN() {
            return this.f12400n;
        }
    }

    private SLHDSAParameters(String str, SLHDSAEngineProvider sLHDSAEngineProvider, int i10) {
        this.name = str;
        this.engineProvider = sLHDSAEngineProvider;
        this.preHashDigest = i10;
    }

    public SLHDSAEngine getEngine() {
        return this.engineProvider.get();
    }

    public int getN() {
        return this.engineProvider.getN();
    }

    public String getName() {
        return this.name;
    }

    public int getType() {
        return this.preHashDigest;
    }

    public boolean isPreHash() {
        return this.preHashDigest != 0;
    }
}

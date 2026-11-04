package xe;

import j$.util.concurrent.ThreadLocalRandom;
import java.util.Random;
import ue.d;

/* loaded from: classes.dex */
public final class a extends we.a {
    @Override // we.a
    public final Random a() {
        ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
        d.d(threadLocalRandomCurrent, "current(...)");
        return threadLocalRandomCurrent;
    }
}

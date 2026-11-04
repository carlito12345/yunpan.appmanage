package ph;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class k extends ArrayList {
    public k() {
        super(0);
    }

    public boolean a() {
        return size() < 0;
    }

    public int b() {
        return ((ArrayList) this).modCount;
    }

    public k(int i10) {
        super(i10);
    }
}

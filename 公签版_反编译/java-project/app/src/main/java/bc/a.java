package bc;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f2764a = new HashMap();

    public final void a(b bVar) {
        if (bVar instanceof a) {
            throw new IllegalArgumentException();
        }
        for (String str : bVar.v()) {
            this.f2764a.put(str, bVar);
        }
    }

    @Override // bc.b
    public final String[] v() {
        return new String[0];
    }
}

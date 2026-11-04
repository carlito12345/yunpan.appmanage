package l9;

import m9.d;
import okhttp3.Request;

/* loaded from: classes.dex */
public final class b extends m9.a {
    public b(String str) {
        super(str);
    }

    @Override // m9.e
    public final Request c(d dVar) {
        return i(dVar).post(dVar).url(this.f11009a).tag(this.f11012d).build();
    }
}

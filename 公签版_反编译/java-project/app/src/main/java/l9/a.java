package l9;

import m9.d;
import okhttp3.Request;

/* loaded from: classes.dex */
public final class a extends m9.b {
    public a(String str) {
        super(str);
    }

    @Override // m9.e
    public final Request c(d dVar) {
        this.f11009a = n9.a.c(this.f11010b, this.f11016h.f10212a);
        Request.Builder builder = new Request.Builder();
        n9.a.a(builder, this.f11017i);
        return builder.get().url(this.f11009a).tag(this.f11012d).build();
    }
}

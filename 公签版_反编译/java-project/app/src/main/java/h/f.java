package h;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.io.IOException;

/* loaded from: classes.dex */
public final class f implements e {

    /* renamed from: a, reason: collision with root package name */
    public d f6235a;

    public f(d dVar) {
        this.f6235a = dVar;
    }

    @Override // h.e
    public final void a(g.f fVar) throws IOException {
        g.f fVar2 = new g.f();
        this.f6235a.b(fVar2);
        fVar.write(fVar2.toByteArray());
    }

    @Override // h.e
    public final String getName() {
        return "algorithmID";
    }

    public final String toString() {
        if (this.f6235a == null) {
            return "";
        }
        return this.f6235a.toString() + ", OID = " + this.f6235a.f6232a.toString() + SignParameters.NEW_LINE;
    }
}

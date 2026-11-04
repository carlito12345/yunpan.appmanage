package m9;

import fg.e0;
import fg.j;
import fg.s;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* loaded from: classes.dex */
public final class d extends RequestBody {

    /* renamed from: a, reason: collision with root package name */
    public final RequestBody f11007a;

    /* renamed from: b, reason: collision with root package name */
    public final nh.b f11008b;

    public d(RequestBody requestBody, nh.b bVar) {
        this.f11007a = requestBody;
        this.f11008b = bVar;
    }

    @Override // okhttp3.RequestBody
    public final long contentLength() {
        try {
            return this.f11007a.contentLength();
        } catch (IOException e7) {
            e7.printStackTrace();
            return -1L;
        }
    }

    @Override // okhttp3.RequestBody
    public final MediaType contentType() {
        return this.f11007a.contentType();
    }

    @Override // okhttp3.RequestBody
    public final void writeTo(j jVar) {
        s sVarB = e0.b(new c(this, jVar));
        this.f11007a.writeTo(sVarB);
        sVarB.flush();
    }
}

package ja;

import com.yunpan.appmanage.bean.WpTaskBean;
import fg.e0;
import fg.j;
import fg.s;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* loaded from: classes.dex */
public final class i extends RequestBody {

    /* renamed from: a, reason: collision with root package name */
    public final RequestBody f9844a;

    /* renamed from: b, reason: collision with root package name */
    public final ma.b f9845b;

    /* renamed from: c, reason: collision with root package name */
    public final WpTaskBean f9846c;

    /* renamed from: d, reason: collision with root package name */
    public long f9847d = -1;

    public i(WpTaskBean wpTaskBean, RequestBody requestBody, ma.b bVar) {
        this.f9846c = wpTaskBean;
        this.f9844a = requestBody;
        this.f9845b = bVar;
    }

    @Override // okhttp3.RequestBody
    public final long contentLength() {
        if (this.f9847d == -1) {
            this.f9847d = this.f9844a.contentLength();
            System.out.getClass();
        }
        return this.f9847d;
    }

    @Override // okhttp3.RequestBody
    public final MediaType contentType() {
        return this.f9844a.contentType();
    }

    @Override // okhttp3.RequestBody
    public final void writeTo(j jVar) {
        System.out.getClass();
        s sVarB = e0.b(new h(jVar, this.f9846c, contentLength(), this.f9845b));
        this.f9844a.writeTo(sVarB);
        sVarB.flush();
    }
}

package ce;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class e extends r0 {

    /* renamed from: c, reason: collision with root package name */
    public int f3046c;

    /* renamed from: d, reason: collision with root package name */
    public long f3047d;

    /* renamed from: e, reason: collision with root package name */
    public String f3048e;

    /* renamed from: f, reason: collision with root package name */
    public String f3049f;

    /* renamed from: g, reason: collision with root package name */
    public String f3050g;

    /* renamed from: h, reason: collision with root package name */
    public String f3051h;

    /* renamed from: i, reason: collision with root package name */
    public long f3052i;

    /* renamed from: k, reason: collision with root package name */
    public HashMap f3054k;
    public String l = null;

    /* renamed from: j, reason: collision with root package name */
    public e f3053j = this;

    @Override // ce.r0, java.lang.Throwable
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("DfsReferral[pathConsumed=");
        sb2.append(this.f3046c);
        sb2.append(",server=");
        sb2.append(this.f3048e);
        sb2.append(",share=");
        sb2.append(this.f3049f);
        sb2.append(",link=");
        sb2.append(this.f3050g);
        sb2.append(",path=");
        sb2.append(this.f3051h);
        sb2.append(",ttl=");
        sb2.append(this.f3047d);
        sb2.append(",expiration=");
        return android.support.v4.media.session.a.t(sb2, this.f3052i, ",resolveHashes=false]");
    }
}

package ph;

import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class g implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public m f12709a = m.base;

    /* renamed from: b, reason: collision with root package name */
    public Charset f12710b = nh.a.f11439a;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f12711c = true;

    /* renamed from: d, reason: collision with root package name */
    public final int f12712d = 1;

    /* renamed from: e, reason: collision with root package name */
    public final int f12713e = 30;

    /* renamed from: f, reason: collision with root package name */
    public final int f12714f = 1;

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final g clone() {
        try {
            g gVar = (g) super.clone();
            String strName = this.f12710b.name();
            gVar.getClass();
            gVar.f12710b = Charset.forName(strName);
            gVar.f12709a = m.valueOf(this.f12709a.name());
            return gVar;
        } catch (CloneNotSupportedException e7) {
            throw new RuntimeException(e7);
        }
    }
}

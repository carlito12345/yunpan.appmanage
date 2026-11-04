package mf;

import java.nio.ByteBuffer;
import java.util.Locale;
import l2.l0;
import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public String f11220a;

    /* renamed from: b, reason: collision with root package name */
    public final short f11221b;

    /* renamed from: c, reason: collision with root package name */
    public final Locale f11222c;

    /* renamed from: d, reason: collision with root package name */
    public l0 f11223d;

    /* renamed from: e, reason: collision with root package name */
    public ByteBuffer f11224e;

    /* renamed from: f, reason: collision with root package name */
    public long[] f11225f;

    /* renamed from: g, reason: collision with root package name */
    public l0 f11226g;

    /* renamed from: h, reason: collision with root package name */
    public final int f11227h;

    public j(k kVar) {
        this.f11221b = (short) (kVar.f11228d & 255);
        d dVar = kVar.f11231g;
        this.f11222c = new Locale(dVar.f11203a, dVar.f11204b);
        this.f11227h = dVar.f11205c & HPKE.aead_EXPORT_ONLY;
    }

    public final String toString() {
        return "Type{name='" + this.f11220a + "', id=" + ((int) this.f11221b) + ", locale=" + this.f11222c + '}';
    }
}

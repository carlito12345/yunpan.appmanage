package d3;

import a1.i;
import java.util.ArrayDeque;
import l2.l;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f4356a = new byte[8];

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f4357b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final h f4358c = new h();

    /* renamed from: d, reason: collision with root package name */
    public i f4359d;

    /* renamed from: e, reason: collision with root package name */
    public int f4360e;

    /* renamed from: f, reason: collision with root package name */
    public int f4361f;

    /* renamed from: g, reason: collision with root package name */
    public long f4362g;

    public final long a(l lVar, int i10) {
        lVar.b(this.f4356a, 0, i10, false);
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = (j10 << 8) | (r0[i11] & 255);
        }
        return j10;
    }
}

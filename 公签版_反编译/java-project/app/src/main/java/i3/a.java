package i3;

import java.util.List;
import u7.g0;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final g0 f8484a;

    /* renamed from: b, reason: collision with root package name */
    public final long f8485b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8486c;

    /* renamed from: d, reason: collision with root package name */
    public final long f8487d;

    public a(long j10, long j11, List list) {
        this.f8484a = g0.m(list);
        this.f8485b = j10;
        this.f8486c = j11;
        long j12 = -9223372036854775807L;
        if (j10 != -9223372036854775807L && j11 != -9223372036854775807L) {
            j12 = j10 + j11;
        }
        this.f8487d = j12;
    }
}

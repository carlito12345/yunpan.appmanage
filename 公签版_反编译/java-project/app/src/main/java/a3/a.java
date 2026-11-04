package a3;

import a9.o;
import j$.util.Objects;
import java.util.Locale;
import u1.f0;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final long f368a;

    /* renamed from: b, reason: collision with root package name */
    public final long f369b;

    /* renamed from: c, reason: collision with root package name */
    public final int f370c;

    public a(long j10, long j11, int i10) {
        o.k(j10 < j11);
        this.f368a = j10;
        this.f369b = j11;
        this.f370c = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f368a == aVar.f368a && this.f369b == aVar.f369b && this.f370c == aVar.f370c;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f368a), Long.valueOf(this.f369b), Integer.valueOf(this.f370c));
    }

    public final String toString() {
        String str = f0.f15206a;
        Locale locale = Locale.US;
        return "Segment: startTimeMs=" + this.f368a + ", endTimeMs=" + this.f369b + ", speedDivisor=" + this.f370c;
    }
}

package a2;

import android.os.SystemClock;

/* loaded from: classes.dex */
public final class m1 {

    /* renamed from: a, reason: collision with root package name */
    public Exception f230a;

    /* renamed from: b, reason: collision with root package name */
    public long f231b = -9223372036854775807L;

    /* renamed from: c, reason: collision with root package name */
    public long f232c = -9223372036854775807L;

    public final void a(Exception exc) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.f230a == null) {
            this.f230a = exc;
        }
        if (this.f231b == -9223372036854775807L && n1.f234c0.get() <= 0) {
            this.f231b = 200 + jElapsedRealtime;
        }
        long j10 = this.f231b;
        if (j10 == -9223372036854775807L || jElapsedRealtime < j10) {
            this.f232c = jElapsedRealtime + 50;
            return;
        }
        Exception exc2 = this.f230a;
        if (exc2 != exc) {
            try {
                Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(exc2, exc);
            } catch (Exception unused) {
            }
        }
        Exception exc3 = this.f230a;
        this.f230a = null;
        this.f231b = -9223372036854775807L;
        this.f232c = -9223372036854775807L;
        throw exc3;
    }
}

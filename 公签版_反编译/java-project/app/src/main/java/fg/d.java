package fg;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class d implements z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5837a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Object f5838b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f5839c;

    public d(InputStream inputStream, c0 c0Var) {
        ue.d.e(inputStream, "input");
        ue.d.e(c0Var, "timeout");
        this.f5838b = inputStream;
        this.f5839c = c0Var;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        switch (this.f5837a) {
            case 0:
                z zVar = (z) this.f5839c;
                e eVar = (e) this.f5838b;
                eVar.enter();
                try {
                    zVar.close();
                    if (eVar.exit()) {
                        throw eVar.access$newTimeoutException(null);
                    }
                    return;
                } catch (IOException e7) {
                    if (!eVar.exit()) {
                        throw e7;
                    }
                    throw eVar.access$newTimeoutException(e7);
                } finally {
                    eVar.exit();
                }
            default:
                ((InputStream) this.f5838b).close();
                return;
        }
    }

    @Override // fg.z
    public final long read(i iVar, long j10) throws IOException {
        switch (this.f5837a) {
            case 0:
                ue.d.e(iVar, "sink");
                z zVar = (z) this.f5839c;
                e eVar = (e) this.f5838b;
                eVar.enter();
                try {
                    long j11 = zVar.read(iVar, j10);
                    if (eVar.exit()) {
                        throw eVar.access$newTimeoutException(null);
                    }
                    return j11;
                } catch (IOException e7) {
                    if (eVar.exit()) {
                        throw eVar.access$newTimeoutException(e7);
                    }
                    throw e7;
                } finally {
                    eVar.exit();
                }
            default:
                ue.d.e(iVar, "sink");
                if (j10 == 0) {
                    return 0L;
                }
                if (j10 < 0) {
                    throw new IllegalArgumentException(ta.q.j(j10, "byteCount < 0: ").toString());
                }
                try {
                    ((c0) this.f5839c).throwIfReached();
                    u uVarS = iVar.S(1);
                    int i10 = ((InputStream) this.f5838b).read(uVarS.f5875a, uVarS.f5877c, (int) Math.min(j10, 8192 - uVarS.f5877c));
                    if (i10 == -1) {
                        if (uVarS.f5876b == uVarS.f5877c) {
                            iVar.f5852a = uVarS.a();
                            v.a(uVarS);
                        }
                        return -1L;
                    }
                    uVarS.f5877c += i10;
                    long j12 = i10;
                    iVar.f5853b += j12;
                    return j12;
                } catch (AssertionError e10) {
                    if (e0.f(e10)) {
                        throw new IOException(e10);
                    }
                    throw e10;
                }
        }
    }

    @Override // fg.z
    public final c0 timeout() {
        switch (this.f5837a) {
            case 0:
                return (e) this.f5838b;
            default:
                return (c0) this.f5839c;
        }
    }

    public final String toString() {
        switch (this.f5837a) {
            case 0:
                return "AsyncTimeout.source(" + ((z) this.f5839c) + ')';
            default:
                return "source(" + ((InputStream) this.f5838b) + ')';
        }
    }

    public d(e eVar, z zVar) {
        this.f5838b = eVar;
        this.f5839c = zVar;
    }
}

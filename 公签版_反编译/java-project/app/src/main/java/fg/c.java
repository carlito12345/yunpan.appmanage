package fg;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class c implements x {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5834a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f5835b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f5836c;

    public /* synthetic */ c(Object obj, int i10, Object obj2) {
        this.f5834a = i10;
        this.f5835b = obj;
        this.f5836c = obj2;
    }

    @Override // fg.x, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() throws IOException {
        switch (this.f5834a) {
            case 0:
                x xVar = (x) this.f5836c;
                e eVar = (e) this.f5835b;
                eVar.enter();
                try {
                    xVar.close();
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
                ((OutputStream) this.f5835b).close();
                return;
        }
    }

    @Override // fg.x, java.io.Flushable
    public final void flush() throws IOException {
        switch (this.f5834a) {
            case 0:
                x xVar = (x) this.f5836c;
                e eVar = (e) this.f5835b;
                eVar.enter();
                try {
                    xVar.flush();
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
                ((OutputStream) this.f5835b).flush();
                return;
        }
    }

    @Override // fg.x
    public final c0 timeout() {
        switch (this.f5834a) {
            case 0:
                return (e) this.f5835b;
            default:
                return (c0) this.f5836c;
        }
    }

    public final String toString() {
        switch (this.f5834a) {
            case 0:
                return "AsyncTimeout.sink(" + ((x) this.f5836c) + ')';
            default:
                return "sink(" + ((OutputStream) this.f5835b) + ')';
        }
    }

    @Override // fg.x
    public final void write(i iVar, long j10) throws IOException {
        switch (this.f5834a) {
            case 0:
                ue.d.e(iVar, "source");
                e0.d(iVar.f5853b, 0L, j10);
                while (true) {
                    long j11 = 0;
                    if (j10 <= 0) {
                        return;
                    }
                    u uVar = iVar.f5852a;
                    ue.d.b(uVar);
                    while (true) {
                        if (j11 < 65536) {
                            j11 += uVar.f5877c - uVar.f5876b;
                            if (j11 >= j10) {
                                j11 = j10;
                            } else {
                                uVar = uVar.f5880f;
                                ue.d.b(uVar);
                            }
                        }
                    }
                    x xVar = (x) this.f5836c;
                    e eVar = (e) this.f5835b;
                    eVar.enter();
                    try {
                        xVar.write(iVar, j11);
                        if (eVar.exit()) {
                            throw eVar.access$newTimeoutException(null);
                        }
                        j10 -= j11;
                    } catch (IOException e7) {
                        if (!eVar.exit()) {
                            throw e7;
                        }
                        throw eVar.access$newTimeoutException(e7);
                    } finally {
                        eVar.exit();
                    }
                }
            default:
                ue.d.e(iVar, "source");
                e0.d(iVar.f5853b, 0L, j10);
                while (j10 > 0) {
                    ((c0) this.f5836c).throwIfReached();
                    u uVar2 = iVar.f5852a;
                    ue.d.b(uVar2);
                    int iMin = (int) Math.min(j10, uVar2.f5877c - uVar2.f5876b);
                    ((OutputStream) this.f5835b).write(uVar2.f5875a, uVar2.f5876b, iMin);
                    int i10 = uVar2.f5876b + iMin;
                    uVar2.f5876b = i10;
                    long j12 = iMin;
                    j10 -= j12;
                    iVar.f5853b -= j12;
                    if (i10 == uVar2.f5877c) {
                        iVar.f5852a = uVar2.a();
                        v.a(uVar2);
                    }
                }
                return;
        }
    }
}

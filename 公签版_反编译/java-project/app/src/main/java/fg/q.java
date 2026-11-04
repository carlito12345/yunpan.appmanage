package fg;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* loaded from: classes.dex */
public final class q implements z {

    /* renamed from: a, reason: collision with root package name */
    public final t f5864a;

    /* renamed from: b, reason: collision with root package name */
    public final Inflater f5865b;

    /* renamed from: c, reason: collision with root package name */
    public int f5866c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f5867d;

    public q(t tVar, Inflater inflater) {
        this.f5864a = tVar;
        this.f5865b = inflater;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f5867d) {
            return;
        }
        this.f5865b.end();
        this.f5867d = true;
        this.f5864a.close();
    }

    @Override // fg.z
    public final long read(i iVar, long j10) throws DataFormatException, IOException {
        long j11;
        ue.d.e(iVar, "sink");
        while (j10 >= 0) {
            if (this.f5867d) {
                throw new IllegalStateException("closed");
            }
            t tVar = this.f5864a;
            Inflater inflater = this.f5865b;
            if (j10 == 0) {
                j11 = 0;
            } else {
                try {
                    u uVarS = iVar.S(1);
                    int iMin = (int) Math.min(j10, 8192 - uVarS.f5877c);
                    if (inflater.needsInput() && !tVar.j()) {
                        u uVar = tVar.f5873b.f5852a;
                        ue.d.b(uVar);
                        int i10 = uVar.f5877c;
                        int i11 = uVar.f5876b;
                        int i12 = i10 - i11;
                        this.f5866c = i12;
                        inflater.setInput(uVar.f5875a, i11, i12);
                    }
                    int iInflate = inflater.inflate(uVarS.f5875a, uVarS.f5877c, iMin);
                    int i13 = this.f5866c;
                    if (i13 != 0) {
                        int remaining = i13 - inflater.getRemaining();
                        this.f5866c -= remaining;
                        tVar.skip(remaining);
                    }
                    if (iInflate > 0) {
                        uVarS.f5877c += iInflate;
                        j11 = iInflate;
                        iVar.f5853b += j11;
                    } else {
                        if (uVarS.f5876b == uVarS.f5877c) {
                            iVar.f5852a = uVarS.a();
                            v.a(uVarS);
                        }
                        j11 = 0;
                    }
                } catch (DataFormatException e7) {
                    throw new IOException(e7);
                }
            }
            if (j11 > 0) {
                return j11;
            }
            if (inflater.finished() || inflater.needsDictionary()) {
                return -1L;
            }
            if (tVar.j()) {
                throw new EOFException("source exhausted prematurely");
            }
        }
        throw new IllegalArgumentException(ta.q.j(j10, "byteCount < 0: ").toString());
    }

    @Override // fg.z
    public final c0 timeout() {
        return this.f5864a.f5872a.timeout();
    }
}

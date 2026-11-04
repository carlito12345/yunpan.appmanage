package fg;

import java.io.Closeable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class g implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public i f5843a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5844b;

    /* renamed from: c, reason: collision with root package name */
    public u f5845c;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f5847e;

    /* renamed from: d, reason: collision with root package name */
    public long f5846d = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f5848f = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f5849g = -1;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f5843a == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        this.f5843a = null;
        this.f5845c = null;
        this.f5846d = -1L;
        this.f5847e = null;
        this.f5848f = -1;
        this.f5849g = -1;
    }

    public final int r(long j10) {
        i iVar = this.f5843a;
        if (iVar == null) {
            throw new IllegalStateException("not attached to a buffer");
        }
        if (j10 >= -1) {
            long j11 = iVar.f5853b;
            if (j10 <= j11) {
                if (j10 == -1 || j10 == j11) {
                    this.f5845c = null;
                    this.f5846d = j10;
                    this.f5847e = null;
                    this.f5848f = -1;
                    this.f5849g = -1;
                    return -1;
                }
                u uVar = iVar.f5852a;
                u uVar2 = this.f5845c;
                long j12 = 0;
                if (uVar2 != null) {
                    long j13 = this.f5846d - (this.f5848f - uVar2.f5876b);
                    if (j13 > j10) {
                        j11 = j13;
                        uVar2 = uVar;
                        uVar = uVar2;
                    } else {
                        j12 = j13;
                    }
                } else {
                    uVar2 = uVar;
                }
                if (j11 - j10 > j10 - j12) {
                    while (true) {
                        ue.d.b(uVar2);
                        long j14 = (uVar2.f5877c - uVar2.f5876b) + j12;
                        if (j10 < j14) {
                            break;
                        }
                        uVar2 = uVar2.f5880f;
                        j12 = j14;
                    }
                } else {
                    while (j11 > j10) {
                        ue.d.b(uVar);
                        uVar = uVar.f5881g;
                        ue.d.b(uVar);
                        j11 -= uVar.f5877c - uVar.f5876b;
                    }
                    uVar2 = uVar;
                    j12 = j11;
                }
                if (this.f5844b) {
                    ue.d.b(uVar2);
                    if (uVar2.f5878d) {
                        byte[] bArr = uVar2.f5875a;
                        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                        ue.d.d(bArrCopyOf, "copyOf(this, size)");
                        u uVar3 = new u(bArrCopyOf, uVar2.f5876b, uVar2.f5877c, false, true);
                        if (iVar.f5852a == uVar2) {
                            iVar.f5852a = uVar3;
                        }
                        uVar2.b(uVar3);
                        u uVar4 = uVar3.f5881g;
                        ue.d.b(uVar4);
                        uVar4.a();
                        uVar2 = uVar3;
                    }
                }
                this.f5845c = uVar2;
                this.f5846d = j10;
                ue.d.b(uVar2);
                this.f5847e = uVar2.f5875a;
                int i10 = uVar2.f5876b + ((int) (j10 - j12));
                this.f5848f = i10;
                int i11 = uVar2.f5877c;
                this.f5849g = i11;
                return i11 - i10;
            }
        }
        StringBuilder sbW = android.support.v4.media.session.a.w(j10, "offset=", " > size=");
        sbW.append(iVar.f5853b);
        throw new ArrayIndexOutOfBoundsException(sbW.toString());
    }
}

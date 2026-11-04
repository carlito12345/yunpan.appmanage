package ag;

import a9.o;
import fa.b0;
import ha.wd;
import java.nio.ByteBuffer;
import ua.v0;
import v1.p;
import v1.q;
import v1.r;

/* loaded from: classes.dex */
public final class h implements wd {

    /* renamed from: a, reason: collision with root package name */
    public boolean f680a;

    public /* synthetic */ h(byte b10) {
        this.f680a = false;
    }

    @Override // ha.wd
    public void D() {
        b0.f5652a.g("setenforce ".concat(this.f680a ? "1" : "0"), new v0(21));
    }

    public h() {
    }

    public h(r rVar, q qVar) throws p {
        int i10 = qVar.f16390a;
        o.k(i10 == 6 || i10 == 3);
        ByteBuffer byteBuffer = qVar.f16391b;
        int iMin = Math.min(4, byteBuffer.remaining());
        byte[] bArr = new byte[iMin];
        byteBuffer.asReadOnlyBuffer().get(bArr);
        j3.f fVar = new j3.f(bArr, iMin);
        if (!rVar.f16392a) {
            if (fVar.f()) {
                this.f680a = false;
                return;
            }
            int iG = fVar.g(2);
            boolean zF = fVar.f();
            if (rVar.f16393b) {
                throw new p();
            }
            if (!zF) {
                this.f680a = true;
                return;
            }
            boolean zF2 = (iG == 3 || iG == 0) ? true : fVar.f();
            fVar.n();
            if (rVar.f16395d) {
                if (fVar.f()) {
                    if (rVar.f16396e) {
                        fVar.n();
                    } else {
                        throw new p();
                    }
                }
                if (!rVar.f16394c) {
                    if (iG != 3) {
                        fVar.n();
                    }
                    fVar.o(rVar.f16397f);
                    if (iG != 2 && iG != 0 && !zF2) {
                        fVar.o(3);
                    }
                    this.f680a = ((iG == 3 || iG == 0) ? 255 : fVar.g(8)) != 0;
                    return;
                }
                throw new p();
            }
            throw new p();
        }
        throw new p();
    }

    @Override // ha.wd
    public void t() {
    }
}

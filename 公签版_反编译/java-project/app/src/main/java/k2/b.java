package k2;

import java.nio.ByteBuffer;
import r1.p;
import u1.f0;
import u1.q;
import ua.i8;

/* loaded from: classes.dex */
public final class b extends y1.a {

    /* renamed from: t, reason: collision with root package name */
    public final x1.g f10017t;

    /* renamed from: v, reason: collision with root package name */
    public final q f10018v;

    /* renamed from: w, reason: collision with root package name */
    public a f10019w;

    /* renamed from: x, reason: collision with root package name */
    public long f10020x;

    public b() {
        super(6);
        this.f10017t = new x1.g(1);
        this.f10018v = new q();
    }

    @Override // y1.a
    public final int B(p pVar) {
        return "application/x-camera-motion".equals(pVar.f13523o) ? ta.q.a(4, 0, 0, 0) : ta.q.a(0, 0, 0, 0);
    }

    @Override // y1.a, y1.x0
    public final void d(int i10, Object obj) {
        if (i10 == 8) {
            this.f10019w = (a) obj;
        }
    }

    @Override // y1.a
    public final String j() {
        return "CameraMotionRenderer";
    }

    @Override // y1.a
    public final boolean l() {
        return k();
    }

    @Override // y1.a
    public final boolean m() {
        return true;
    }

    @Override // y1.a
    public final void n() {
        a aVar = this.f10019w;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // y1.a
    public final void p(long j10, boolean z, boolean z4) {
        this.f10020x = Long.MIN_VALUE;
        a aVar = this.f10019w;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // y1.a
    public final void x(long j10, long j11) {
        float[] fArr;
        while (!k() && this.f10020x < 100000 + j10) {
            x1.g gVar = this.f10017t;
            gVar.g();
            i8 i8Var = this.f18554c;
            i8Var.n();
            if (w(i8Var, gVar, 0) != -4 || gVar.c(4)) {
                return;
            }
            long j12 = gVar.f18089g;
            this.f10020x = j12;
            boolean z = j12 < this.l;
            if (this.f10019w != null && !z) {
                gVar.l();
                ByteBuffer byteBuffer = gVar.f18087e;
                String str = f0.f15206a;
                if (byteBuffer.remaining() != 16) {
                    fArr = null;
                } else {
                    byte[] bArrArray = byteBuffer.array();
                    int iLimit = byteBuffer.limit();
                    q qVar = this.f10018v;
                    qVar.M(iLimit, bArrArray);
                    qVar.O(byteBuffer.arrayOffset() + 4);
                    float[] fArr2 = new float[3];
                    for (int i10 = 0; i10 < 3; i10++) {
                        fArr2[i10] = Float.intBitsToFloat(qVar.q());
                    }
                    fArr = fArr2;
                }
                if (fArr != null) {
                    this.f10019w.a(this.f10020x - this.f18562k, fArr);
                }
            }
        }
    }
}

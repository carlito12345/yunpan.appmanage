package d2;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class j extends x1.g {

    /* renamed from: j, reason: collision with root package name */
    public long f4288j;

    /* renamed from: k, reason: collision with root package name */
    public int f4289k;
    public int l;

    public j() {
        super(2);
        this.l = 32;
    }

    @Override // x1.g
    public final void g() {
        super.g();
        this.f4289k = 0;
    }

    public final boolean m(x1.g gVar) {
        ByteBuffer byteBuffer;
        a9.o.k(!gVar.c(1073741824));
        a9.o.k(!gVar.c(268435456));
        a9.o.k(!gVar.c(4));
        if (n()) {
            if (this.f4289k >= this.l) {
                return false;
            }
            ByteBuffer byteBuffer2 = gVar.f18087e;
            if (byteBuffer2 != null && (byteBuffer = this.f18087e) != null) {
                if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                    return false;
                }
            }
        }
        int i10 = this.f4289k;
        this.f4289k = i10 + 1;
        if (i10 == 0) {
            this.f18089g = gVar.f18089g;
            if (gVar.c(1)) {
                this.f567b = 1;
            }
        }
        ByteBuffer byteBuffer3 = gVar.f18087e;
        if (byteBuffer3 != null) {
            k(byteBuffer3.remaining());
            this.f18087e.put(byteBuffer3);
        }
        this.f4288j = gVar.f18089g;
        return true;
    }

    public final boolean n() {
        return this.f4289k > 0;
    }
}

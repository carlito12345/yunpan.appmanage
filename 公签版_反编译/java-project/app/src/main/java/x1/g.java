package x1;

import java.nio.ByteBuffer;
import r1.p;
import r1.z;

/* loaded from: classes.dex */
public class g extends ab.a {

    /* renamed from: c, reason: collision with root package name */
    public p f18085c;

    /* renamed from: d, reason: collision with root package name */
    public final c f18086d;

    /* renamed from: e, reason: collision with root package name */
    public ByteBuffer f18087e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18088f;

    /* renamed from: g, reason: collision with root package name */
    public long f18089g;

    /* renamed from: h, reason: collision with root package name */
    public ByteBuffer f18090h;

    /* renamed from: i, reason: collision with root package name */
    public final int f18091i;

    static {
        z.a("media3.decoder");
    }

    public g(int i10) {
        super(5, false);
        this.f18086d = new c();
        this.f18091i = i10;
    }

    public void g() {
        this.f567b = 0;
        ByteBuffer byteBuffer = this.f18087e;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f18090h;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f18088f = false;
    }

    public final ByteBuffer i(int i10) {
        int i11 = this.f18091i;
        if (i11 == 1) {
            return ByteBuffer.allocate(i10);
        }
        if (i11 == 2) {
            return ByteBuffer.allocateDirect(i10);
        }
        ByteBuffer byteBuffer = this.f18087e;
        throw new f(byteBuffer == null ? 0 : byteBuffer.capacity(), i10);
    }

    public final void k(int i10) {
        ByteBuffer byteBuffer = this.f18087e;
        if (byteBuffer == null) {
            this.f18087e = i(i10);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i11 = i10 + iPosition;
        if (iCapacity >= i11) {
            this.f18087e = byteBuffer;
            return;
        }
        ByteBuffer byteBufferI = i(i11);
        byteBufferI.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferI.put(byteBuffer);
        }
        this.f18087e = byteBufferI;
    }

    public final void l() {
        ByteBuffer byteBuffer = this.f18087e;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f18090h;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }
}

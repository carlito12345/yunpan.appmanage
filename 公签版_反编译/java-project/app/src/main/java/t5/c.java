package t5;

import f5.i;
import h5.z;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;
import o5.a0;
import s5.g;

/* loaded from: classes.dex */
public final class c implements a {

    /* renamed from: b, reason: collision with root package name */
    public static final c f14780b = new c(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14781a;

    public /* synthetic */ c(int i10) {
        this.f14781a = i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004e  */
    @Override // t5.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final z c(z zVar, i iVar) {
        byte[] bArrArray;
        switch (this.f14781a) {
            case 0:
                return zVar;
            default:
                ByteBuffer byteBufferAsReadOnlyBuffer = ((g) ((s5.b) zVar.get()).f14417a.f8530b).f14436a.f4800d.asReadOnlyBuffer();
                AtomicReference atomicReference = a6.c.f422a;
                a6.b bVar = (byteBufferAsReadOnlyBuffer.isReadOnly() || !byteBufferAsReadOnlyBuffer.hasArray()) ? null : new a6.b(byteBufferAsReadOnlyBuffer.array(), byteBufferAsReadOnlyBuffer.arrayOffset(), byteBufferAsReadOnlyBuffer.limit());
                if (bVar == null || bVar.f420b != 0) {
                    ByteBuffer byteBufferAsReadOnlyBuffer2 = byteBufferAsReadOnlyBuffer.asReadOnlyBuffer();
                    byte[] bArr = new byte[byteBufferAsReadOnlyBuffer2.limit()];
                    byteBufferAsReadOnlyBuffer2.get(bArr);
                    bArrArray = bArr;
                } else {
                    if (bVar.f421c == bVar.f419a.length) {
                        bArrArray = byteBufferAsReadOnlyBuffer.array();
                    }
                }
                return new a0(bArrArray);
        }
    }
}

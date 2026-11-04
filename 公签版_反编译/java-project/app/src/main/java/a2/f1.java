package a2;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class f1 extends s1.m {

    /* renamed from: i, reason: collision with root package name */
    public int[] f161i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f162j;

    /* JADX WARN: Removed duplicated region for block: B:27:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x011b  */
    @Override // s1.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(ByteBuffer byteBuffer) {
        int[] iArr = this.f162j;
        iArr.getClass();
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferM = m(((iLimit - iPosition) / this.f13912b.f13908d) * this.f13913c.f13908d);
        while (iPosition < iLimit) {
            for (int i10 : iArr) {
                int iO = (u1.f0.o(this.f13912b.f13907c) * i10) + iPosition;
                int i11 = this.f13912b.f13907c;
                if (i11 == 2) {
                    byteBufferM.putShort(byteBuffer.getShort(iO));
                } else if (i11 == 3) {
                    byteBufferM.put(byteBuffer.get(iO));
                } else if (i11 == 4) {
                    byteBufferM.putFloat(byteBuffer.getFloat(iO));
                } else if (i11 == 21) {
                    ByteOrder byteOrderOrder = byteBuffer.order();
                    ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                    byte b10 = byteBuffer.get(byteOrderOrder == byteOrder ? iO : iO + 2);
                    byte b11 = byteBuffer.get(iO + 1);
                    if (byteBuffer.order() == byteOrder) {
                        iO += 2;
                    }
                    int i12 = ((((b10 << 24) & (-16777216)) | ((b11 << 16) & 16711680)) | ((byteBuffer.get(iO) << 8) & 65280)) >> 8;
                    a9.o.l((i12 & (-16777216)) == 0 || (i12 & (-8388608)) == -8388608, "Value out of range of 24-bit integer: %s", Integer.toHexString(i12));
                    a9.o.k(byteBufferM.remaining() >= 3);
                    byteBufferM.put((byte) (byteBufferM.order() == byteOrder ? (i12 & 16711680) >> 16 : i12 & 255)).put((byte) ((i12 & 65280) >> 8)).put((byte) (byteBufferM.order() == byteOrder ? i12 & 255 : (i12 & 16711680) >> 16));
                } else if (i11 == 22) {
                    byteBufferM.putInt(byteBuffer.getInt(iO));
                } else if (i11 != 268435456) {
                    if (i11 != 1342177280) {
                        if (i11 != 1610612736) {
                            if (i11 != 1879048192) {
                                throw new IllegalStateException("Unexpected encoding: " + this.f13912b.f13907c);
                            }
                            byteBufferM.putDouble(byteBuffer.getDouble(iO));
                        }
                    }
                }
            }
            iPosition += this.f13912b.f13908d;
        }
        byteBuffer.position(iLimit);
        byteBufferM.flip();
    }

    @Override // s1.m
    public final s1.i i(s1.i iVar) throws s1.k {
        int[] iArr = this.f161i;
        if (iArr == null) {
            return s1.i.f13904e;
        }
        int i10 = iVar.f13907c;
        if (!u1.f0.D(i10)) {
            throw new s1.k(iVar);
        }
        int length = iArr.length;
        int i11 = iVar.f13906b;
        boolean z = i11 != length;
        int i12 = 0;
        while (i12 < iArr.length) {
            int i13 = iArr[i12];
            if (i13 >= i11) {
                throw new s1.k("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", iVar);
            }
            z |= i13 != i12;
            i12++;
        }
        if (z) {
            return new s1.i(iVar.f13905a, iArr.length, i10);
        }
        return s1.i.f13904e;
    }

    @Override // s1.m
    public final void j() {
        this.f162j = this.f161i;
    }

    @Override // s1.m
    public final void l() {
        this.f162j = null;
        this.f161i = null;
    }
}

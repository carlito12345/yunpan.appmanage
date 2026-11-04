package a2;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class u1 extends s1.m {

    /* renamed from: i, reason: collision with root package name */
    public static final int f326i = Float.floatToIntBits(Float.NaN);

    public static void n(ByteBuffer byteBuffer, int i10) {
        double d10 = i10;
        Double.isNaN(d10);
        int iFloatToIntBits = Float.floatToIntBits((float) (d10 * 4.656612875245797E-10d));
        if (iFloatToIntBits == f326i) {
            iFloatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }

    @Override // s1.l
    public final void e(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferM;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        int i11 = this.f13912b.f13907c;
        if (i11 == 2) {
            byteBufferM = m(i10 * 2);
            while (iPosition < iLimit) {
                n(byteBufferM, ((byteBuffer.get(iPosition) & 255) << 16) | ((byteBuffer.get(iPosition + 1) & 255) << 24));
                iPosition += 2;
            }
        } else if (i11 == 1342177280) {
            byteBufferM = m((i10 / 3) * 4);
            while (iPosition < iLimit) {
                n(byteBufferM, ((byteBuffer.get(iPosition + 2) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition) & 255) << 24));
                iPosition += 3;
            }
        } else if (i11 == 1610612736) {
            byteBufferM = m(i10);
            while (iPosition < iLimit) {
                n(byteBufferM, (byteBuffer.get(iPosition + 3) & 255) | ((byteBuffer.get(iPosition + 2) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition) & 255) << 24));
                iPosition += 4;
            }
        } else if (i11 == 1879048192) {
            byteBufferM = m(i10 / 2);
            while (iPosition < iLimit) {
                byteBufferM.putFloat((float) byteBuffer.getDouble(iPosition));
                iPosition += 8;
            }
        } else if (i11 == 21) {
            byteBufferM = m((i10 / 3) * 4);
            while (iPosition < iLimit) {
                n(byteBufferM, ((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24));
                iPosition += 3;
            }
        } else {
            if (i11 != 22) {
                throw new IllegalStateException();
            }
            byteBufferM = m(i10);
            while (iPosition < iLimit) {
                n(byteBufferM, (byteBuffer.get(iPosition) & 255) | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24));
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferM.flip();
    }

    @Override // s1.m
    public final s1.i i(s1.i iVar) throws s1.k {
        int i10 = iVar.f13907c;
        if (u1.f0.C(i10) || i10 == 2) {
            return i10 != 4 ? new s1.i(iVar.f13905a, iVar.f13906b, 4) : s1.i.f13904e;
        }
        throw new s1.k(iVar);
    }
}

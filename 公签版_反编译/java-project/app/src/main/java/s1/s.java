package s1;

import java.nio.ByteBuffer;
import u1.f0;

/* loaded from: classes.dex */
public final class s extends m {
    /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
    @Override // s1.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        int i11 = this.f13912b.f13907c;
        if (i11 == 3) {
            i10 *= 2;
        } else if (i11 == 4) {
            i10 /= 2;
        } else {
            if (i11 != 21) {
                if (i11 != 22) {
                    if (i11 != 268435456) {
                        if (i11 != 1342177280) {
                            if (i11 != 1610612736) {
                                if (i11 != 1879048192) {
                                    throw new IllegalStateException();
                                }
                                i10 /= 4;
                            }
                        }
                    }
                }
            }
            i10 /= 3;
            i10 *= 2;
        }
        ByteBuffer byteBufferM = m(i10);
        int i12 = this.f13912b.f13907c;
        if (i12 == 3) {
            while (iPosition < iLimit) {
                byteBufferM.put((byte) 0);
                byteBufferM.put((byte) ((byteBuffer.get(iPosition) & 255) - 128));
                iPosition++;
            }
        } else if (i12 == 4) {
            while (iPosition < iLimit) {
                short sF = (short) (f0.f(byteBuffer.getFloat(iPosition), -1.0f, 1.0f) * 32767.0f);
                byteBufferM.put((byte) (sF & 255));
                byteBufferM.put((byte) ((sF >> 8) & 255));
                iPosition += 4;
            }
        } else if (i12 == 21) {
            while (iPosition < iLimit) {
                byteBufferM.put(byteBuffer.get(iPosition + 1));
                byteBufferM.put(byteBuffer.get(iPosition + 2));
                iPosition += 3;
            }
        } else if (i12 == 22) {
            while (iPosition < iLimit) {
                byteBufferM.put(byteBuffer.get(iPosition + 2));
                byteBufferM.put(byteBuffer.get(iPosition + 3));
                iPosition += 4;
            }
        } else if (i12 == 268435456) {
            while (iPosition < iLimit) {
                byteBufferM.put(byteBuffer.get(iPosition + 1));
                byteBufferM.put(byteBuffer.get(iPosition));
                iPosition += 2;
            }
        } else if (i12 == 1342177280) {
            while (iPosition < iLimit) {
                byteBufferM.put(byteBuffer.get(iPosition + 1));
                byteBufferM.put(byteBuffer.get(iPosition));
                iPosition += 3;
            }
        } else if (i12 == 1610612736) {
            while (iPosition < iLimit) {
                byteBufferM.put(byteBuffer.get(iPosition + 1));
                byteBufferM.put(byteBuffer.get(iPosition));
                iPosition += 4;
            }
        } else {
            if (i12 != 1879048192) {
                throw new IllegalStateException();
            }
            while (iPosition < iLimit) {
                short sMax = (short) (Math.max(-1.0d, Math.min(byteBuffer.getDouble(iPosition), 1.0d)) * 32767.0d);
                byteBufferM.put((byte) (sMax & 255));
                byteBufferM.put((byte) ((sMax >> 8) & 255));
                iPosition += 8;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferM.flip();
    }

    @Override // s1.m
    public final i i(i iVar) throws k {
        int i10 = iVar.f13907c;
        if (i10 == 3 || i10 == 2 || i10 == 268435456 || i10 == 21 || i10 == 1342177280 || i10 == 22 || i10 == 1610612736 || i10 == 4 || i10 == 1879048192) {
            return i10 != 2 ? new i(iVar.f13905a, iVar.f13906b, 2) : i.f13904e;
        }
        throw new k(iVar);
    }
}

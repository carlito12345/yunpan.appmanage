package hf;

import f5.g;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import o5.k;
import o5.l;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
public final class b implements l, g, com.bumptech.glide.load.data.g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8201a;

    /* renamed from: b, reason: collision with root package name */
    public final ByteBuffer f8202b;

    public b(ByteBuffer byteBuffer, int i10) {
        this.f8201a = i10;
        switch (i10) {
            case 1:
                this.f8202b = byteBuffer;
                byteBuffer.order(ByteOrder.BIG_ENDIAN);
                return;
            case 5:
                this.f8202b = byteBuffer;
                return;
            default:
                if (byteBuffer == null) {
                    throw new NullPointerException("buf == null");
                }
                this.f8202b = byteBuffer;
                return;
        }
    }

    private final void i(byte[] bArr, Object obj, MessageDigest messageDigest) {
        Long l = (Long) obj;
        messageDigest.update(bArr);
        synchronized (this.f8202b) {
            this.f8202b.position(0);
            messageDigest.update(this.f8202b.putLong(l.longValue()).array());
        }
    }

    @Override // f5.g
    public void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        switch (this.f8201a) {
            case 3:
                i(bArr, obj, messageDigest);
                return;
            default:
                Integer num = (Integer) obj;
                if (num == null) {
                    return;
                }
                messageDigest.update(bArr);
                synchronized (this.f8202b) {
                    this.f8202b.position(0);
                    messageDigest.update(this.f8202b.putInt(num.intValue()).array());
                }
                return;
        }
    }

    @Override // o5.l
    public int c() {
        return (h() << 8) | h();
    }

    @Override // com.bumptech.glide.load.data.g
    public Object d() {
        ByteBuffer byteBuffer = this.f8202b;
        byteBuffer.position(0);
        return byteBuffer;
    }

    public short e(int i10) {
        ByteBuffer byteBuffer = this.f8202b;
        if (byteBuffer.remaining() - i10 >= 2) {
            return byteBuffer.getShort(i10);
        }
        return (short) -1;
    }

    public a9.a f() throws a {
        int iPosition;
        int i10;
        int iPosition2;
        int i11;
        ByteBuffer byteBuffer = this.f8202b;
        int iPosition3 = byteBuffer.position();
        if (!byteBuffer.hasRemaining()) {
            return null;
        }
        byte b10 = byteBuffer.get();
        int i12 = b10 & 31;
        if (i12 == 31) {
            i12 = 0;
            while (byteBuffer.hasRemaining()) {
                byte b11 = byteBuffer.get();
                if (i12 > 16777215) {
                    throw new a("Tag number too large");
                }
                i12 = (i12 << 7) | (b11 & Byte.MAX_VALUE);
                if ((b11 & 128) == 0) {
                }
            }
            throw new a("Truncated tag number");
        }
        boolean z = (b10 & HebrewProber.SPACE) != 0;
        if (!byteBuffer.hasRemaining()) {
            throw new a("Missing length");
        }
        byte b12 = byteBuffer.get();
        int i13 = b12 & 255;
        if ((b12 & 128) == 0) {
            i11 = b12 & Byte.MAX_VALUE;
            iPosition2 = byteBuffer.position() - iPosition3;
            g(i11);
        } else {
            if (i13 == 128) {
                iPosition = byteBuffer.position() - iPosition3;
                if (z) {
                    int iPosition4 = byteBuffer.position();
                    while (byteBuffer.hasRemaining()) {
                        if (byteBuffer.remaining() <= 1 || byteBuffer.getShort(byteBuffer.position()) != 0) {
                            f();
                        } else {
                            int iPosition5 = byteBuffer.position() - iPosition4;
                            byteBuffer.position(byteBuffer.position() + 2);
                            i10 = iPosition5;
                        }
                    }
                    throw new a("Truncated indefinite-length contents: " + (byteBuffer.position() - iPosition4) + " bytes read");
                }
                int i14 = 0;
                boolean z4 = false;
                while (byteBuffer.hasRemaining()) {
                    byte b13 = byteBuffer.get();
                    int i15 = i14 + 1;
                    if (i15 < 0) {
                        throw new a("Indefinite-length contents too long");
                    }
                    if (b13 != 0) {
                        z4 = false;
                    } else if (z4) {
                        i10 = i14 - 1;
                    } else {
                        z4 = true;
                    }
                    i14 = i15;
                }
                throw new a(g.b.i("Truncated indefinite-length contents: ", i14, " bytes read"));
            }
            int i16 = b12 & Byte.MAX_VALUE;
            if (i16 > 4) {
                throw new a(g.b.i("Length too large: ", i16, " bytes"));
            }
            i10 = 0;
            for (int i17 = 0; i17 < i16; i17++) {
                if (!byteBuffer.hasRemaining()) {
                    throw new a("Truncated length");
                }
                byte b14 = byteBuffer.get();
                if (i10 > 8388607) {
                    throw new a("Length too large");
                }
                i10 = (i10 << 8) | (b14 & 255);
            }
            iPosition = byteBuffer.position() - iPosition3;
            g(i10);
            int i18 = i10;
            iPosition2 = iPosition;
            i11 = i18;
        }
        int iPosition6 = byteBuffer.position();
        byteBuffer.position(iPosition3);
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(iPosition6);
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        byteBuffer.position(byteBuffer.limit());
        byteBuffer.limit(iLimit);
        byteBufferSlice.position(iPosition2);
        byteBufferSlice.limit(iPosition2 + i11);
        ByteBuffer byteBufferSlice2 = byteBufferSlice.slice();
        byteBufferSlice.clear();
        return new a9.a(byteBufferSlice, byteBufferSlice2, (b10 & 255) >> 6, i12);
    }

    public void g(int i10) throws a {
        ByteBuffer byteBuffer = this.f8202b;
        if (byteBuffer.remaining() >= i10) {
            byteBuffer.position(byteBuffer.position() + i10);
        } else {
            StringBuilder sbN = g.b.n("Truncated contents. Need: ", i10, " bytes, available: ");
            sbN.append(byteBuffer.remaining());
            throw new a(sbN.toString());
        }
    }

    @Override // o5.l
    public short h() throws k {
        ByteBuffer byteBuffer = this.f8202b;
        if (byteBuffer.remaining() >= 1) {
            return (short) (byteBuffer.get() & 255);
        }
        throw new k();
    }

    @Override // o5.l
    public int n(int i10, byte[] bArr) {
        ByteBuffer byteBuffer = this.f8202b;
        int iMin = Math.min(i10, byteBuffer.remaining());
        if (iMin == 0) {
            return -1;
        }
        byteBuffer.get(bArr, 0, iMin);
        return iMin;
    }

    @Override // o5.l
    public long skip(long j10) {
        ByteBuffer byteBuffer = this.f8202b;
        int iMin = (int) Math.min(byteBuffer.remaining(), j10);
        byteBuffer.position(byteBuffer.position() + iMin);
        return iMin;
    }

    public b(int i10) {
        this.f8201a = i10;
        switch (i10) {
            case 4:
                this.f8202b = ByteBuffer.allocate(4);
                break;
            default:
                this.f8202b = ByteBuffer.allocate(8);
                break;
        }
    }

    public b(byte[] bArr, int i10) {
        this.f8201a = 2;
        this.f8202b = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i10);
    }

    @Override // com.bumptech.glide.load.data.g
    public void b() {
    }
}

package qf;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import l2.l0;
import lf.d;
import lf.e;
import lf.f;
import org.bouncycastle.crypto.hpke.HPKE;
import s1.g;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f13189a = Charset.forName(HTTP.UTF_8);

    public static int a(ByteBuffer byteBuffer) {
        short s8 = (short) (byteBuffer.get() & 255);
        return (s8 & 128) != 0 ? ((s8 & 127) << 8) + ((short) (byteBuffer.get() & 255)) : s8;
    }

    public static ab.a b(ByteBuffer byteBuffer, l0 l0Var) {
        g.R(byteBuffer);
        byteBuffer.get();
        short s8 = (short) (byteBuffer.get() & 255);
        if (s8 == 0) {
            return lf.b.f10717d;
        }
        if (s8 == 1) {
            return new e(byteBuffer.getInt());
        }
        if (s8 == 3) {
            int i10 = byteBuffer.getInt();
            if (i10 >= 0) {
                return new f(i10, l0Var);
            }
            return null;
        }
        if (s8 == 5) {
            return new lf.b(byteBuffer.getInt(), 3);
        }
        if (s8 == 6) {
            return new lf.b(byteBuffer.getInt(), 4);
        }
        switch (s8) {
            case 16:
                return new lf.b(byteBuffer.getInt(), 2);
            case 17:
                return new lf.b(byteBuffer.getInt(), 5);
            case 18:
                return new lf.b(byteBuffer.getInt(), 1);
            default:
                switch (s8) {
                    case 28:
                    case 30:
                        return new lf.c(byteBuffer.getInt(), 8);
                    case 29:
                    case 31:
                        return new lf.c(byteBuffer.getInt(), 6);
                    default:
                        return new d(byteBuffer.getInt(), s8);
                }
        }
    }

    public static l0 c(ByteBuffer byteBuffer, lf.g gVar) {
        String string;
        long jPosition = byteBuffer.position();
        int i10 = gVar.f10722d;
        int[] iArr = new int[i10];
        if (i10 > 0) {
            for (int i11 = 0; i11 < gVar.f10722d; i11++) {
                iArr[i11] = (int) (byteBuffer.getInt() & 4294967295L);
            }
        }
        boolean z = (gVar.f10723e & 256) != 0;
        long j10 = (gVar.f10724f + jPosition) - gVar.f10715b;
        g.P(byteBuffer, j10);
        ai.a[] aVarArr = new ai.a[i10];
        int i12 = 0;
        while (i12 < i10) {
            aVarArr[i12] = new ai.a(i12, (iArr[i12] & 4294967295L) + j10);
            i12++;
            iArr = iArr;
        }
        l0 l0Var = new l0(gVar.f10722d);
        String str = null;
        long j11 = -1;
        for (int i13 = 0; i13 < i10; i13++) {
            ai.a aVar = aVarArr[i13];
            long j12 = aVar.f718b;
            int i14 = aVar.f717a;
            if (j12 == j11) {
                l0Var.f10503a[i14] = str;
            } else {
                g.P(byteBuffer, j12);
                if (z) {
                    a(byteBuffer);
                    byte[] bArr = new byte[a(byteBuffer)];
                    byteBuffer.get(bArr);
                    string = new String(bArr, f13189a);
                    byteBuffer.get();
                } else {
                    short s8 = byteBuffer.getShort();
                    int i15 = s8 & HPKE.aead_EXPORT_ONLY;
                    if ((32768 & s8) != 0) {
                        i15 = ((s8 & Short.MAX_VALUE) << 16) + (65535 & byteBuffer.getShort());
                    }
                    StringBuilder sb2 = new StringBuilder(i15);
                    for (int i16 = 0; i16 < i15; i16++) {
                        sb2.append(byteBuffer.getChar());
                    }
                    string = sb2.toString();
                    byteBuffer.getShort();
                }
                l0Var.f10503a[i14] = string;
                str = string;
                j11 = aVar.f718b;
            }
        }
        g.P(byteBuffer, jPosition + gVar.a());
        return l0Var;
    }
}

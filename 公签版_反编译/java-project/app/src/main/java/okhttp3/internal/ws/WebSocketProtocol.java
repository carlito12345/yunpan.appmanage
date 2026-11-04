package okhttp3.internal.ws;

import fg.e0;
import fg.g;
import fg.i;
import fg.l;
import g.b;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import ue.d;

/* loaded from: classes.dex */
public final class WebSocketProtocol {
    static final String ACCEPT_MAGIC = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
    static final int B0_FLAG_FIN = 128;
    static final int B0_FLAG_RSV1 = 64;
    static final int B0_FLAG_RSV2 = 32;
    static final int B0_FLAG_RSV3 = 16;
    static final int B0_MASK_OPCODE = 15;
    static final int B1_FLAG_MASK = 128;
    static final int B1_MASK_LENGTH = 127;
    static final int CLOSE_CLIENT_GOING_AWAY = 1001;
    static final long CLOSE_MESSAGE_MAX = 123;
    static final int CLOSE_NO_STATUS_CODE = 1005;
    static final int OPCODE_BINARY = 2;
    static final int OPCODE_CONTINUATION = 0;
    static final int OPCODE_CONTROL_CLOSE = 8;
    static final int OPCODE_CONTROL_PING = 9;
    static final int OPCODE_CONTROL_PONG = 10;
    static final int OPCODE_FLAG_CONTROL = 8;
    static final int OPCODE_TEXT = 1;
    static final long PAYLOAD_BYTE_MAX = 125;
    static final int PAYLOAD_LONG = 127;
    static final int PAYLOAD_SHORT = 126;
    static final long PAYLOAD_SHORT_MAX = 65535;

    private WebSocketProtocol() {
        throw new AssertionError("No instances.");
    }

    public static String acceptHeader(String str) {
        String strJ = b.j(str, ACCEPT_MAGIC);
        l lVar = l.f5854d;
        return e0.e(strJ).f(McElieceCCA2KeyGenParameterSpec.SHA1).a();
    }

    public static String closeCodeExceptionMessage(int i10) {
        if (i10 < 1000 || i10 >= 5000) {
            return da.b.a(i10, "Code must be in range [1000,5000): ");
        }
        if ((i10 < 1004 || i10 > 1006) && (i10 < 1012 || i10 > 2999)) {
            return null;
        }
        return b.i("Code ", i10, " is reserved and may not be used.");
    }

    public static void toggleMask(g gVar, byte[] bArr) {
        long j10;
        int length = bArr.length;
        int i10 = 0;
        do {
            byte[] bArr2 = gVar.f5847e;
            int i11 = gVar.f5848f;
            int i12 = gVar.f5849g;
            while (i11 < i12) {
                int i13 = i10 % length;
                bArr2[i11] = (byte) (bArr2[i11] ^ bArr[i13]);
                i11++;
                i10 = i13 + 1;
            }
            long j11 = gVar.f5846d;
            i iVar = gVar.f5843a;
            d.b(iVar);
            if (j11 == iVar.f5853b) {
                throw new IllegalStateException("no more bytes");
            }
            j10 = gVar.f5846d;
        } while (gVar.r(j10 == -1 ? 0L : j10 + (gVar.f5849g - gVar.f5848f)) != -1);
    }

    public static void validateCloseCode(int i10) {
        String strCloseCodeExceptionMessage = closeCodeExceptionMessage(i10);
        if (strCloseCodeExceptionMessage != null) {
            throw new IllegalArgumentException(strCloseCodeExceptionMessage);
        }
    }
}

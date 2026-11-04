package okhttp3.internal.http2;

import fg.e0;
import fg.l;
import g.b;
import java.io.IOException;
import okhttp3.internal.Util;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
public final class Http2 {
    static final String[] BINARY;
    static final l CONNECTION_PREFACE;
    static final String[] FLAGS;
    static final byte FLAG_ACK = 1;
    static final byte FLAG_COMPRESSED = 32;
    static final byte FLAG_END_HEADERS = 4;
    static final byte FLAG_END_PUSH_PROMISE = 4;
    static final byte FLAG_END_STREAM = 1;
    static final byte FLAG_NONE = 0;
    static final byte FLAG_PADDED = 8;
    static final byte FLAG_PRIORITY = 32;
    private static final String[] FRAME_NAMES;
    static final int INITIAL_MAX_FRAME_SIZE = 16384;
    static final byte TYPE_CONTINUATION = 9;
    static final byte TYPE_DATA = 0;
    static final byte TYPE_GOAWAY = 7;
    static final byte TYPE_HEADERS = 1;
    static final byte TYPE_PING = 6;
    static final byte TYPE_PRIORITY = 2;
    static final byte TYPE_PUSH_PROMISE = 5;
    static final byte TYPE_RST_STREAM = 3;
    static final byte TYPE_SETTINGS = 4;
    static final byte TYPE_WINDOW_UPDATE = 8;

    static {
        int i10 = 0;
        l lVar = l.f5854d;
        CONNECTION_PREFACE = e0.e("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
        FRAME_NAMES = new String[]{"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
        FLAGS = new String[64];
        BINARY = new String[256];
        int i11 = 0;
        while (true) {
            String[] strArr = BINARY;
            if (i11 >= strArr.length) {
                break;
            }
            strArr[i11] = Util.format("%8s", Integer.toBinaryString(i11)).replace(' ', '0');
            i11++;
        }
        String[] strArr2 = FLAGS;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i12 = iArr[0];
        strArr2[i12 | 8] = b.l(strArr2[i12], "|PADDED", new StringBuilder());
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i13 = 0; i13 < 3; i13++) {
            int i14 = iArr2[i13];
            int i15 = iArr[0];
            String[] strArr3 = FLAGS;
            int i16 = i15 | i14;
            strArr3[i16] = strArr3[i15] + '|' + strArr3[i14];
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strArr3[i15]);
            sb2.append('|');
            strArr3[i16 | 8] = b.l(strArr3[i14], "|PADDED", sb2);
        }
        while (true) {
            String[] strArr4 = FLAGS;
            if (i10 >= strArr4.length) {
                return;
            }
            if (strArr4[i10] == null) {
                strArr4[i10] = BINARY[i10];
            }
            i10++;
        }
    }

    private Http2() {
    }

    public static String formatFlags(byte b10, byte b11) {
        if (b11 == 0) {
            return "";
        }
        if (b10 != 2 && b10 != 3) {
            if (b10 == 4 || b10 == 6) {
                return b11 == 1 ? "ACK" : BINARY[b11];
            }
            if (b10 != 7 && b10 != 8) {
                String[] strArr = FLAGS;
                String str = b11 < strArr.length ? strArr[b11] : BINARY[b11];
                return (b10 != 5 || (b11 & 4) == 0) ? (b10 != 0 || (b11 & HebrewProber.SPACE) == 0) ? str : str.replace("PRIORITY", "COMPRESSED") : str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return BINARY[b11];
    }

    public static String frameLog(boolean z, int i10, int i11, byte b10, byte b11) {
        String[] strArr = FRAME_NAMES;
        return Util.format("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i10), Integer.valueOf(i11), b10 < strArr.length ? strArr[b10] : Util.format("0x%02x", Byte.valueOf(b10)), formatFlags(b10, b11));
    }

    public static IllegalArgumentException illegalArgument(String str, Object... objArr) {
        throw new IllegalArgumentException(Util.format(str, objArr));
    }

    public static IOException ioException(String str, Object... objArr) throws IOException {
        throw new IOException(Util.format(str, objArr));
    }
}

package io.github.muntashirakon.adb;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import da.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.StreamCorruptedException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes.dex */
final class AdbProtocol {
    public static final int ADB_AUTH_RSAPUBLICKEY = 3;
    public static final int ADB_AUTH_SIGNATURE = 2;
    public static final int ADB_AUTH_TOKEN = 1;
    public static final int ADB_HEADER_LENGTH = 24;
    public static final int A_AUTH = 1213486401;
    public static final int A_CLSE = 1163086915;
    public static final int A_CNXN = 1314410051;
    public static final int A_OKAY = 1497451343;
    public static final int A_OPEN = 1313165391;
    public static final int A_STLS = 1397511251;
    public static final int A_STLS_VERSION = 16777216;
    public static final int A_STLS_VERSION_MIN = 16777216;

    @Deprecated
    public static final int A_SYNC = 1129208147;
    public static final int A_VERSION = 16777216;
    public static final int A_VERSION_MIN = 16777216;
    public static final int A_VERSION_SKIP_CHECKSUM = 16777217;
    public static final int A_WRTE = 1163154007;
    public static final int MAX_PAYLOAD = 4096;
    public static final int MAX_PAYLOAD_V1 = 4096;
    public static final int MAX_PAYLOAD_V2 = 262144;
    public static final int MAX_PAYLOAD_V3 = 1048576;
    public static final byte[] SYSTEM_IDENTITY_STRING_HOST = StringCompat.getBytes("host::\u0000", HTTP.UTF_8);

    @Retention(RetentionPolicy.SOURCE)
    public @interface AuthType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Command {
    }

    public static final class Message {
        public final int arg0;
        public final int arg1;
        public final int command;
        public final int dataCheck;
        public final int dataLength;
        public final int magic;
        public byte[] payload;

        private Message(ByteBuffer byteBuffer) {
            this.command = byteBuffer.getInt();
            this.arg0 = byteBuffer.getInt();
            this.arg1 = byteBuffer.getInt();
            this.dataLength = byteBuffer.getInt();
            this.dataCheck = byteBuffer.getInt();
            this.magic = byteBuffer.getInt();
        }

        public static Message parse(InputStream inputStream, int i10, int i11) throws IOException {
            ByteBuffer byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
            int i12 = 0;
            int i13 = 0;
            do {
                int i14 = inputStream.read(byteBufferOrder.array(), i13, 24 - i13);
                if (i14 < 0) {
                    throw new IOException("Stream closed");
                }
                i13 += i14;
            } while (i13 < 24);
            Message message = new Message(byteBufferOrder);
            int i15 = message.command;
            if (i15 != (message.magic ^ (-1))) {
                throw new StreamCorruptedException(String.format("Invalid header: Invalid magic 0x%x.", Integer.valueOf(message.magic)));
            }
            if (i15 != 1129208147 && i15 != 1314410051 && i15 != 1313165391 && i15 != 1497451343 && i15 != 1163086915 && i15 != 1163154007 && i15 != 1213486401 && i15 != 1397511251) {
                throw new StreamCorruptedException(String.format("Invalid header: Invalid command 0x%x.", Integer.valueOf(message.command)));
            }
            int i16 = message.dataLength;
            if (i16 < 0 || i16 > i11) {
                throw new StreamCorruptedException(String.format("Invalid header: Invalid data length %d", Integer.valueOf(message.dataLength)));
            }
            if (i16 == 0) {
                return message;
            }
            message.payload = new byte[i16];
            do {
                int i17 = inputStream.read(message.payload, i12, message.dataLength - i12);
                if (i17 < 0) {
                    throw new IOException("Stream closed");
                }
                i12 += i17;
            } while (i12 < message.dataLength);
            if ((i10 <= 16777216 || (message.command == 1314410051 && message.arg0 <= 16777216)) && AdbProtocol.getPayloadChecksum(message.payload) != message.dataCheck) {
                throw new StreamCorruptedException("Invalid header: Checksum mismatched.");
            }
            return message;
        }

        public String toString() {
            String str;
            switch (this.command) {
                case AdbProtocol.A_SYNC /* 1129208147 */:
                    str = "SYNC";
                    break;
                case AdbProtocol.A_CLSE /* 1163086915 */:
                    str = "CLSE";
                    break;
                case AdbProtocol.A_WRTE /* 1163154007 */:
                    str = "WRTE";
                    break;
                case AdbProtocol.A_AUTH /* 1213486401 */:
                    str = "AUTH";
                    break;
                case AdbProtocol.A_OPEN /* 1313165391 */:
                    str = "OPEN";
                    break;
                case AdbProtocol.A_CNXN /* 1314410051 */:
                    str = "CNXN";
                    break;
                case AdbProtocol.A_STLS /* 1397511251 */:
                    str = "STLS";
                    break;
                case AdbProtocol.A_OKAY /* 1497451343 */:
                    str = "OKAY";
                    break;
                default:
                    str = "????";
                    break;
            }
            StringBuilder sbD = b.d("Message{command=", str, ", arg0=0x");
            sbD.append(Integer.toHexString(this.arg0));
            sbD.append(", arg1=0x");
            sbD.append(Integer.toHexString(this.arg1));
            sbD.append(", payloadLength=");
            sbD.append(this.dataLength);
            sbD.append(", checksum=");
            sbD.append(this.dataCheck);
            sbD.append(", magic=0x");
            sbD.append(Integer.toHexString(this.magic));
            sbD.append(", payload=");
            sbD.append(Arrays.toString(this.payload));
            sbD.append('}');
            return sbD.toString();
        }
    }

    public static byte[] generateAuth(int i10, byte[] bArr) {
        return generateMessage(A_AUTH, i10, 0, bArr);
    }

    public static byte[] generateClose(int i10, int i11) {
        return generateMessage(A_CLSE, i10, i11, null);
    }

    public static byte[] generateConnect(int i10) {
        return generateMessage(A_CNXN, getProtocolVersion(i10), getMaxData(i10), SYSTEM_IDENTITY_STRING_HOST);
    }

    public static byte[] generateMessage(int i10, int i11, int i12, byte[] bArr) {
        return generateMessage(i10, i11, i12, bArr, 0, bArr == null ? 0 : bArr.length);
    }

    public static byte[] generateOpen(int i10, String str) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(str.length() + 1);
        byteBufferAllocate.put(StringCompat.getBytes(str, HTTP.UTF_8));
        byteBufferAllocate.put((byte) 0);
        return generateMessage(A_OPEN, i10, 0, byteBufferAllocate.array());
    }

    public static byte[] generateReady(int i10, int i11) {
        return generateMessage(A_OKAY, i10, i11, null);
    }

    public static byte[] generateStls() {
        return generateMessage(A_STLS, 16777216, 0, null);
    }

    public static byte[] generateWrite(int i10, int i11, byte[] bArr, int i12, int i13) {
        return generateMessage(A_WRTE, i10, i11, bArr, i12, i13);
    }

    public static int getMaxData(int i10) {
        if (i10 >= 28) {
            return 1048576;
        }
        return i10 >= 24 ? 262144 : 4096;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getPayloadChecksum(byte[] bArr) {
        return getPayloadChecksum(bArr, 0, bArr.length);
    }

    public static int getProtocolVersion(int i10) {
        if (i10 >= 28) {
            return A_VERSION_SKIP_CHECKSUM;
        }
        return 16777216;
    }

    public static byte[] generateMessage(int i10, int i11, int i12, byte[] bArr, int i13, int i14) {
        ByteBuffer byteBufferOrder = bArr != null ? ByteBuffer.allocate(i14 + 24).order(ByteOrder.LITTLE_ENDIAN) : ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(i10);
        byteBufferOrder.putInt(i11);
        byteBufferOrder.putInt(i12);
        if (bArr != null) {
            byteBufferOrder.putInt(i14);
            byteBufferOrder.putInt(getPayloadChecksum(bArr, i13, i14));
        } else {
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
        }
        byteBufferOrder.putInt(i10 ^ (-1));
        if (bArr != null) {
            byteBufferOrder.put(bArr, i13, i14);
        }
        return byteBufferOrder.array();
    }

    private static int getPayloadChecksum(byte[] bArr, int i10, int i11) {
        int i12 = 0;
        for (int i13 = i10; i13 < i10 + i11; i13++) {
            i12 += bArr[i13] & 255;
        }
        return i12;
    }
}

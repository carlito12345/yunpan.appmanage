package a9;

import j$.nio.charset.StandardCharsets;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.util.Vector;

/* loaded from: classes.dex */
public abstract class h0 {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f503a;

    static {
        Charset charset = StandardCharsets.UTF_8;
        f503a = k("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=", charset);
        k("", charset);
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length != bArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    public static String b(int i10, int i11, byte[] bArr) {
        return new String(bArr, i10, i11, StandardCharsets.UTF_8);
    }

    public static String c(byte[] bArr) {
        return new String(bArr, 0, bArr.length, StandardCharsets.UTF_8);
    }

    public static void d(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr[i10] = 0;
        }
    }

    public static Socket e(int i10, int i11, String str) throws n, IOException {
        Socket socket = new Socket();
        try {
            socket.connect(new InetSocketAddress(str, i10), i11);
            return socket;
        } catch (Exception e7) {
            try {
                socket.close();
            } catch (Exception unused) {
            }
            throw new n(e7 instanceof SocketTimeoutException ? "timeout: socket is not established" : e7.toString(), e7);
        }
    }

    public static String f(String str, String[] strArr) {
        String[] strArrI = i(str);
        String string = null;
        for (int i10 = 0; i10 < strArrI.length; i10++) {
            int i11 = 0;
            while (true) {
                if (i11 < strArr.length) {
                    if (strArrI[i10].equals(strArr[i11])) {
                        break;
                    }
                    i11++;
                } else if (string == null) {
                    string = strArrI[i10];
                } else {
                    StringBuilder sbB = d0.f.b(string, ",");
                    sbB.append(strArrI[i10]);
                    string = sbB.toString();
                }
            }
        }
        return string;
    }

    public static byte[] g(int i10, int i11, byte[] bArr) throws n {
        try {
            byte[] bArr2 = new byte[i11];
            int i12 = 0;
            int i13 = i10;
            while (true) {
                if (i13 >= i10 + i11) {
                    break;
                }
                int i14 = i13 + 1;
                bArr2[i12] = (byte) ((m(bArr[i13]) << 2) | ((m(bArr[i14]) & 48) >>> 4));
                int i15 = i13 + 2;
                if (bArr[i15] == 61) {
                    i12++;
                    break;
                }
                bArr2[i12 + 1] = (byte) (((m(bArr[i14]) & 15) << 4) | ((m(bArr[i15]) & 60) >>> 2));
                int i16 = i13 + 3;
                if (bArr[i16] == 61) {
                    i12 += 2;
                    break;
                }
                bArr2[i12 + 2] = (byte) (((m(bArr[i15]) & 3) << 6) | (m(bArr[i16]) & 63));
                i12 += 3;
                i13 += 4;
            }
            byte[] bArr3 = new byte[i12];
            System.arraycopy(bArr2, 0, bArr3, 0, i12);
            return bArr3;
        } catch (ArrayIndexOutOfBoundsException e7) {
            throw new n("fromBase64: invalid base64 data", e7);
        }
    }

    public static byte[] h(String str) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        try {
            if (str.startsWith("~")) {
                str = str.replace("~", System.getProperty("user.home"));
            }
        } catch (SecurityException unused) {
        }
        File file = new File(str);
        FileInputStream fileInputStream = new FileInputStream(str);
        try {
            int length = (int) file.length();
            byte[] bArr = new byte[length];
            int i10 = 0;
            while (true) {
                int i11 = fileInputStream.read(bArr, i10, length - i10);
                if (i11 <= 0) {
                    fileInputStream.close();
                    return bArr;
                }
                i10 += i11;
            }
        } catch (Throwable th2) {
            try {
                fileInputStream.close();
            } catch (Throwable th3) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                } catch (Exception unused2) {
                }
            }
            throw th2;
        }
    }

    public static String[] i(String str) {
        if (str == null) {
            return null;
        }
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        Vector vector = new Vector();
        int i10 = 0;
        while (true) {
            int iIndexOf = str.indexOf(",", i10);
            if (iIndexOf < 0) {
                break;
            }
            vector.addElement(b(i10, iIndexOf - i10, bytes));
            i10 = iIndexOf + 1;
        }
        vector.addElement(b(i10, bytes.length - i10, bytes));
        int size = vector.size();
        String[] strArr = new String[size];
        for (int i11 = 0; i11 < size; i11++) {
            strArr[i11] = (String) vector.elementAt(i11);
        }
        return strArr;
    }

    public static byte[] j(String str) {
        return str.getBytes(StandardCharsets.UTF_8);
    }

    public static byte[] k(String str, Charset charset) {
        if (str == null) {
            return null;
        }
        return str.getBytes(charset);
    }

    public static String l(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        while (i10 < bArr.length) {
            String hexString = Integer.toHexString(bArr[i10] & 255);
            StringBuilder sb3 = new StringBuilder("0x");
            sb3.append(hexString.length() == 1 ? "0" : "");
            sb3.append(hexString);
            sb2.append(sb3.toString());
            i10++;
            if (i10 < bArr.length) {
                sb2.append(":");
            }
        }
        return sb2.toString();
    }

    public static byte m(byte b10) {
        if (b10 == 61) {
            return (byte) 0;
        }
        int i10 = 0;
        while (true) {
            byte[] bArr = f503a;
            if (i10 >= bArr.length) {
                return (byte) 0;
            }
            if (b10 == bArr[i10]) {
                return (byte) i10;
            }
            i10++;
        }
    }
}

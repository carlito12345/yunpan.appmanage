package eg;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.attribute.DosFileAttributeView;
import java.nio.file.attribute.PosixFilePermission;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashSet;

/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f4971a = {0, 0, -92, -127};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f4972b = {0, 0, -19, 65};

    public static void a(byte b10, int i10, HashSet hashSet, PosixFilePermission posixFilePermission) {
        if (g(b10, i10)) {
            hashSet.add(posixFilePermission);
        }
    }

    public static byte[] b(char[] cArr, boolean z) {
        int i10 = 0;
        if (!z) {
            byte[] bArr = new byte[cArr.length];
            while (i10 < cArr.length) {
                bArr[i10] = (byte) cArr[i10];
                i10++;
            }
            return bArr;
        }
        try {
            ByteBuffer byteBufferEncode = d.f4974b.encode(CharBuffer.wrap(cArr));
            byte[] bArr2 = new byte[byteBufferEncode.limit()];
            byteBufferEncode.get(bArr2);
            return bArr2;
        } catch (Exception unused) {
            byte[] bArr3 = new byte[cArr.length];
            while (i10 < cArr.length) {
                bArr3[i10] = (byte) cArr[i10];
                i10++;
            }
            return bArr3;
        }
    }

    public static long c(long j10) {
        int i10 = (int) ((j10 >> 5) & 63);
        int i11 = (int) ((j10 >> 11) & 31);
        int i12 = (int) ((j10 >> 16) & 31);
        int i13 = (int) (((j10 >> 21) & 15) - 1);
        int i14 = (int) (((j10 >> 25) & 127) + 1980);
        Calendar calendar = Calendar.getInstance();
        calendar.set(i14, i13, i12, i11, i10, (int) ((j10 << 1) & 62));
        calendar.set(14, 0);
        return calendar.getTime().getTime() + (j10 >> 32);
    }

    public static long d(long j10) {
        long j11;
        if (j10 < 0) {
            return 2162688L;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j10);
        int i10 = calendar.get(1);
        if (i10 < 1980) {
            j11 = 2162688;
        } else {
            j11 = (calendar.get(13) >> 1) | ((i10 - 1980) << 25) | ((calendar.get(2) + 1) << 21) | (calendar.get(5) << 16) | (calendar.get(11) << 11) | (calendar.get(12) << 5);
        }
        if (j11 != 2162688) {
            return j11 + ((j10 % 2000) << 32);
        }
        return 2162688L;
    }

    public static File[] e(File file) {
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(".");
        if (iLastIndexOf != -1) {
            name = name.substring(0, iLastIndexOf);
        }
        File[] fileArrListFiles = file.getParentFile().listFiles(new b(name));
        if (fileArrListFiles == null) {
            return new File[0];
        }
        Arrays.sort(fileArrListFiles);
        return fileArrListFiles;
    }

    public static int f(ag.b bVar) throws wf.a {
        int i10 = bVar.f651e;
        if (i10 != 3) {
            return i10;
        }
        ag.a aVar = bVar.f661q;
        if (aVar != null) {
            return aVar.f648g;
        }
        throw new wf.a("AesExtraDataRecord not present in local header for aes encrypted data");
    }

    public static boolean g(byte b10, int i10) {
        return ((1 << i10) & ((long) b10)) != 0;
    }

    public static boolean h(String str) {
        return str != null && str.trim().length() > 0;
    }

    public static boolean i(String str) {
        return str.endsWith("/") || str.endsWith("\\");
    }

    public static int j(InputStream inputStream, byte[] bArr) throws IOException {
        int i10 = inputStream.read(bArr);
        if (i10 == -1) {
            throw new IOException("Unexpected EOF reached when trying to read stream");
        }
        if (i10 != bArr.length) {
            if (i10 < 0) {
                throw new IOException("Invalid readLength");
            }
            int i11 = 0;
            if (i10 == 0) {
                i10 = 0;
            } else {
                int length = bArr.length - i10;
                for (int i12 = 1; i10 < bArr.length && i11 != -1 && i12 < 15; i12++) {
                    i11 = inputStream.read(bArr, i10, length);
                    if (i11 > 0) {
                        i10 += i11;
                        length -= i11;
                    }
                }
            }
            if (i10 != bArr.length) {
                throw new IOException("Cannot read fully into byte buffer");
            }
        }
        return i10;
    }

    public static int k(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        if (i10 < 0) {
            throw new IllegalArgumentException("Negative offset");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        int i12 = 0;
        if (i11 == 0) {
            return 0;
        }
        if (i10 + i11 > bArr.length) {
            throw new IllegalArgumentException("Length greater than buffer size");
        }
        while (i12 != i11) {
            int i13 = inputStream.read(bArr, i10 + i12, i11 - i12);
            if (i13 == -1) {
                if (i12 == 0) {
                    return -1;
                }
                return i12;
            }
            i12 += i13;
        }
        return i12;
    }

    public static byte l(byte b10, int i10) {
        return (byte) (b10 | (1 << i10));
    }

    public static void m(Path path, byte[] bArr) throws IOException {
        DosFileAttributeView dosFileAttributeViewL;
        if (bArr == null || bArr.length == 0) {
            return;
        }
        try {
            if (System.getProperty("os.name").toLowerCase().contains("win")) {
                if (bArr[0] == 0 || (dosFileAttributeViewL = com.hjq.permissions.permission.special.b.l(Files.getFileAttributeView(path, com.hjq.permissions.permission.special.b.h(), LinkOption.NOFOLLOW_LINKS))) == null) {
                    return;
                }
                dosFileAttributeViewL.setReadOnly(g(bArr[0], 0));
                dosFileAttributeViewL.setHidden(g(bArr[0], 1));
                dosFileAttributeViewL.setSystem(g(bArr[0], 2));
                dosFileAttributeViewL.setArchive(g(bArr[0], 5));
            } else {
                if (!System.getProperty("os.name").toLowerCase().contains("mac") && !System.getProperty("os.name").toLowerCase().contains("nux")) {
                    return;
                }
                if (bArr[2] == 0 && bArr[3] == 0) {
                    return;
                }
                HashSet hashSet = new HashSet();
                a(bArr[3], 0, hashSet, PosixFilePermission.OWNER_READ);
                a(bArr[2], 7, hashSet, PosixFilePermission.OWNER_WRITE);
                a(bArr[2], 6, hashSet, PosixFilePermission.OWNER_EXECUTE);
                a(bArr[2], 5, hashSet, PosixFilePermission.GROUP_READ);
                a(bArr[2], 4, hashSet, PosixFilePermission.GROUP_WRITE);
                a(bArr[2], 3, hashSet, PosixFilePermission.GROUP_EXECUTE);
                a(bArr[2], 2, hashSet, PosixFilePermission.OTHERS_READ);
                a(bArr[2], 1, hashSet, PosixFilePermission.OTHERS_WRITE);
                a(bArr[2], 0, hashSet, PosixFilePermission.OTHERS_EXECUTE);
                Files.setPosixFilePermissions(path, hashSet);
            }
        } catch (IOException unused) {
        }
    }
}

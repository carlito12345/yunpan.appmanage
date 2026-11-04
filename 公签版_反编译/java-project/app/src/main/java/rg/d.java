package rg;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.LinkOption;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f13776a = 0;

    static {
        LinkOption[] linkOptionArr = new LinkOption[0];
    }

    public static byte[] a(int i10, InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        long j10 = i10;
        byte[] bArr = (byte[]) sg.b.f14564b.get();
        Arrays.fill(bArr, (byte) 0);
        if (j10 != 0) {
            int length = bArr.length;
            int iMin = (j10 <= 0 || j10 >= ((long) length)) ? length : (int) j10;
            long j11 = 0;
            while (iMin > 0) {
                int i11 = inputStream.read(bArr, 0, iMin);
                if (-1 == i11) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i11);
                j11 += i11;
                if (j10 > 0) {
                    iMin = (int) Math.min(j10 - j11, length);
                }
            }
        }
        return byteArrayOutputStream.toByteArray();
    }
}

package g;

import j$.util.DesugarTimeZone;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class f extends ByteArrayOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public static final a5.a f5921a = new a5.a(4);

    public final void A(Date date, byte b10) throws IOException {
        String str;
        TimeZone timeZone = DesugarTimeZone.getTimeZone("GMT");
        if (b10 == 23) {
            str = "yyMMddHHmmss'Z'";
        } else {
            b10 = 24;
            str = "yyyyMMddHHmmss'Z'";
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(timeZone);
        byte[] bytes = simpleDateFormat.format(date).getBytes("ISO-8859-1");
        write(b10);
        r(bytes.length);
        write(bytes);
    }

    public final void J(byte b10, f fVar) throws IOException {
        write(b10);
        r(((ByteArrayOutputStream) fVar).count);
        write(((ByteArrayOutputStream) fVar).buf, 0, ((ByteArrayOutputStream) fVar).count);
    }

    public final void K(byte b10, byte[] bArr) throws IOException {
        write(b10);
        r(bArr.length);
        write(bArr, 0, bArr.length);
    }

    public final void L(byte b10, f fVar) throws IOException {
        write(b10);
        write(((ByteArrayOutputStream) fVar).buf, 1, ((ByteArrayOutputStream) fVar).count - 1);
    }

    public final void r(int i10) throws IOException {
        if (i10 < 128) {
            write((byte) i10);
            return;
        }
        if (i10 < 256) {
            write(-127);
            write((byte) i10);
            return;
        }
        if (i10 < 65536) {
            write(-126);
            write((byte) (i10 >> 8));
            write((byte) i10);
        } else {
            if (i10 < 16777216) {
                write(-125);
                write((byte) (i10 >> 16));
                write((byte) (i10 >> 8));
                write((byte) i10);
                return;
            }
            write(-124);
            write((byte) (i10 >> 24));
            write((byte) (i10 >> 16));
            write((byte) (i10 >> 8));
            write((byte) i10);
        }
    }
}

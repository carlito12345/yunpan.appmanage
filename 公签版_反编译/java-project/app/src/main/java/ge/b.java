package ge;

import androidx.fragment.app.b0;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vc.f;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f6135a = LoggerFactory.getLogger((Class<?>) b.class);

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f6136b = Charset.forName("UTF-16LE");

    /* renamed from: c, reason: collision with root package name */
    public static final Charset f6137c = Charset.forName("US-ASCII");

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f6138d;

    static {
        f6138d = System.getProperty("jcifs.maskSecretValue", "true") == "true";
    }

    public static int a(int i10, int i11, byte[] bArr) {
        int i12 = 0;
        while (bArr[i10 + i12] != 0) {
            i12++;
            if (i12 > i11) {
                throw new b0("zero termination not found", 10);
            }
        }
        return i12;
    }

    public static int b(int i10, int i11, byte[] bArr) {
        int i12 = 0;
        do {
            int i13 = i10 + i12;
            if (bArr[i13] == 0 && bArr[i13 + 1] == 0) {
                return i12;
            }
            i12 += 2;
        } while (i12 <= i11);
        Logger logger = f6135a;
        if (logger.isDebugEnabled()) {
            logger.warn("Failed to find string termination with max length " + i11);
            logger.debug(a.m(bArr, i10, i12));
        }
        throw new b0("zero termination not found", 10);
    }

    public static String c(byte[] bArr, int i10, int i11, f fVar) {
        try {
            return new String(bArr, i10, i11, ((wc.a) fVar).f17865w);
        } catch (UnsupportedEncodingException e7) {
            throw new b0(10, "Unsupported OEM encoding " + ((wc.a) fVar).f17865w, e7);
        }
    }

    public static byte[] d(String str, Charset charset) {
        return str == null ? new byte[0] : str.getBytes(charset);
    }

    public static byte[] e(String str, f fVar) {
        if (str == null) {
            return new byte[0];
        }
        try {
            return str.getBytes(((wc.a) fVar).f17865w);
        } catch (UnsupportedEncodingException e7) {
            throw new b0(10, "Unsupported OEM encoding " + ((wc.a) fVar).f17865w, e7);
        }
    }
}

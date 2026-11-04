package kg;

import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.source.SourceConst;
import j$.time.DateTimeException;
import j$.time.Instant;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.nio.file.attribute.FileTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.mozilla.universalchardet.prober.HebrewProber;

/* loaded from: classes.dex */
public final class c {
    public static final Pattern l = Pattern.compile("-?\\d{1,19}(?:\\.\\d{1,19})?");

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10294b;

    /* renamed from: c, reason: collision with root package name */
    public long f10295c;

    /* renamed from: d, reason: collision with root package name */
    public byte f10296d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f10297e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f10298f;

    /* renamed from: g, reason: collision with root package name */
    public long f10299g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f10300h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f10301i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f10302j;

    /* renamed from: a, reason: collision with root package name */
    public String f10293a = "";

    /* renamed from: k, reason: collision with root package name */
    public final HashMap f10303k = new HashMap();

    public c(boolean z) {
        String strA = zg.a.a("user.name", new ah.a(13));
        if (strA.length() > 31) {
            strA.substring(0, 31);
        }
        int i10 = rg.d.f13776a;
        this.f10294b = z;
    }

    public static void a(long j10) {
        if (j10 <= 0) {
            return;
        }
        MathContext mathContext = vg.b.f16995a;
        FileTime.from(j10, TimeUnit.SECONDS);
    }

    public static boolean c(int i10, byte[] bArr) {
        if ((bArr[i10] & 128) == 0) {
            for (int i11 = 0; i11 < 11; i11++) {
                byte b10 = bArr[i10 + i11];
                if (b10 < 48 || b10 > 55) {
                    return true;
                }
            }
            byte b11 = bArr[i10 + 11];
            if (b11 != 32 && b11 != 0) {
                return true;
            }
        }
        return false;
    }

    public static Instant e(String str) throws IOException {
        if (!l.matcher(str).matches()) {
            throw new IOException(g.b.A("Corrupted PAX header. Time field value is invalid '", str, "'"));
        }
        BigDecimal bigDecimal = new BigDecimal(str);
        try {
            return Instant.ofEpochSecond(bigDecimal.longValue(), bigDecimal.remainder(BigDecimal.ONE).movePointRight(9).longValue());
        } catch (DateTimeException | ArithmeticException e7) {
            throw new IOException(g.b.A("Corrupted PAX header. Time field value is invalid '", str, "'"), e7);
        }
    }

    public boolean b() {
        byte b10 = this.f10296d;
        if (b10 == 53) {
            return true;
        }
        return (b10 == 120 || b10 == 88 || b10 == 103 || !this.f10293a.endsWith("/")) ? false : true;
    }

    public final boolean d() {
        return this.f10296d == 83 || this.f10300h || this.f10302j;
    }

    public final boolean equals(Object obj) {
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return this.f10293a.equals(((c) obj).f10293a);
    }

    public final void f(HashMap map, byte[] bArr, lg.a aVar) {
        String str;
        byte b10;
        this.f10293a = g.b(bArr, 0, 100, aVar);
        g.d(100, 8, bArr);
        g.d(108, 8, bArr);
        g.d(116, 8, bArr);
        long jD = g.d(124, 12, bArr);
        this.f10295c = jD;
        long j10 = 0;
        if (jD < 0) {
            throw new IOException("broken archive, entry with negative size");
        }
        long jD2 = g.d(136, 12, bArr);
        MathContext mathContext = vg.b.f16995a;
        FileTime.from(jD2, TimeUnit.SECONDS);
        int i10 = 148;
        long jC = g.c(148, 8, bArr);
        long j11 = 0;
        int i11 = 0;
        while (true) {
            int length = bArr.length;
            byte b11 = HebrewProber.SPACE;
            if (i11 >= length) {
                break;
            }
            byte b12 = bArr[i11];
            if (i10 > i11 || i11 >= 156) {
                b11 = b12;
            }
            j10 += b11 & 255;
            j11 += b11;
            i11++;
            i10 = 148;
        }
        if (jC != j10) {
            int i12 = (jC > j11 ? 1 : (jC == j11 ? 0 : -1));
        }
        this.f10296d = bArr[156];
        g.b(bArr, CarSettingID.Recv.EMS_PEDAL_LEVEL, 100, aVar);
        g.a(257, 6, bArr);
        g.a(SourceConst.IOCTL_FUNCTION_CARPLAY_NBAND, 2, bArr);
        g.b(bArr, SourceConst.IOCTL_MEDIA_VOLUME, 32, aVar);
        g.b(bArr, SourceConst.IOCTL_TEST_CHECKDEVICE_ENABLE, 32, aVar);
        byte b13 = this.f10296d;
        if (b13 == 51 || b13 == 52) {
            g.d(329, 8, bArr);
            g.d(337, 8, bArr);
        }
        char c7 = rg.b.c("ustar ", bArr, 257, 6) ? (char) 2 : rg.b.c("ustar\u0000", bArr, 257, 6) ? (!rg.b.c("tar\u0000", bArr, 508, 4) && ((str = (String) map.get("SCHILY.archtype")) == null ? ((b10 = bArr[475]) != 0 && (bArr[156] != 77 || ((bArr[464] & 128) == 0 && b10 != 32))) || c(476, bArr) || c(488, bArr) : !("xustar".equals(str) || "exustar".equals(str)))) ? (char) 3 : (char) 4 : (char) 0;
        if (c7 == 2) {
            a(g.d(345, 12, bArr));
            a(g.d(357, 12, bArr));
            this.f10297e = new ArrayList(g.g(386, 4, bArr));
            this.f10298f = bArr[482] == 1;
            this.f10299g = g.c(483, 12, bArr);
            return;
        }
        if (c7 == 4) {
            String strB = g.b(bArr, 345, 131, aVar);
            if (!strB.isEmpty()) {
                StringBuilder sbB = d0.f.b(strB, "/");
                sbB.append(this.f10293a);
                this.f10293a = sbB.toString();
            }
            a(g.d(476, 12, bArr));
            a(g.d(488, 12, bArr));
            return;
        }
        String strB2 = g.b(bArr, 345, 155, aVar);
        if (b() && !this.f10293a.endsWith("/")) {
            this.f10293a = g.b.l(this.f10293a, "/", new StringBuilder());
        }
        if (strB2.isEmpty()) {
            return;
        }
        StringBuilder sbB2 = d0.f.b(strB2, "/");
        sbB2.append(this.f10293a);
        this.f10293a = sbB2.toString();
    }

    public final void g(String str) {
        String strA;
        int iIndexOf;
        boolean z = this.f10294b;
        if (!z && (strA = zg.a.a("os.name", ah.b.f716a)) != null) {
            int i10 = zg.b.f19574a;
            String lowerCase = strA.toLowerCase(Locale.ROOT);
            if (lowerCase.startsWith("windows")) {
                if (str.length() > 2) {
                    char cCharAt = str.charAt(0);
                    if (str.charAt(1) == ':' && ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z'))) {
                        str = str.substring(2);
                    }
                }
            } else if (lowerCase.contains("netware") && (iIndexOf = str.indexOf(58)) != -1) {
                str = str.substring(iIndexOf + 1);
            }
        }
        String strReplace = str.replace(File.separatorChar, '/');
        while (!z && strReplace.startsWith("/")) {
            strReplace = strReplace.substring(1);
        }
        this.f10293a = strReplace;
    }

    public final int hashCode() {
        return this.f10293a.hashCode();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c.class.getSimpleName());
        sb2.append("[");
        return g.b.l(this.f10293a, "]", sb2);
    }
}

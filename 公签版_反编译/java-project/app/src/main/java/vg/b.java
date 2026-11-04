package vg;

import j$.time.Instant;
import j$.time.TimeConversions;
import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.nio.file.attribute.FileTime;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final MathContext f16995a;

    /* renamed from: b, reason: collision with root package name */
    public static final BigDecimal f16996b;

    /* renamed from: c, reason: collision with root package name */
    public static final BigDecimal f16997c;

    /* renamed from: d, reason: collision with root package name */
    public static final BigDecimal f16998d;

    static {
        BigDecimal.valueOf(Long.MIN_VALUE);
        BigDecimal.valueOf(Long.MAX_VALUE);
        f16995a = new MathContext(0, RoundingMode.FLOOR);
        FileTime.from(TimeConversions.convert(Instant.EPOCH));
        f16996b = BigDecimal.valueOf(-116444736000000000L);
        f16997c = BigDecimal.valueOf(TimeUnit.SECONDS.toNanos(1L) / 100);
        BigDecimal.valueOf(TimeUnit.MILLISECONDS.toNanos(1L) / 100);
        f16998d = BigDecimal.valueOf(100L);
    }

    public static FileTime a(long j10) {
        BigDecimal[] bigDecimalArrDivideAndRemainder = BigDecimal.valueOf(j10).add(f16996b).divideAndRemainder(f16997c, f16995a);
        return FileTime.from(TimeConversions.convert(Instant.ofEpochSecond(bigDecimalArrDivideAndRemainder[0].longValueExact(), bigDecimalArrDivideAndRemainder[1].multiply(f16998d).longValueExact())));
    }

    public static long b(FileTime fileTime) {
        return BigDecimal.valueOf(TimeConversions.convert(fileTime.toInstant()).getEpochSecond()).multiply(f16997c).add(BigDecimal.valueOf(r3.getNano() / 100)).subtract(f16996b).longValueExact();
    }
}

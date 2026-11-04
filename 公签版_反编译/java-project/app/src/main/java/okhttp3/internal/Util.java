package okhttp3.internal;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import d0.f;
import fg.i;
import fg.k;
import fg.l;
import fg.z;
import g.b;
import j$.util.DesugarTimeZone;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.IDN;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import okhttp3.internal.http2.Header;

/* loaded from: classes.dex */
public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final RequestBody EMPTY_REQUEST;
    public static final ResponseBody EMPTY_RESPONSE;
    private static final Pattern VERIFY_AS_IP_ADDRESS;
    private static final Method addSuppressedExceptionMethod;
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final l UTF_8_BOM = l.d("efbbbf");
    private static final l UTF_16_BE_BOM = l.d("feff");
    private static final l UTF_16_LE_BOM = l.d("fffe");
    private static final l UTF_32_BE_BOM = l.d("0000ffff");
    private static final l UTF_32_LE_BOM = l.d("ffff0000");
    public static final Charset UTF_8 = Charset.forName(HTTP.UTF_8);
    public static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");
    private static final Charset UTF_16_BE = Charset.forName("UTF-16BE");
    private static final Charset UTF_16_LE = Charset.forName("UTF-16LE");
    private static final Charset UTF_32_BE = Charset.forName("UTF-32BE");
    private static final Charset UTF_32_LE = Charset.forName("UTF-32LE");
    public static final TimeZone UTC = DesugarTimeZone.getTimeZone("GMT");
    public static final Comparator<String> NATURAL_ORDER = new Comparator<String>() { // from class: okhttp3.internal.Util.1
        @Override // java.util.Comparator
        public int compare(String str, String str2) {
            return str.compareTo(str2);
        }
    };

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        Method declaredMethod = null;
        EMPTY_RESPONSE = ResponseBody.create((MediaType) null, bArr);
        EMPTY_REQUEST = RequestBody.create((MediaType) null, bArr);
        try {
            declaredMethod = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
        }
        addSuppressedExceptionMethod = declaredMethod;
        VERIFY_AS_IP_ADDRESS = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    private Util() {
    }

    public static void addSuppressedIfPossible(Throwable th2, Throwable th3) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method = addSuppressedExceptionMethod;
        if (method != null) {
            try {
                method.invoke(th2, th3);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }

    public static AssertionError assertionError(String str, Exception exc) {
        AssertionError assertionError = new AssertionError(str);
        try {
            assertionError.initCause(exc);
        } catch (IllegalStateException unused) {
        }
        return assertionError;
    }

    public static Charset bomAwareCharset(k kVar, Charset charset) {
        if (kVar.p(UTF_8_BOM)) {
            kVar.skip(r0.g());
            return UTF_8;
        }
        if (kVar.p(UTF_16_BE_BOM)) {
            kVar.skip(r0.g());
            return UTF_16_BE;
        }
        if (kVar.p(UTF_16_LE_BOM)) {
            kVar.skip(r0.g());
            return UTF_16_LE;
        }
        if (kVar.p(UTF_32_BE_BOM)) {
            kVar.skip(r0.g());
            return UTF_32_BE;
        }
        if (!kVar.p(UTF_32_LE_BOM)) {
            return charset;
        }
        kVar.skip(r0.g());
        return UTF_32_LE;
    }

    public static String canonicalizeHost(String str) {
        if (str.contains(":")) {
            InetAddress inetAddressDecodeIpv6 = (str.startsWith("[") && str.endsWith("]")) ? decodeIpv6(str, 1, str.length() - 1) : decodeIpv6(str, 0, str.length());
            if (inetAddressDecodeIpv6 == null) {
                return null;
            }
            byte[] address = inetAddressDecodeIpv6.getAddress();
            if (address.length == 16) {
                return inet6AddressToAscii(address);
            }
            throw new AssertionError(b.A("Invalid IPv6 address: '", str, "'"));
        }
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (containsInvalidHostnameAsciiCodes(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static int checkDuration(String str, long j10, TimeUnit timeUnit) {
        if (j10 < 0) {
            throw new IllegalArgumentException(b.j(str, " < 0"));
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        long millis = timeUnit.toMillis(j10);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(b.j(str, " too large."));
        }
        if (millis != 0 || j10 <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(b.j(str, " too small."));
    }

    public static void checkOffsetAndCount(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static void closeQuietly(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e7) {
                throw e7;
            } catch (Exception unused) {
            }
        }
    }

    public static String[] concat(String[] strArr, String str) {
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[length] = str;
        return strArr2;
    }

    private static boolean containsInvalidHostnameAsciiCodes(String str) {
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt <= 31 || cCharAt >= 127 || " #%/:?@[\\]".indexOf(cCharAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static int decodeHexDigit(char c7) {
        if (c7 >= '0' && c7 <= '9') {
            return c7 - '0';
        }
        if (c7 >= 'a' && c7 <= 'f') {
            return c7 - 'W';
        }
        if (c7 < 'A' || c7 > 'F') {
            return -1;
        }
        return c7 - '7';
    }

    private static boolean decodeIpv4Suffix(String str, int i10, int i11, byte[] bArr, int i12) {
        int i13 = i12;
        while (i10 < i11) {
            if (i13 == bArr.length) {
                return false;
            }
            if (i13 != i12) {
                if (str.charAt(i10) != '.') {
                    return false;
                }
                i10++;
            }
            int i14 = i10;
            int i15 = 0;
            while (i14 < i11) {
                char cCharAt = str.charAt(i14);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                if ((i15 == 0 && i10 != i14) || (i15 = ((i15 * 10) + cCharAt) - 48) > 255) {
                    return false;
                }
                i14++;
            }
            if (i14 - i10 == 0) {
                return false;
            }
            bArr[i13] = (byte) i15;
            i13++;
            i10 = i14;
        }
        return i13 == i12 + 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0079, code lost:
    
        if (r4 == 16) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007b, code lost:
    
        if (r5 != (-1)) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007d, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x007e, code lost:
    
        r12 = r4 - r5;
        java.lang.System.arraycopy(r1, r5, r1, 16 - r12, r12);
        java.util.Arrays.fill(r1, r5, (16 - r4) + r5, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x008e, code lost:
    
        return java.net.InetAddress.getByAddress(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0095, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static InetAddress decodeIpv6(String str, int i10, int i11) {
        int i12;
        byte[] bArr = new byte[16];
        int i13 = 0;
        int i14 = -1;
        int i15 = -1;
        while (true) {
            if (i10 < i11) {
                if (i13 != 16) {
                    int i16 = i10 + 2;
                    if (i16 <= i11 && str.regionMatches(i10, "::", 0, 2)) {
                        if (i14 == -1) {
                            i13 += 2;
                            i14 = i13;
                            if (i16 != i11) {
                                i15 = i16;
                                i10 = i15;
                                int i17 = 0;
                                while (i10 < i11) {
                                }
                                i12 = i10 - i15;
                                if (i12 == 0) {
                                    break;
                                }
                                break;
                                break;
                            }
                            break;
                        }
                        return null;
                    }
                    if (i13 != 0) {
                        if (str.regionMatches(i10, ":", 0, 1)) {
                            i10++;
                        } else {
                            if (!str.regionMatches(i10, ".", 0, 1) || !decodeIpv4Suffix(str, i15, i11, bArr, i13 - 2)) {
                                return null;
                            }
                            i13 += 2;
                        }
                    }
                    i15 = i10;
                    i10 = i15;
                    int i172 = 0;
                    while (i10 < i11) {
                        int iDecodeHexDigit = decodeHexDigit(str.charAt(i10));
                        if (iDecodeHexDigit == -1) {
                            break;
                        }
                        i172 = (i172 << 4) + iDecodeHexDigit;
                        i10++;
                    }
                    i12 = i10 - i15;
                    if (i12 == 0 || i12 > 4) {
                        break;
                    }
                    int i18 = i13 + 1;
                    bArr[i13] = (byte) ((i172 >>> 8) & 255);
                    i13 += 2;
                    bArr[i18] = (byte) (i172 & 255);
                } else {
                    return null;
                }
            } else {
                break;
            }
        }
        return null;
    }

    public static int delimiterOffset(String str, int i10, int i11, String str2) {
        while (i10 < i11) {
            if (str2.indexOf(str.charAt(i10)) != -1) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static boolean discard(z zVar, int i10, TimeUnit timeUnit) {
        try {
            return skipAll(zVar, i10, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static String format(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static String hostHeader(HttpUrl httpUrl, boolean z) {
        String strHost;
        if (httpUrl.host().contains(":")) {
            strHost = "[" + httpUrl.host() + "]";
        } else {
            strHost = httpUrl.host();
        }
        if (!z && httpUrl.port() == HttpUrl.defaultPort(httpUrl.scheme())) {
            return strHost;
        }
        StringBuilder sbB = f.b(strHost, ":");
        sbB.append(httpUrl.port());
        return sbB.toString();
    }

    public static <T> List<T> immutableList(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <K, V> Map<K, V> immutableMap(Map<K, V> map) {
        return map.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static int indexOf(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (comparator.compare(strArr[i10], str) == 0) {
                return i10;
            }
        }
        return -1;
    }

    public static int indexOfControlOrNonAscii(String str) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt <= 31 || cCharAt >= 127) {
                return i10;
            }
        }
        return -1;
    }

    private static String inet6AddressToAscii(byte[] bArr) {
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < bArr.length) {
            int i14 = i12;
            while (i14 < 16 && bArr[i14] == 0 && bArr[i14 + 1] == 0) {
                i14 += 2;
            }
            int i15 = i14 - i12;
            if (i15 > i13 && i15 >= 4) {
                i10 = i12;
                i13 = i15;
            }
            i12 = i14 + 2;
        }
        i iVar = new i();
        while (i11 < bArr.length) {
            if (i11 == i10) {
                iVar.W(58);
                i11 += i13;
                if (i11 == 16) {
                    iVar.W(58);
                }
            } else {
                if (i11 > 0) {
                    iVar.W(58);
                }
                iVar.Y(((bArr[i11] & 255) << 8) | (bArr[i11 + 1] & 255));
                i11 += 2;
            }
        }
        return iVar.Q();
    }

    public static String[] intersect(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i10]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i10++;
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean isAndroidGetsocknameError(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static boolean nonEmptyIntersection(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length != 0 && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static X509TrustManager platformTrustManager() throws NoSuchAlgorithmException, KeyStoreException {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length == 1) {
                TrustManager trustManager = trustManagers[0];
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
        } catch (GeneralSecurityException e7) {
            throw assertionError("No System TLS", e7);
        }
    }

    public static boolean skipAll(z zVar, int i10, TimeUnit timeUnit) {
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = zVar.timeout().hasDeadline() ? zVar.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        zVar.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i10)) + jNanoTime);
        try {
            i iVar = new i();
            while (zVar.read(iVar, 8192L) != -1) {
                iVar.r();
            }
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                zVar.timeout().clearDeadline();
                return true;
            }
            zVar.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            return true;
        } catch (InterruptedIOException unused) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                zVar.timeout().clearDeadline();
                return false;
            }
            zVar.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            return false;
        } catch (Throwable th2) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                zVar.timeout().clearDeadline();
            } else {
                zVar.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th2;
        }
    }

    public static int skipLeadingAsciiWhitespace(String str, int i10, int i11) {
        while (i10 < i11) {
            char cCharAt = str.charAt(i10);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static int skipTrailingAsciiWhitespace(String str, int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            char cCharAt = str.charAt(i12);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i12 + 1;
            }
        }
        return i10;
    }

    public static ThreadFactory threadFactory(final String str, final boolean z) {
        return new ThreadFactory() { // from class: okhttp3.internal.Util.2
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, str);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    public static Headers toHeaders(List<Header> list) {
        Headers.Builder builder = new Headers.Builder();
        for (Header header : list) {
            Internal.instance.addLenient(builder, header.name.q(), header.value.q());
        }
        return builder.build();
    }

    public static String trimSubstring(String str, int i10, int i11) {
        int iSkipLeadingAsciiWhitespace = skipLeadingAsciiWhitespace(str, i10, i11);
        return str.substring(iSkipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace(str, iSkipLeadingAsciiWhitespace, i11));
    }

    public static boolean verifyAsIpAddress(String str) {
        return VERIFY_AS_IP_ADDRESS.matcher(str).matches();
    }

    public static int delimiterOffset(String str, int i10, int i11, char c7) {
        while (i10 < i11) {
            if (str.charAt(i10) == c7) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    public static <T> List<T> immutableList(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static void closeQuietly(Socket socket) throws IOException {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e7) {
                if (!isAndroidGetsocknameError(e7)) {
                    throw e7;
                }
            } catch (RuntimeException e10) {
                if (!"bio == null".equals(e10.getMessage())) {
                    throw e10;
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void closeQuietly(ServerSocket serverSocket) throws IOException {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (RuntimeException e7) {
                throw e7;
            } catch (Exception unused) {
            }
        }
    }
}

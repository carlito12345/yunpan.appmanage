package okhttp3.internal.http;

import bf.a;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import fg.e0;
import fg.i;
import fg.l;
import g.b;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import okhttp3.Challenge;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import org.slf4j.Marker;

/* loaded from: classes.dex */
public final class HttpHeaders {
    private static final l QUOTED_STRING_DELIMITERS;
    private static final l TOKEN_DELIMITERS;

    static {
        l lVar = l.f5854d;
        QUOTED_STRING_DELIMITERS = e0.e("\"\\");
        TOKEN_DELIMITERS = e0.e("\t ,=");
    }

    private HttpHeaders() {
    }

    public static long contentLength(Response response) {
        return contentLength(response.headers());
    }

    public static boolean hasBody(Response response) {
        if (response.request().method().equals("HEAD")) {
            return false;
        }
        int iCode = response.code();
        return (((iCode >= 100 && iCode < 200) || iCode == 204 || iCode == 304) && contentLength(response) == -1 && !HTTP.CHUNK_CODING.equalsIgnoreCase(response.header(HTTP.TRANSFER_ENCODING))) ? false : true;
    }

    public static boolean hasVaryAll(Response response) {
        return hasVaryAll(response.headers());
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0079, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0079, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void parseChallengeHeader(List<Challenge> list, i iVar) throws EOFException {
        String token;
        int iSkipAll;
        LinkedHashMap linkedHashMap;
        while (true) {
            String token2 = null;
            while (true) {
                if (token2 == null) {
                    skipWhitespaceAndCommas(iVar);
                    token2 = readToken(iVar);
                    if (token2 == null) {
                        return;
                    }
                }
                boolean zSkipWhitespaceAndCommas = skipWhitespaceAndCommas(iVar);
                token = readToken(iVar);
                if (token == null) {
                    if (iVar.j()) {
                        list.add(new Challenge(token2, (Map<String, String>) Collections.emptyMap()));
                        return;
                    }
                    return;
                }
                iSkipAll = skipAll(iVar, (byte) 61);
                boolean zSkipWhitespaceAndCommas2 = skipWhitespaceAndCommas(iVar);
                if (zSkipWhitespaceAndCommas || (!zSkipWhitespaceAndCommas2 && !iVar.j())) {
                    linkedHashMap = new LinkedHashMap();
                    int iSkipAll2 = iSkipAll + skipAll(iVar, (byte) 61);
                    while (true) {
                        if (token == null) {
                            token = readToken(iVar);
                            if (skipWhitespaceAndCommas(iVar)) {
                                break;
                            }
                            iSkipAll2 = skipAll(iVar, (byte) 61);
                            if (iSkipAll2 != 0) {
                                break;
                            }
                            if (iSkipAll2 > 1 || skipWhitespaceAndCommas(iVar)) {
                                return;
                            }
                            String token3 = (iVar.j() || iVar.L(0L) != 34) ? readToken(iVar) : readQuotedString(iVar);
                            if (token3 == null || ((String) linkedHashMap.put(token, token3)) != null) {
                                return;
                            }
                            if (!skipWhitespaceAndCommas(iVar) && !iVar.j()) {
                                return;
                            } else {
                                token = null;
                            }
                        } else if (iSkipAll2 != 0) {
                        }
                    }
                }
                list.add(new Challenge(token2, linkedHashMap));
                token2 = token;
            }
            StringBuilder sbM = b.m(token);
            sbM.append(repeat('=', iSkipAll));
            list.add(new Challenge(token2, (Map<String, String>) Collections.singletonMap(null, sbM.toString())));
        }
    }

    public static List<Challenge> parseChallenges(Headers headers, String str) throws EOFException {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < headers.size(); i10++) {
            if (str.equalsIgnoreCase(headers.name(i10))) {
                i iVar = new i();
                iVar.e0(headers.value(i10));
                parseChallengeHeader(arrayList, iVar);
            }
        }
        return arrayList;
    }

    public static int parseSeconds(String str, int i10) throws NumberFormatException {
        try {
            long j10 = Long.parseLong(str);
            if (j10 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j10 < 0) {
                return 0;
            }
            return (int) j10;
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    private static String readQuotedString(i iVar) throws EOFException {
        if (iVar.readByte() != 34) {
            throw new IllegalArgumentException();
        }
        i iVar2 = new i();
        while (true) {
            long jN = iVar.N(QUOTED_STRING_DELIMITERS);
            if (jN == -1) {
                return null;
            }
            if (iVar.L(jN) == 34) {
                iVar2.write(iVar, jN);
                iVar.readByte();
                return iVar2.Q();
            }
            if (iVar.f5853b == jN + 1) {
                return null;
            }
            iVar2.write(iVar, jN);
            iVar.readByte();
            iVar2.write(iVar, 1L);
        }
    }

    private static String readToken(i iVar) {
        try {
            long jN = iVar.N(TOKEN_DELIMITERS);
            if (jN == -1) {
                jN = iVar.f5853b;
            }
            if (jN != 0) {
                return iVar.P(jN, a.f2815a);
            }
            return null;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    public static void receiveHeaders(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        if (cookieJar == CookieJar.NO_COOKIES) {
            return;
        }
        List<Cookie> all = Cookie.parseAll(httpUrl, headers);
        if (all.isEmpty()) {
            return;
        }
        cookieJar.saveFromResponse(httpUrl, all);
    }

    private static String repeat(char c7, int i10) {
        char[] cArr = new char[i10];
        Arrays.fill(cArr, c7);
        return new String(cArr);
    }

    private static int skipAll(i iVar, byte b10) throws EOFException {
        int i10 = 0;
        while (!iVar.j() && iVar.L(0L) == b10) {
            i10++;
            iVar.readByte();
        }
        return i10;
    }

    public static int skipUntil(String str, int i10, String str2) {
        while (i10 < str.length() && str2.indexOf(str.charAt(i10)) == -1) {
            i10++;
        }
        return i10;
    }

    public static int skipWhitespace(String str, int i10) {
        char cCharAt;
        while (i10 < str.length() && ((cCharAt = str.charAt(i10)) == ' ' || cCharAt == '\t')) {
            i10++;
        }
        return i10;
    }

    private static boolean skipWhitespaceAndCommas(i iVar) throws EOFException {
        boolean z = false;
        while (!iVar.j()) {
            byte bL = iVar.L(0L);
            if (bL != 44) {
                if (bL != 32 && bL != 9) {
                    break;
                }
                iVar.readByte();
            } else {
                iVar.readByte();
                z = true;
            }
        }
        return z;
    }

    private static long stringToLong(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    private static Set<String> varyFields(Response response) {
        return varyFields(response.headers());
    }

    public static Headers varyHeaders(Response response) {
        return varyHeaders(response.networkResponse().request().headers(), response.headers());
    }

    public static boolean varyMatches(Response response, Headers headers, Request request) {
        for (String str : varyFields(response)) {
            if (!Util.equal(headers.values(str), request.headers(str))) {
                return false;
            }
        }
        return true;
    }

    public static long contentLength(Headers headers) {
        return stringToLong(headers.get("Content-Length"));
    }

    public static boolean hasVaryAll(Headers headers) {
        return varyFields(headers).contains(Marker.ANY_MARKER);
    }

    public static Set<String> varyFields(Headers headers) {
        Set<String> setEmptySet = Collections.emptySet();
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            if ("Vary".equalsIgnoreCase(headers.name(i10))) {
                String strValue = headers.value(i10);
                if (setEmptySet.isEmpty()) {
                    setEmptySet = new TreeSet<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : strValue.split(",")) {
                    setEmptySet.add(str.trim());
                }
            }
        }
        return setEmptySet;
    }

    public static Headers varyHeaders(Headers headers, Headers headers2) {
        Set<String> setVaryFields = varyFields(headers2);
        if (setVaryFields.isEmpty()) {
            return new Headers.Builder().build();
        }
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            String strName = headers.name(i10);
            if (setVaryFields.contains(strName)) {
                builder.add(strName, headers.value(i10));
            }
        }
        return builder.build();
    }
}

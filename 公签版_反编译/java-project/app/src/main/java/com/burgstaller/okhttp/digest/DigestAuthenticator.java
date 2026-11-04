package com.burgstaller.okhttp.digest;

import com.burgstaller.okhttp.digest.fromhttpclient.BasicHeaderValueFormatter;
import com.burgstaller.okhttp.digest.fromhttpclient.BasicHeaderValueParser;
import com.burgstaller.okhttp.digest.fromhttpclient.BasicNameValuePair;
import com.burgstaller.okhttp.digest.fromhttpclient.CharArrayBuffer;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.burgstaller.okhttp.digest.fromhttpclient.HeaderElement;
import com.burgstaller.okhttp.digest.fromhttpclient.HttpEntityDigester;
import com.burgstaller.okhttp.digest.fromhttpclient.NameValuePair;
import com.burgstaller.okhttp.digest.fromhttpclient.ParserCursor;
import com.burgstaller.okhttp.digest.fromhttpclient.UnsupportedDigestAlgorithmException;
import da.b;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Formatter;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.platform.Platform;

/* loaded from: classes.dex */
public class DigestAuthenticator implements CachingAuthenticator {
    private static final String CREDENTIAL_CHARSET = "http.auth.credential-charset";
    private static final char[] HEXADECIMAL = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final String PROXY_AUTH = "Proxy-Authenticate";
    public static final String PROXY_AUTH_RESP = "Proxy-Authorization";
    private static final int QOP_AUTH = 2;
    private static final int QOP_AUTH_INT = 1;
    private static final int QOP_MISSING = 0;
    private static final int QOP_UNKNOWN = -1;
    private static final String TAG = "OkDigest";
    public static final String WWW_AUTH = "WWW-Authenticate";
    public static final String WWW_AUTH_RESP = "Authorization";

    /* renamed from: a1, reason: collision with root package name */
    private String f3430a1;

    /* renamed from: a2, reason: collision with root package name */
    private String f3431a2;
    private String cnonce;
    private final Credentials credentials;
    private String lastNonce;
    private long nounceCount;
    private boolean proxy;
    private AtomicReference<Map<String, String>> parametersRef = new AtomicReference<>();
    private Charset credentialsCharset = Charset.forName(HTTP.ASCII);

    public static class AuthenticationException extends IllegalStateException {
        public AuthenticationException(String str) {
            super(str);
        }

        public AuthenticationException(String str, Exception exc) {
            super(str, exc);
        }
    }

    public DigestAuthenticator(Credentials credentials) {
        this.credentials = credentials;
    }

    private void copyHeaderMap(Headers headers, Map<String, String> map) {
        for (int i10 = 0; i10 < headers.size(); i10++) {
            map.put(headers.name(i10), headers.value(i10));
        }
    }

    public static String createCnonce() {
        byte[] bArr = new byte[8];
        new SecureRandom().nextBytes(bArr);
        return encode(bArr);
    }

    private synchronized NameValuePair createDigestHeader(Credentials credentials, Request request, Map<String, String> map) {
        char c7;
        String str;
        String str2;
        MessageDigest messageDigest;
        String string;
        StringBuilder sb2;
        String str3;
        try {
            String str4 = map.get("uri");
            String str5 = map.get("realm");
            String str6 = map.get("nonce");
            String str7 = map.get("opaque");
            String str8 = map.get("methodname");
            String str9 = map.get("algorithm");
            if (str9 == null) {
                str9 = "MD5";
            }
            HashSet hashSet = new HashSet(8);
            String str10 = map.get("qop");
            if (str10 != null) {
                StringTokenizer stringTokenizer = new StringTokenizer(str10, ",");
                while (stringTokenizer.hasMoreTokens()) {
                    hashSet.add(stringTokenizer.nextToken().trim().toLowerCase(Locale.US));
                }
                c7 = (request.body() == null || !hashSet.contains("auth-int")) ? hashSet.contains("auth") ? (char) 2 : (char) 65535 : (char) 1;
            } else {
                c7 = 0;
            }
            if (c7 == 65535) {
                throw new AuthenticationException("None of the qop methods is supported: " + str10);
            }
            String str11 = map.get("charset");
            if (str11 == null) {
                str11 = "ISO-8859-1";
            }
            String str12 = "MD5-sess".equalsIgnoreCase(str9) ? "MD5" : str9;
            try {
                MessageDigest messageDigestCreateMessageDigest = createMessageDigest(str12);
                String userName = credentials.getUserName();
                String password = credentials.getPassword();
                if (str6.equals(this.lastNonce)) {
                    str = str7;
                    str2 = str8;
                    this.nounceCount++;
                } else {
                    str = str7;
                    str2 = str8;
                    this.nounceCount = 1L;
                    this.cnonce = null;
                    this.lastNonce = str6;
                }
                StringBuilder sb3 = new StringBuilder(256);
                Formatter formatter = new Formatter(sb3, Locale.US);
                String str13 = str;
                formatter.format("%08x", Long.valueOf(this.nounceCount));
                formatter.close();
                String string2 = sb3.toString();
                if (this.cnonce == null) {
                    this.cnonce = createCnonce();
                }
                this.f3430a1 = null;
                this.f3431a2 = null;
                if ("MD5-sess".equalsIgnoreCase(str9)) {
                    sb3.setLength(0);
                    sb3.append(userName);
                    sb3.append(':');
                    sb3.append(str5);
                    sb3.append(':');
                    sb3.append(password);
                    messageDigest = messageDigestCreateMessageDigest;
                    String strEncode = encode(messageDigest.digest(getBytes(sb3.toString(), str11)));
                    sb3.setLength(0);
                    sb3.append(strEncode);
                    sb3.append(':');
                    sb3.append(str6);
                    sb3.append(':');
                    sb3.append(this.cnonce);
                    this.f3430a1 = sb3.toString();
                } else {
                    messageDigest = messageDigestCreateMessageDigest;
                    sb3.setLength(0);
                    sb3.append(userName);
                    sb3.append(':');
                    sb3.append(str5);
                    sb3.append(':');
                    sb3.append(password);
                    this.f3430a1 = sb3.toString();
                }
                String strEncode2 = encode(messageDigest.digest(getBytes(this.f3430a1, str11)));
                if (c7 == 2) {
                    this.f3431a2 = str2 + ':' + str4;
                } else {
                    String str14 = str2;
                    if (c7 != 1) {
                        this.f3431a2 = str14 + ':' + str4;
                    } else if (request.body() == null) {
                        HttpEntityDigester httpEntityDigester = new HttpEntityDigester(messageDigest);
                        try {
                            httpEntityDigester.close();
                            this.f3431a2 = str14 + ':' + str4 + ':' + encode(httpEntityDigester.getDigest());
                        } catch (IOException e7) {
                            throw new AuthenticationException("I/O error reading entity content", e7);
                        }
                    } else {
                        if (!hashSet.contains("auth")) {
                            throw new AuthenticationException("Qop auth-int cannot be used with a non-repeatable entity");
                        }
                        this.f3431a2 = str14 + ':' + str4;
                        c7 = 2;
                    }
                }
                String strEncode3 = encode(messageDigest.digest(getBytes(this.f3431a2, str11)));
                if (c7 == 0) {
                    sb3.setLength(0);
                    sb3.append(strEncode2);
                    sb3.append(':');
                    sb3.append(str6);
                    sb3.append(':');
                    sb3.append(strEncode3);
                    string = sb3.toString();
                } else {
                    sb3.setLength(0);
                    sb3.append(strEncode2);
                    sb3.append(':');
                    sb3.append(str6);
                    sb3.append(':');
                    sb3.append(string2);
                    sb3.append(':');
                    sb3.append(this.cnonce);
                    sb3.append(':');
                    sb3.append(c7 == 1 ? "auth-int" : "auth");
                    sb3.append(':');
                    sb3.append(strEncode3);
                    string = sb3.toString();
                }
                String strEncode4 = encode(messageDigest.digest(getAsciiBytes(string)));
                sb2 = new StringBuilder(128);
                str3 = isProxy() ? PROXY_AUTH_RESP : "Authorization";
                sb2.append("Digest ");
                ArrayList arrayList = new ArrayList(20);
                arrayList.add(new BasicNameValuePair("username", userName));
                arrayList.add(new BasicNameValuePair("realm", str5));
                arrayList.add(new BasicNameValuePair("nonce", str6));
                arrayList.add(new BasicNameValuePair("uri", str4));
                arrayList.add(new BasicNameValuePair("response", strEncode4));
                if (c7 != 0) {
                    arrayList.add(new BasicNameValuePair("qop", c7 == 1 ? "auth-int" : "auth"));
                    arrayList.add(new BasicNameValuePair("nc", string2));
                    arrayList.add(new BasicNameValuePair("cnonce", this.cnonce));
                }
                arrayList.add(new BasicNameValuePair("algorithm", str9));
                if (str13 != null) {
                    arrayList.add(new BasicNameValuePair("opaque", str13));
                }
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    NameValuePair nameValuePair = (NameValuePair) arrayList.get(i10);
                    if (i10 > 0) {
                        sb2.append(", ");
                    }
                    String name = nameValuePair.getName();
                    BasicHeaderValueFormatter.DEFAULT.formatNameValuePair(sb2, nameValuePair, !("nc".equals(name) || "qop".equals(name) || "algorithm".equals(name)));
                }
            } catch (UnsupportedDigestAlgorithmException e10) {
                throw new AuthenticationException("Unsuppported digest algorithm: " + str12, e10);
            }
        } finally {
        }
        return new BasicNameValuePair(str3, sb2.toString());
    }

    private static MessageDigest createMessageDigest(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (Exception e7) {
            throw new IllegalArgumentException(b.c("Unsupported algorithm in HTTP Digest authentication: ", str), e7);
        }
    }

    public static String encode(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i10 = 0; i10 < length; i10++) {
            byte b10 = bArr[i10];
            int i11 = i10 * 2;
            char[] cArr2 = HEXADECIMAL;
            cArr[i11] = cArr2[(b10 & 240) >> 4];
            cArr[i11 + 1] = cArr2[b10 & 15];
        }
        return new String(cArr);
    }

    private String findDigestHeader(Headers headers, String str) {
        List<String> listValues = headers.values(str);
        for (String str2 : listValues) {
            if (str2.startsWith("Digest")) {
                return str2;
            }
        }
        throw new IllegalArgumentException("unsupported auth scheme: " + listValues);
    }

    public static byte[] getAsciiBytes(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Parameter may not be null");
        }
        try {
            return str.getBytes("US-ASCII");
        } catch (UnsupportedEncodingException e7) {
            throw new Error("HttpClient requires ASCII support", e7);
        }
    }

    private byte[] getBytes(String str, String str2) {
        try {
            return str.getBytes(str2);
        } catch (UnsupportedEncodingException unused) {
            return str.getBytes();
        }
    }

    private String getHeaderName(int i10) {
        if (i10 == 401) {
            setProxy(false);
            return WWW_AUTH;
        }
        if (i10 != 407) {
            return "";
        }
        setProxy(true);
        return PROXY_AUTH;
    }

    private boolean havePreviousDigestAuthorizationAndShouldAbort(Request request, String str, boolean z) {
        String strHeader = request.header(isProxy() ? PROXY_AUTH_RESP : "Authorization");
        if (strHeader == null || !strHeader.startsWith("Digest")) {
            return false;
        }
        return !z;
    }

    @Override // okhttp3.Authenticator
    public synchronized Request authenticate(Route route, Response response) {
        ConcurrentHashMap concurrentHashMap;
        String strFindDigestHeader = findDigestHeader(response.headers(), getHeaderName(response.code()));
        concurrentHashMap = new ConcurrentHashMap();
        parseChallenge(strFindDigestHeader, 7, strFindDigestHeader.length() - 7, concurrentHashMap);
        copyHeaderMap(response.headers(), concurrentHashMap);
        this.parametersRef.set(Collections.unmodifiableMap(concurrentHashMap));
        if (concurrentHashMap.get("nonce") == null) {
            throw new IllegalArgumentException("missing nonce in challenge header: ".concat(strFindDigestHeader));
        }
        return authenticateWithState(route, response.request(), concurrentHashMap);
    }

    @Override // com.burgstaller.okhttp.digest.CachingAuthenticator
    public Request authenticateWithState(Route route, Request request) {
        Map<String, String> map = this.parametersRef.get();
        return authenticateWithState(route, request, map == null ? new ConcurrentHashMap() : new ConcurrentHashMap(map));
    }

    public Charset getCredentialsCharset() {
        return this.credentialsCharset;
    }

    public boolean isProxy() {
        return this.proxy;
    }

    public void parseChallenge(String str, int i10, int i11, Map<String, String> map) {
        BasicHeaderValueParser basicHeaderValueParser = BasicHeaderValueParser.INSTANCE;
        ParserCursor parserCursor = new ParserCursor(i10, str.length());
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(i11);
        charArrayBuffer.append(str);
        HeaderElement[] elements = basicHeaderValueParser.parseElements(charArrayBuffer, parserCursor);
        if (elements.length == 0) {
            throw new IllegalArgumentException("Authentication challenge is empty");
        }
        for (HeaderElement headerElement : elements) {
            map.put(headerElement.getName(), headerElement.getValue());
        }
    }

    public void setProxy(boolean z) {
        this.proxy = z;
    }

    public String getCredentialsCharset(Request request) {
        String strHeader = request.header(CREDENTIAL_CHARSET);
        return strHeader == null ? getCredentialsCharset().name() : strHeader;
    }

    private Request authenticateWithState(Route route, Request request, Map<String, String> map) {
        if (map.get("realm") == null) {
            return null;
        }
        String str = map.get("nonce");
        if (str != null) {
            if (havePreviousDigestAuthorizationAndShouldAbort(request, str, "true".equalsIgnoreCase(map.get("stale")))) {
                Platform.get().log(5, "previous digest authentication with same nonce failed, returning null", null);
                return null;
            }
            if (route != null && route.requiresTunnel()) {
                String str2 = request.url().host() + ':' + request.url().port();
                map.put("methodname", "CONNECT");
                map.put("uri", str2);
            } else {
                String strMethod = request.method();
                String strRequestPath = RequestLine.requestPath(request.url());
                map.put("methodname", strMethod);
                map.put("uri", strRequestPath);
            }
            if (map.get("charset") == null) {
                map.put("charset", getCredentialsCharset(request));
            }
            NameValuePair nameValuePairCreateDigestHeader = createDigestHeader(this.credentials, request, map);
            return request.newBuilder().header(nameValuePairCreateDigestHeader.getName(), nameValuePairCreateDigestHeader.getValue()).build();
        }
        throw new IllegalArgumentException("missing nonce in challenge");
    }
}

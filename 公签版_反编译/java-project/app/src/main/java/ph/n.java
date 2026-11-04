package ph;

import androidx.fragment.app.b0;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes3.dex */
public abstract class n {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f12733a = {',', ';'};

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f12734b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f12735c = new ArrayList(106);

    /* renamed from: d, reason: collision with root package name */
    public static final oh.b f12736d = new oh.b(new ah.a(4), 1);

    /* renamed from: e, reason: collision with root package name */
    public static final ThreadLocal f12737e = new ThreadLocal();

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(oh.a aVar, m mVar, int i10) {
        String str;
        int iBinarySearch = Arrays.binarySearch(mVar.f12731c, i10);
        if (iBinarySearch >= 0) {
            String[] strArr = mVar.f12732d;
            if (iBinarySearch < strArr.length - 1) {
                int i11 = iBinarySearch + 1;
                str = mVar.f12731c[i11] == i10 ? strArr[i11] : strArr[iBinarySearch];
            }
        } else {
            str = "";
        }
        if ("".equals(str)) {
            aVar.b("&#x").b(Integer.toHexString(i10)).a(';');
        } else {
            aVar.a('&').b(str).a(';');
        }
    }

    public static boolean b(int i10, char c7, CharsetEncoder charsetEncoder) {
        int iC = d0.f.c(i10);
        return iC != 0 ? iC != 1 ? charsetEncoder.canEncode(c7) : c7 < 55296 || c7 >= 57344 : c7 < 128;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0061 A[PHI: r8 r9 r10
  0x0061: PHI (r8v4 boolean) = 
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v2 boolean)
  (r8v1 boolean)
  (r8v1 boolean)
 binds: [B:92:0x012f, B:91:0x012a, B:90:0x0123, B:87:0x0118, B:86:0x0111, B:85:0x010a, B:84:0x0103, B:82:0x00fa, B:81:0x00f5, B:80:0x00ee, B:79:0x00e7, B:73:0x00d9, B:72:0x00d5, B:46:0x009e, B:48:0x00a3, B:24:0x005f, B:22:0x005c] A[DONT_GENERATE, DONT_INLINE]
  0x0061: PHI (r9v4 boolean) = 
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v2 boolean)
  (r9v1 boolean)
  (r9v1 boolean)
 binds: [B:92:0x012f, B:91:0x012a, B:90:0x0123, B:87:0x0118, B:86:0x0111, B:85:0x010a, B:84:0x0103, B:82:0x00fa, B:81:0x00f5, B:80:0x00ee, B:79:0x00e7, B:73:0x00d9, B:72:0x00d5, B:46:0x009e, B:48:0x00a3, B:24:0x005f, B:22:0x005c] A[DONT_GENERATE, DONT_INLINE]
  0x0061: PHI (r10v4 boolean) = 
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v2 boolean)
  (r10v1 boolean)
  (r10v1 boolean)
 binds: [B:92:0x012f, B:91:0x012a, B:90:0x0123, B:87:0x0118, B:86:0x0111, B:85:0x010a, B:84:0x0103, B:82:0x00fa, B:81:0x00f5, B:80:0x00ee, B:79:0x00e7, B:73:0x00d9, B:72:0x00d5, B:46:0x009e, B:48:0x00a3, B:24:0x005f, B:22:0x005c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0134  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void c(oh.a aVar, String str, g gVar, int i10) {
        m mVar;
        m mVar2 = gVar.f12709a;
        Charset charset = gVar.f12710b;
        String strName = charset.name();
        int i11 = strName.equals("US-ASCII") ? 1 : strName.startsWith("UTF-") ? 2 : 3;
        ThreadLocal threadLocal = f12737e;
        CharsetEncoder charsetEncoderNewEncoder = (CharsetEncoder) threadLocal.get();
        if (charsetEncoderNewEncoder == null || !charsetEncoderNewEncoder.charset().equals(charset)) {
            charsetEncoderNewEncoder = charset.newEncoder();
            threadLocal.set(charsetEncoderNewEncoder);
        }
        int length = str.length();
        int iCharCount = 0;
        boolean z = false;
        boolean z4 = false;
        boolean z10 = false;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((i10 & 4) == 0) {
                mVar = m.xhtml;
                if (mVar == mVar2 || iCodePointAt == 9 || iCodePointAt == 10 || iCodePointAt == 13 || ((iCodePointAt >= 32 && iCodePointAt <= 55295) || ((iCodePointAt >= 57344 && iCodePointAt <= 65533) || (iCodePointAt >= 65536 && iCodePointAt <= 1114111)))) {
                    char c7 = (char) iCodePointAt;
                    if (iCodePointAt >= 65536) {
                        if (c7 == '\t' || c7 == '\n' || c7 == '\r') {
                            aVar.a(c7);
                        } else if (c7 != '\"') {
                            if (c7 == '<') {
                                aVar.b("&lt;");
                            } else if (c7 == '>') {
                                aVar.b("&gt;");
                            } else if (c7 != 160) {
                                if (c7 == '&') {
                                    aVar.b("&amp;");
                                } else if (c7 != '\'') {
                                    if (c7 < ' ' || !b(i11, c7, charsetEncoderNewEncoder)) {
                                        a(aVar, mVar2, iCodePointAt);
                                    } else {
                                        aVar.a(c7);
                                    }
                                } else if ((i10 & 2) == 0 || (i10 & 1) == 0) {
                                    aVar.a('\'');
                                } else if (mVar2 == mVar) {
                                    aVar.b("&#x27;");
                                } else {
                                    aVar.b("&apos;");
                                }
                            } else if (mVar2 != mVar) {
                                aVar.b("&nbsp;");
                            } else {
                                aVar.b("&#xa0;");
                            }
                        } else if ((i10 & 2) != 0) {
                            aVar.b("&quot;");
                        } else {
                            aVar.a(c7);
                        }
                    } else if (b(i11, c7, charsetEncoderNewEncoder)) {
                        char[] cArr = (char[]) f12736d.get();
                        int chars = Character.toChars(iCodePointAt, cArr, 0);
                        switch (aVar.f11799a) {
                            case 0:
                                try {
                                    aVar.f11800b.append((CharSequence) new String(cArr, 0, chars));
                                    break;
                                } catch (IOException e7) {
                                    throw new b0(8, e7);
                                }
                            default:
                                aVar.f11800b.append(cArr, 0, chars);
                                break;
                        }
                    } else {
                        a(aVar, mVar2, iCodePointAt);
                    }
                }
            } else if (!oh.f.i(iCodePointAt)) {
                if (z) {
                    aVar.a(' ');
                    z = false;
                }
                z4 = true;
                z10 = false;
                mVar = m.xhtml;
                if (mVar == mVar2) {
                    char c72 = (char) iCodePointAt;
                    if (iCodePointAt >= 65536) {
                    }
                }
            } else if (((i10 & 8) == 0 || z4) && !z10) {
                if ((i10 & 16) != 0) {
                    z = true;
                } else {
                    aVar.a(' ');
                    z10 = true;
                }
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
    }
}

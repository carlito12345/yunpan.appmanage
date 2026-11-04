package y2;

import j$.nio.charset.StandardCharsets;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import r1.d0;

/* loaded from: classes.dex */
public final class a extends nh.b {

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f18882d = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: b, reason: collision with root package name */
    public final CharsetDecoder f18883b = StandardCharsets.UTF_8.newDecoder();

    /* renamed from: c, reason: collision with root package name */
    public final CharsetDecoder f18884c = StandardCharsets.ISO_8859_1.newDecoder();

    @Override // nh.b
    public final d0 r(u2.a aVar, ByteBuffer byteBuffer) {
        String string;
        CharsetDecoder charsetDecoder = this.f18884c;
        CharsetDecoder charsetDecoder2 = this.f18883b;
        String str = null;
        try {
            string = charsetDecoder2.decode(byteBuffer).toString();
        } catch (CharacterCodingException unused) {
            try {
                String string2 = charsetDecoder.decode(byteBuffer).toString();
                charsetDecoder.reset();
                byteBuffer.rewind();
                string = string2;
            } catch (CharacterCodingException unused2) {
                charsetDecoder.reset();
                byteBuffer.rewind();
                string = null;
            } catch (Throwable th2) {
                charsetDecoder.reset();
                byteBuffer.rewind();
                throw th2;
            }
        } finally {
            charsetDecoder2.reset();
            byteBuffer.rewind();
        }
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        if (string == null) {
            return new d0(new c(null, null, bArr));
        }
        Matcher matcher = f18882d.matcher(string);
        String str2 = null;
        for (int iEnd = 0; matcher.find(iEnd); iEnd = matcher.end()) {
            String strGroup = matcher.group(1);
            String strGroup2 = matcher.group(2);
            if (strGroup != null) {
                String strB0 = qf.c.b0(strGroup);
                strB0.getClass();
                if (strB0.equals("streamurl")) {
                    str2 = strGroup2;
                } else if (strB0.equals("streamtitle")) {
                    str = strGroup2;
                }
            }
        }
        return new d0(new c(str, str2, bArr));
    }
}

package lg;

import j$.nio.charset.StandardCharsets;
import j$.util.Collection;
import j$.util.Objects;
import j$.util.stream.Stream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;

/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: c, reason: collision with root package name */
    public static final String f10725c = String.valueOf('?');

    /* renamed from: a, reason: collision with root package name */
    public final Charset f10726a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10727b;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public a(Charset charset) {
        boolean z;
        this.f10726a = charset;
        int i10 = sg.a.f14562a;
        String strName = (charset == null ? Charset.defaultCharset() : charset).name();
        Charset charset2 = StandardCharsets.UTF_8;
        if (!charset2.name().equalsIgnoreCase(strName)) {
            Stream stream = Collection.EL.stream(charset2.aliases());
            Objects.requireNonNull(strName);
            z = stream.anyMatch(new com.hierynomus.smbj.auth.a(5, strName));
        }
        this.f10727b = z;
    }

    @Override // lg.b
    public final String decode(byte[] bArr) {
        CharsetDecoder charsetDecoderReplaceWith;
        boolean z = this.f10727b;
        Charset charset = this.f10726a;
        if (z) {
            CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            charsetDecoderReplaceWith = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).replaceWith(f10725c);
        } else {
            CharsetDecoder charsetDecoderNewDecoder2 = charset.newDecoder();
            CodingErrorAction codingErrorAction2 = CodingErrorAction.REPORT;
            charsetDecoderReplaceWith = charsetDecoderNewDecoder2.onMalformedInput(codingErrorAction2).onUnmappableCharacter(codingErrorAction2);
        }
        return charsetDecoderReplaceWith.decode(ByteBuffer.wrap(bArr)).toString();
    }
}

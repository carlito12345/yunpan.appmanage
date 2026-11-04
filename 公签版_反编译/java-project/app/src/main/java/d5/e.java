package d5;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class e extends ByteArrayOutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f4486a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(f fVar, int i10) {
        super(i10);
        this.f4486a = fVar;
    }

    @Override // java.io.ByteArrayOutputStream
    public final String toString() {
        int i10 = ((ByteArrayOutputStream) this).count;
        if (i10 > 0) {
            int i11 = i10 - 1;
            if (((ByteArrayOutputStream) this).buf[i11] == 13) {
                i10 = i11;
            }
        }
        try {
            byte[] bArr = ((ByteArrayOutputStream) this).buf;
            this.f4486a.getClass();
            return new String(bArr, 0, i10, g.f4491a.name());
        } catch (UnsupportedEncodingException e7) {
            throw new AssertionError(e7);
        }
    }
}

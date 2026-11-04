package rf;

import java.io.IOException;
import java.io.StringWriter;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class d extends c {

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f13763c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final int f13764d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13765e;

    public d(CharSequence[]... charSequenceArr) {
        int i10 = Integer.MAX_VALUE;
        int i11 = 0;
        for (CharSequence[] charSequenceArr2 : charSequenceArr) {
            this.f13763c.put(charSequenceArr2[0].toString(), charSequenceArr2[1]);
            int length = charSequenceArr2[0].length();
            i10 = length < i10 ? length : i10;
            if (length > i11) {
                i11 = length;
            }
        }
        this.f13764d = i10;
        this.f13765e = i11;
    }

    @Override // rf.c
    public final int a(int i10, StringWriter stringWriter, String str) throws IOException {
        int length = this.f13765e;
        if (i10 + length > str.length()) {
            length = str.length() - i10;
        }
        while (length >= this.f13764d) {
            CharSequence charSequence = (CharSequence) this.f13763c.get(str.subSequence(i10, i10 + length).toString());
            if (charSequence != null) {
                stringWriter.write(charSequence.toString());
                return length;
            }
            length--;
        }
        return 0;
    }
}

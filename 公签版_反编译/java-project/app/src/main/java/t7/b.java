package t7;

import com.hierynomus.smbfs.SmbPath;

/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: a, reason: collision with root package name */
    public final char f14827a;

    public b(char c7) {
        this.f14827a = c7;
    }

    @Override // t7.a
    public final boolean a(char c7) {
        return c7 == this.f14827a;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("CharMatcher.is('");
        char c7 = this.f14827a;
        char[] cArr = new char[6];
        cArr[0] = SmbPath.SEPARATOR;
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            cArr[5 - i10] = "0123456789ABCDEF".charAt(c7 & 15);
            c7 = (char) (c7 >> 4);
        }
        sb2.append(String.copyValueOf(cArr));
        sb2.append("')");
        return sb2.toString();
    }
}

package c8;

import java.io.IOException;
import java.util.Locale;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
public final class u0 extends z7.a0 {
    @Override // z7.a0
    public final Object b(h8.a aVar) throws IOException {
        if (aVar.e0() == 9) {
            aVar.a0();
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(aVar.c0(), "_");
        String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
        String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
        String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
        return (strNextToken2 == null && strNextToken3 == null) ? new Locale(strNextToken) : strNextToken3 == null ? new Locale(strNextToken, strNextToken2) : new Locale(strNextToken, strNextToken2, strNextToken3);
    }

    @Override // z7.a0
    public final void c(h8.b bVar, Object obj) throws IOException {
        Locale locale = (Locale) obj;
        bVar.X(locale == null ? null : locale.toString());
    }
}

package p4;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.io.PrintStream;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class a extends RuntimeException {

    /* renamed from: a, reason: collision with root package name */
    public final StringBuffer f12574a;

    public a(String str, Exception exc) {
        super(str == null ? exc != null ? exc.getMessage() : null : str, exc);
        if (!(exc instanceof a)) {
            this.f12574a = new StringBuffer(200);
            return;
        }
        String string = ((a) exc).f12574a.toString();
        StringBuffer stringBuffer = new StringBuffer(string.length() + 200);
        this.f12574a = stringBuffer;
        stringBuffer.append(string);
    }

    public static a a(Exception exc, String str) {
        a aVar = exc instanceof a ? (a) exc : new a(null, exc);
        if (str == null) {
            throw new NullPointerException("str == null");
        }
        StringBuffer stringBuffer = aVar.f12574a;
        stringBuffer.append(str);
        if (!str.endsWith(SignParameters.NEW_LINE)) {
            stringBuffer.append('\n');
        }
        return aVar;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        printStream.getClass();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        printWriter.println(this.f12574a);
    }
}

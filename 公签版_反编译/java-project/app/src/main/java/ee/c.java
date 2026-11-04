package ee;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: classes.dex */
public final class c extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f4957a;

    public c(String str) {
        super(str);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        Throwable th2 = this.f4957a;
        if (th2 == null) {
            return super.toString();
        }
        StringWriter stringWriter = new StringWriter();
        th2.printStackTrace(new PrintWriter(stringWriter));
        return super.toString() + SignParameters.NEW_LINE + stringWriter;
    }

    public c(Exception exc) {
        this.f4957a = exc;
    }

    public c(Throwable th2) {
        super("Connection in error");
        this.f4957a = th2;
    }
}

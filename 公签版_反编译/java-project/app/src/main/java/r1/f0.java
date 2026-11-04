package r1;

import java.io.IOException;

/* loaded from: classes.dex */
public class f0 extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f13439a;

    /* renamed from: b, reason: collision with root package name */
    public final int f13440b;

    public f0(String str, RuntimeException runtimeException, boolean z, int i10) {
        super(str, runtimeException);
        this.f13439a = z;
        this.f13440b = i10;
    }

    public static f0 a(RuntimeException runtimeException, String str) {
        return new f0(str, runtimeException, true, 1);
    }

    public static f0 b(String str) {
        return new f0(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(message != null ? message.concat(" ") : "");
        sb2.append("{contentIsMalformed=");
        sb2.append(this.f13439a);
        sb2.append(", dataType=");
        return android.support.v4.media.session.a.s(sb2, this.f13440b, "}");
    }
}

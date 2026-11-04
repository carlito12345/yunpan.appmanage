package r9;

import java.io.IOException;
import java.util.Locale;

/* loaded from: classes.dex */
public final class b extends IOException {

    /* renamed from: a, reason: collision with root package name */
    public final int f13723a;

    /* renamed from: b, reason: collision with root package name */
    public final String f13724b;

    public b(String str, int i10, String str2) {
        super(str);
        this.f13723a = i10;
        this.f13724b = str2;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        Locale locale = Locale.US;
        return super.getMessage() + " (" + this.f13723a + " " + this.f13724b + ")";
    }
}

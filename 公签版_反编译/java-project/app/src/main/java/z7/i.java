package z7;

import com.alibaba.sdk.android.oss.signer.SignParameters;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: d, reason: collision with root package name */
    public static final i f19446d = new i("", "", false);

    /* renamed from: e, reason: collision with root package name */
    public static final i f19447e = new i(SignParameters.NEW_LINE, "  ", true);

    /* renamed from: a, reason: collision with root package name */
    public final String f19448a;

    /* renamed from: b, reason: collision with root package name */
    public final String f19449b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f19450c;

    public i(String str, String str2, boolean z) {
        if (!str.matches("[\r\n]*")) {
            throw new IllegalArgumentException("Only combinations of \\n and \\r are allowed in newline.");
        }
        if (!str2.matches("[ \t]*")) {
            throw new IllegalArgumentException("Only combinations of spaces and tabs are allowed in indent.");
        }
        this.f19448a = str;
        this.f19449b = str2;
        this.f19450c = z;
    }
}

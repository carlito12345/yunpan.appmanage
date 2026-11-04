package mb;

import com.alibaba.sdk.android.oss.signer.SignParameters;

/* loaded from: classes.dex */
public enum m {
    NONE(""),
    LF(SignParameters.NEW_LINE),
    CR("\r"),
    CRLF("\r\n");


    /* renamed from: a, reason: collision with root package name */
    public final String f11097a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11098b;

    m(String str) {
        this.f11097a = str;
        this.f11098b = str.length();
        str.toCharArray();
    }
}

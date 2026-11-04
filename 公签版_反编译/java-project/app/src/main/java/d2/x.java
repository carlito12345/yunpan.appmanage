package d2;

import android.text.TextUtils;

/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final String f4351a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4352b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4353c;

    public x(String str, boolean z, boolean z4) {
        this.f4351a = str;
        this.f4352b = z;
        this.f4353c = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != x.class) {
            return false;
        }
        x xVar = (x) obj;
        return TextUtils.equals(this.f4351a, xVar.f4351a) && this.f4352b == xVar.f4352b && this.f4353c == xVar.f4353c;
    }

    public final int hashCode() {
        return ((org.bouncycastle.jcajce.provider.digest.a.c(31, 31, this.f4351a) + (this.f4352b ? 1231 : 1237)) * 31) + (this.f4353c ? 1231 : 1237);
    }
}

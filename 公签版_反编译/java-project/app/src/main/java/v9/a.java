package v9;

import android.text.TextUtils;
import java.io.IOException;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public long f16680a = 20;

    /* renamed from: b, reason: collision with root package name */
    public int f16681b = 0;

    public static a c() {
        return new a();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final i a() {
        i iVarD;
        if (e(1) || !e(2)) {
            iVarD = null;
        } else {
            try {
                iVarD = d("su", "--mount-master");
                try {
                    if (!(iVarD.f16702c >= 1)) {
                    }
                } catch (u9.a unused) {
                }
            } catch (u9.a unused2) {
            }
        }
        if (iVarD == null && !e(1)) {
            try {
                iVarD = d("su");
                iVarD = iVarD.f16702c >= 1 ? iVarD : null;
            } catch (u9.a unused3) {
            }
        }
        if (iVarD != null) {
            return iVarD;
        }
        if (!e(1)) {
            synchronized (l.class) {
            }
        }
        return d("sh");
    }

    public final i b(Process process) {
        try {
            i iVar = new i(this, process);
            if (e(8)) {
                u9.d.f15555b = true;
            }
            synchronized (c.class) {
                try {
                    if (c.f16685c) {
                        i[] iVarArr = c.f16683a;
                        synchronized (iVarArr) {
                            iVarArr[0] = iVar;
                        }
                    } else {
                        i[] iVarArr2 = c.f16684b;
                        if (iVarArr2[0] == null) {
                            synchronized (c.f16683a) {
                                iVarArr2[0] = iVar;
                            }
                        }
                    }
                } finally {
                }
            }
            return iVar;
        } catch (IOException e7) {
            throw new u9.a(e7);
        }
    }

    public final i d(String... strArr) {
        try {
            TextUtils.join(" ", strArr);
            return b(Runtime.getRuntime().exec(strArr));
        } catch (IOException e7) {
            throw new u9.a(e7);
        }
    }

    public final boolean e(int i10) {
        return (this.f16681b & i10) == i10;
    }

    public final a f() {
        this.f16681b = 2;
        return this;
    }

    public final a g(long j10) {
        this.f16680a = j10;
        return this;
    }
}

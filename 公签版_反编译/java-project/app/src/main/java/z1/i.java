package z1;

import android.media.metrics.LogSessionId;
import android.os.Build;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: c, reason: collision with root package name */
    public static final i f19388c;

    /* renamed from: a, reason: collision with root package name */
    public final String f19389a;

    /* renamed from: b, reason: collision with root package name */
    public final w.i f19390b;

    static {
        new i("");
        f19388c = new i("preload");
    }

    public i(String str) {
        this.f19389a = str;
        this.f19390b = Build.VERSION.SDK_INT >= 31 ? new w.i(10) : null;
    }

    public final synchronized LogSessionId a() {
        w.i iVar;
        iVar = this.f19390b;
        iVar.getClass();
        return (LogSessionId) iVar.f17092b;
    }
}

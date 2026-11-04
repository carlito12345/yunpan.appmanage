package androidx.fragment.app;

import android.os.Handler;

/* loaded from: classes.dex */
public abstract class o0 extends m0 {

    /* renamed from: a, reason: collision with root package name */
    public final j0 f1359a;

    /* renamed from: b, reason: collision with root package name */
    public final j0 f1360b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f1361c;

    /* renamed from: d, reason: collision with root package name */
    public final e1 f1362d;

    public o0(q.i iVar) {
        Handler handler = new Handler();
        this.f1362d = new e1();
        this.f1359a = iVar;
        this.f1360b = iVar;
        this.f1361c = handler;
    }
}

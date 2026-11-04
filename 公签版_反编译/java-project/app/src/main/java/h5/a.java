package h5;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class a implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6513a;

    public /* synthetic */ a(int i10) {
        this.f6513a = i10;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f6513a) {
            case 0:
                return new Thread(new androidx.activity.h(9, runnable), "glide-active-resources");
            default:
                return new u0.h(runnable);
        }
    }
}

package androidx.emoji2.text;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1098a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f1099b;

    public /* synthetic */ a(String str, int i10) {
        this.f1098a = i10;
        this.f1099b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f1098a) {
            case 0:
                Thread thread = new Thread(runnable, this.f1099b);
                thread.setPriority(10);
                return thread;
            default:
                return new Thread(runnable, this.f1099b);
        }
    }
}

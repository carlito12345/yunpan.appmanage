package j$.util.stream;

/* loaded from: classes2.dex */
final class K3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9263a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Object f9264b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ Object f9265c;

    public /* synthetic */ K3(int i10, Object obj, Object obj2) {
        this.f9263a = i10;
        this.f9264b = obj;
        this.f9265c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws Exception {
        switch (this.f9263a) {
            case 0:
                Runnable runnable = (Runnable) this.f9265c;
                try {
                    ((Runnable) this.f9264b).run();
                    runnable.run();
                    return;
                } catch (Throwable th2) {
                    try {
                        runnable.run();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Throwable unused) {
                        }
                    }
                    throw th2;
                }
            default:
                Stream stream = (Stream) this.f9265c;
                try {
                    ((Stream) this.f9264b).close();
                    stream.close();
                    return;
                } catch (Throwable th4) {
                    try {
                        stream.close();
                    } catch (Throwable th5) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                        } catch (Throwable unused2) {
                        }
                    }
                    throw th4;
                }
        }
    }
}

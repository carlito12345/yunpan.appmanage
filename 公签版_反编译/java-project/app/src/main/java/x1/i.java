package x1;

/* loaded from: classes.dex */
public final class i extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f18094a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(j jVar) {
        super("ExoPlayer:SimpleDecoder");
        this.f18094a = jVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        j jVar = this.f18094a;
        jVar.getClass();
        do {
            try {
            } catch (InterruptedException e7) {
                throw new IllegalStateException(e7);
            }
        } while (jVar.k());
    }
}

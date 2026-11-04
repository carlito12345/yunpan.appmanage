package tb;

import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14901a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CodeEditor f14902b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Runnable f14903c;

    public /* synthetic */ c(CodeEditor codeEditor, Runnable runnable, int i10) {
        this.f14901a = i10;
        this.f14902b = codeEditor;
        this.f14903c = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14901a) {
            case 0:
                if (!this.f14902b.T) {
                    this.f14903c.run();
                    break;
                }
                break;
            default:
                if (!this.f14902b.T) {
                    this.f14903c.run();
                    break;
                }
                break;
        }
    }
}

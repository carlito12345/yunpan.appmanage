package vb;

import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class r implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16764a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f16765b;

    public /* synthetic */ r(s sVar, int i10) {
        this.f16764a = i10;
        this.f16765b = sVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16764a) {
            case 0:
                s sVar = this.f16765b;
                boolean zM = sVar.f16766p.getEventHandler().m();
                CodeEditor codeEditor = sVar.f16766p;
                if (!zM && !codeEditor.getCursor().a()) {
                    sVar.b();
                    break;
                } else if (!codeEditor.getCursor().a()) {
                    codeEditor.Y(this, 100L);
                    break;
                }
                break;
            default:
                s sVar2 = this.f16765b;
                boolean zG = sVar2.f16772x.g();
                CodeEditor codeEditor2 = sVar2.f16766p;
                if (!zG) {
                    codeEditor2.getSnippetController().getClass();
                    if (System.currentTimeMillis() - sVar2.z > 200 && codeEditor2.getScroller().f14985b.isFinished()) {
                        sVar2.f();
                        break;
                    }
                }
                codeEditor2.Y(this, 200L);
                break;
        }
    }
}

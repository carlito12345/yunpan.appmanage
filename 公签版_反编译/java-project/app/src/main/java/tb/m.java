package tb;

import android.widget.OverScroller;
import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final CodeEditor f14984a;

    /* renamed from: b, reason: collision with root package name */
    public final OverScroller f14985b;

    public m(CodeEditor codeEditor) {
        this.f14985b = new OverScroller(codeEditor.getContext());
        this.f14984a = codeEditor;
    }

    public final void a() {
        OverScroller overScroller = this.f14985b;
        int currX = overScroller.getCurrX();
        CodeEditor codeEditor = this.f14984a;
        codeEditor.setScrollX(currX);
        codeEditor.setScrollY(overScroller.getCurrY());
    }

    public final void b(int i10, int i11, int i12, int i13, int i14) {
        this.f14985b.startScroll(i10, i11, i12, i13, i14);
        a();
    }
}

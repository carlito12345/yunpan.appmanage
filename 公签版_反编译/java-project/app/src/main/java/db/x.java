package db;

import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class x extends bi.a {

    /* renamed from: c, reason: collision with root package name */
    public final mb.b f4561c;

    /* renamed from: d, reason: collision with root package name */
    public final mb.b f4562d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4563e;

    public x(CodeEditor codeEditor, int i10) {
        super(codeEditor);
        mb.j jVarM = codeEditor.getText().m();
        this.f4561c = jVarM.f11081c.a();
        this.f4562d = jVarM.f11082d.a();
        this.f4563e = i10;
    }

    public final boolean c() {
        return this.f4561c.f11056a != this.f4562d.f11056a;
    }
}

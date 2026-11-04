package tb;

import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class d implements Runnable, db.q {

    /* renamed from: a, reason: collision with root package name */
    public final CodeEditor f14904a;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14906c;

    /* renamed from: e, reason: collision with root package name */
    public int f14908e;

    /* renamed from: f, reason: collision with root package name */
    public float[] f14909f;

    /* renamed from: d, reason: collision with root package name */
    public long f14907d = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f14905b = true;

    public d(CodeEditor codeEditor, int i10) {
        this.f14904a = codeEditor;
        this.f14908e = i10;
        codeEditor.l0(db.x.class, this);
    }

    @Override // db.q
    public final void a(bi.a aVar, ag.h hVar) {
        this.f14907d = System.currentTimeMillis();
        this.f14905b = true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f14906c || this.f14908e <= 0) {
            this.f14905b = true;
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f14907d;
        long j10 = this.f14908e * 2;
        CodeEditor codeEditor = this.f14904a;
        if (jCurrentTimeMillis >= j10) {
            this.f14905b = !this.f14905b;
            mb.b bVarA = codeEditor.getCursor().f11081c.a();
            this.f14909f = codeEditor.getLayout().e(bVarA.f11057b, bVarA.f11058c, this.f14909f);
            if (!codeEditor.getCursor().a() && this.f14909f[0] >= codeEditor.getOffsetY()) {
                if (this.f14909f[0] - codeEditor.getRowHeight() <= codeEditor.getHeight() + codeEditor.getOffsetY() && this.f14909f[1] >= codeEditor.getOffsetX()) {
                    if (this.f14909f[1] - 100.0f <= codeEditor.getWidth() + codeEditor.getOffsetX()) {
                        codeEditor.postInvalidate();
                    }
                }
            }
        } else {
            this.f14905b = true;
        }
        codeEditor.Y(this, this.f14908e);
    }
}

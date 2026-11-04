package tb;

import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: h, reason: collision with root package name */
    public static final cc.d f14953h = new cc.d();

    /* renamed from: a, reason: collision with root package name */
    public float f14954a;

    /* renamed from: b, reason: collision with root package name */
    public float f14955b;

    /* renamed from: c, reason: collision with root package name */
    public final int f14956c;

    /* renamed from: d, reason: collision with root package name */
    public final cc.d f14957d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14958e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f14959f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ l f14960g;

    public k(l lVar, float f10, float f11, int i10, cc.d dVar) {
        this.f14960g = lVar;
        this.f14954a = f10;
        this.f14955b = f11;
        this.f14956c = i10;
        this.f14957d = dVar;
    }

    public final boolean a() {
        int i10 = this.f14956c;
        if (i10 != 1 && i10 != 2) {
            l lVar = this.f14960g;
            if (lVar.f14975p.getCursorBlink().f14905b) {
                return true;
            }
            CodeEditor codeEditor = lVar.f14975p;
            if (codeEditor.getEventHandler().f15020e == 0 || codeEditor.W0) {
                return true;
            }
        }
        return false;
    }
}

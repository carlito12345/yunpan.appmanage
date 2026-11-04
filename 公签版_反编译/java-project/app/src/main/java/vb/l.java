package vb;

import androidx.fragment.app.j0;
import io.github.rosemoe.sora.widget.CodeEditor;
import ua.i1;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements te.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16747a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16748b;

    public /* synthetic */ l(int i10, Object obj) {
        this.f16747a = i10;
        this.f16748b = obj;
    }

    @Override // te.a
    public final Object b() {
        switch (this.f16747a) {
            case 0:
                ((CodeEditor) ((i1) this.f16748b).f15727b).X();
                return ie.e.f8690c;
            case 1:
                ((CodeEditor) ((i1) this.f16748b).f15727b).v(true);
                return ie.e.f8690c;
            case 2:
                ((CodeEditor) ((i1) this.f16748b).f15727b).z();
                return ie.e.f8690c;
            case 3:
                ((CodeEditor) ((i1) this.f16748b).f15727b).d0();
                return ie.e.f8690c;
            default:
                ((j0) this.f16748b).reportFullyDrawn();
                return null;
        }
    }
}

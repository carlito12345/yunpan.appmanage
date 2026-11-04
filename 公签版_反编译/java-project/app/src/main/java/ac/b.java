package ac;

import ag.h;
import db.q;
import db.x;
import gf.g;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.util.regex.Pattern;
import m7.e;
import ue.d;

/* loaded from: classes.dex */
public final class b {
    static {
        d.d(Pattern.compile("\\r|\\n|\\r\\n"), "compile(...)");
    }

    public b(CodeEditor codeEditor) {
        d.e(codeEditor, "editor");
        g gVar = new g(11);
        bc.a aVar = new bc.a();
        codeEditor.getClipboardManager();
        aVar.a(new e(10));
        aVar.a(new e(11));
        aVar.a(new g(12));
        aVar.a(new e(12));
        aVar.a(gVar);
        final int i10 = 0;
        codeEditor.f8717i.f(x.class, new q(this) { // from class: ac.a

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ b f569b;

            {
                this.f569b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar2, h hVar) {
                switch (i10) {
                    case 0:
                        d.e((x) aVar2, "event");
                        this.f569b.getClass();
                        break;
                    default:
                        d.e((db.d) aVar2, "event");
                        this.f569b.getClass();
                        break;
                }
            }
        });
        final int i11 = 1;
        codeEditor.f8717i.f(db.d.class, new q(this) { // from class: ac.a

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ b f569b;

            {
                this.f569b = this;
            }

            @Override // db.q
            public final void a(bi.a aVar2, h hVar) {
                switch (i11) {
                    case 0:
                        d.e((x) aVar2, "event");
                        this.f569b.getClass();
                        break;
                    default:
                        d.e((db.d) aVar2, "event");
                        this.f569b.getClass();
                        break;
                }
            }
        });
    }
}

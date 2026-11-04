package db;

import android.view.ContextMenu;
import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class e extends bi.a {

    /* renamed from: c, reason: collision with root package name */
    public final ContextMenu f4535c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(CodeEditor codeEditor, ContextMenu contextMenu, mb.b bVar) {
        super(codeEditor);
        ue.d.e(codeEditor, "editor");
        ue.d.e(contextMenu, "menu");
        this.f4535c = contextMenu;
    }
}

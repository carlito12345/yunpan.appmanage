package db;

import android.view.inputmethod.EditorInfo;
import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class a extends bi.a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(CodeEditor codeEditor, String str) {
        super(codeEditor);
        ue.d.e(codeEditor, "editor");
        ue.d.e(str, "action");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(CodeEditor codeEditor, EditorInfo editorInfo) {
        super(codeEditor);
        ue.d.e(codeEditor, "editor");
        ue.d.e(editorInfo, "editorInfo");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(CodeEditor codeEditor, int i10) {
        super(codeEditor);
        switch (i10) {
            case 3:
                ue.d.e(codeEditor, "editor");
                super(codeEditor);
                break;
            default:
                ue.d.e(codeEditor, "editor");
                break;
        }
    }
}

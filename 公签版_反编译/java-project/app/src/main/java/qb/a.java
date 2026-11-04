package qb;

import android.text.Editable;
import android.text.method.MetaKeyKeyListener;
import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class a extends MetaKeyKeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final CodeEditor f13183a;

    /* renamed from: b, reason: collision with root package name */
    public final Editable f13184b = Editable.Factory.getInstance().newEditable("");

    /* renamed from: c, reason: collision with root package name */
    public boolean f13185c = false;

    public a(CodeEditor codeEditor) {
        this.f13183a = codeEditor;
    }

    public final boolean a() {
        return MetaKeyKeyListener.getMetaState(this.f13184b, 2) == 1;
    }

    public final boolean b() {
        return MetaKeyKeyListener.getMetaState(this.f13184b, 1) == 1;
    }
}

package db;

import android.view.KeyEvent;
import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public class i extends bi.a {

    /* renamed from: c, reason: collision with root package name */
    public Boolean f4537c;

    /* renamed from: d, reason: collision with root package name */
    public final KeyEvent f4538d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4539e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f4540f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f4541g;

    public i(CodeEditor codeEditor, KeyEvent keyEvent, int i10) {
        super(codeEditor);
        this.f4538d = keyEvent;
        this.f4539e = i10;
        this.f4540f = ((CodeEditor) this.f2819b).getKeyMetaStates().b();
        this.f4541g = ((CodeEditor) this.f2819b).getKeyMetaStates().a();
    }

    public final boolean c(boolean z) {
        Boolean bool = this.f4537c;
        boolean z4 = bool != null && bool.booleanValue();
        return this.f2818a != 0 ? z4 : z4 || z;
    }
}

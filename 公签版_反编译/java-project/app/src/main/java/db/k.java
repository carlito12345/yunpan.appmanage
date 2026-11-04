package db;

import android.view.MotionEvent;
import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public abstract class k extends bi.a {

    /* renamed from: c, reason: collision with root package name */
    public final mb.b f4542c;

    /* renamed from: d, reason: collision with root package name */
    public final MotionEvent f4543d;

    public k(CodeEditor codeEditor, mb.b bVar, MotionEvent motionEvent) {
        super(codeEditor);
        this.f4542c = bVar;
        this.f4543d = motionEvent;
    }
}

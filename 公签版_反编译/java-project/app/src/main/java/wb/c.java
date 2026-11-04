package wb;

import io.github.rosemoe.sora.widget.CodeEditor;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class c implements d {

    /* renamed from: c, reason: collision with root package name */
    public static final ThreadPoolExecutor f17776c = new ThreadPoolExecutor(2, Math.max(2, Runtime.getRuntime().availableProcessors()), 1, TimeUnit.MINUTES, new LinkedBlockingQueue(128));

    /* renamed from: a, reason: collision with root package name */
    public CodeEditor f17777a;

    /* renamed from: b, reason: collision with root package name */
    public mb.g f17778b;

    public c(CodeEditor codeEditor, mb.g gVar) {
        this.f17777a = codeEditor;
        this.f17778b = gVar;
    }

    @Override // mb.i
    public final /* synthetic */ void b(mb.g gVar) {
    }

    public final float[] s(int i10, int i11) {
        return e(i10, i11, new float[2]);
    }

    public final List t() {
        this.f17777a.getInlayHints();
        return Collections.emptyList();
    }
}

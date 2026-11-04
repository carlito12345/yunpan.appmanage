package vb;

import android.os.Handler;
import ha.db;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.util.ArrayList;
import ua.g8;

/* loaded from: classes.dex */
public final class j extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final gb.b f16734a;

    /* renamed from: b, reason: collision with root package name */
    public final dg.a f16735b;

    /* renamed from: c, reason: collision with root package name */
    public long f16736c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16737d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ k f16738e;

    public j(k kVar, long j10, dg.a aVar) {
        this.f16738e = kVar;
        this.f16736c = j10;
        kVar.f16739p.getCursor().f11081c.a();
        CodeEditor codeEditor = kVar.f16739p;
        this.f16734a = codeEditor.getEditorLanguage();
        mb.g text = codeEditor.getText();
        int length = text.length();
        if (length < 0) {
            throw new IllegalArgumentException("start > end");
        }
        if (length > text.length()) {
            throw new StringIndexOutOfBoundsException(length);
        }
        this.f16735b = aVar;
        codeEditor.getExtraArguments();
        this.f16737d = false;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        dg.a aVar = this.f16735b;
        try {
            this.f16734a.getClass();
            boolean z = ((ArrayList) aVar.f4639c).size() + ((ArrayList) aVar.f4638b).size() > 0;
            k kVar = this.f16738e;
            if (!z) {
                kVar.f16739p.Z(new g(kVar, 3));
            } else if (kVar.f16742t == Thread.currentThread() && !aVar.f4637a) {
                ((Handler) aVar.f4641e).post(new db(3, aVar));
            }
            kVar.f16739p.Z(new g8(7, this));
        } catch (Exception e7) {
            boolean z4 = e7 instanceof hb.a;
        }
    }
}

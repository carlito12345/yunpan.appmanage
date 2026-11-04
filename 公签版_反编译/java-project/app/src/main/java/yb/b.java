package yb;

import android.os.Build;
import androidx.room.s;
import io.github.rosemoe.sora.widget.CodeEditor;
import java.util.ArrayList;
import java.util.Iterator;
import ue.d;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final s f19112a;

    /* renamed from: b, reason: collision with root package name */
    public final s4.a f19113b;

    public b(CodeEditor codeEditor) {
        d.e(codeEditor, "editor");
        this.f19112a = new s(23, (char) 0);
        this.f19113b = Build.VERSION.SDK_INT >= 29 ? new s4.a(codeEditor) : null;
    }

    public final void a() {
        s4.a aVar;
        if (Build.VERSION.SDK_INT < 29 || (aVar = this.f19113b) == null) {
            return;
        }
        Iterator it = ((ArrayList) aVar.f14294c).iterator();
        while (it.hasNext()) {
            ((c) it.next()).f19116c = true;
        }
    }
}

package x0;

import android.view.ContentInfo;
import android.view.OnReceiveContentListener;
import android.view.View;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class y0 implements OnReceiveContentListener {

    /* renamed from: a, reason: collision with root package name */
    public final y f18071a;

    public y0(y yVar) {
        this.f18071a = yVar;
    }

    @Override // android.view.OnReceiveContentListener
    public final ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
        i iVar = new i(new w.i(contentInfo));
        i iVarA = ((b1.v) this.f18071a).a(view, iVar);
        if (iVarA == null) {
            return null;
        }
        if (iVarA == iVar) {
            return contentInfo;
        }
        ContentInfo contentInfoI = iVarA.f18002a.i();
        Objects.requireNonNull(contentInfoI);
        return a2.b.k(contentInfoI);
    }
}

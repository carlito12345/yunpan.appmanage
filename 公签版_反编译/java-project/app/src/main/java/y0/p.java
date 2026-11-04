package y0;

import android.view.accessibility.AccessibilityNodeInfo;

/* loaded from: classes.dex */
public class p extends o {
    public p(w.i iVar) {
        super(iVar);
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo findFocus(int i10) {
        n nVarL = this.f18551a.l(i10);
        if (nVarL == null) {
            return null;
        }
        return nVarL.f18549a;
    }
}

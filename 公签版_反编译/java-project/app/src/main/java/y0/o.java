package y0;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

/* loaded from: classes.dex */
public class o extends AccessibilityNodeProvider {

    /* renamed from: a, reason: collision with root package name */
    public final w.i f18551a;

    public o(w.i iVar) {
        this.f18551a = iVar;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i10) {
        n nVarK = this.f18551a.k(i10);
        if (nVarK == null) {
            return null;
        }
        return nVarK.f18549a;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final List findAccessibilityNodeInfosByText(String str, int i10) {
        this.f18551a.getClass();
        return null;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final boolean performAction(int i10, int i11, Bundle bundle) {
        return this.f18551a.m(i10, i11, bundle);
    }
}

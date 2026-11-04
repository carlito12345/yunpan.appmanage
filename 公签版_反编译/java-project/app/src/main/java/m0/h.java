package m0;

import android.app.AppOpsManager;
import android.hardware.ConsumerIrManager;
import android.print.PrintManager;
import android.view.accessibility.CaptioningManager;

/* loaded from: classes.dex */
public abstract /* synthetic */ class h {
    public static /* bridge */ /* synthetic */ Class C() {
        return PrintManager.class;
    }

    public static /* bridge */ /* synthetic */ AppOpsManager g(Object obj) {
        return (AppOpsManager) obj;
    }

    public static /* bridge */ /* synthetic */ Class l() {
        return CaptioningManager.class;
    }

    public static /* bridge */ /* synthetic */ Class y() {
        return ConsumerIrManager.class;
    }
}

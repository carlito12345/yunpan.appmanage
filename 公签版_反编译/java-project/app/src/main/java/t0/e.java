package t0;

import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.telecom.TelecomManager;
import android.util.Size;
import android.util.SizeF;
import android.view.accessibility.AccessibilityWindowInfo;

/* loaded from: classes.dex */
public abstract /* synthetic */ class e {
    public static /* bridge */ /* synthetic */ MediaController e(Object obj) {
        return (MediaController) obj;
    }

    public static /* bridge */ /* synthetic */ MediaSessionManager f(Object obj) {
        return (MediaSessionManager) obj;
    }

    public static /* bridge */ /* synthetic */ TelecomManager h(Object obj) {
        return (TelecomManager) obj;
    }

    public static /* bridge */ /* synthetic */ Size i(Object obj) {
        return (Size) obj;
    }

    public static /* bridge */ /* synthetic */ SizeF j(Object obj) {
        return (SizeF) obj;
    }

    public static /* bridge */ /* synthetic */ AccessibilityWindowInfo l(Object obj) {
        return (AccessibilityWindowInfo) obj;
    }

    public static /* bridge */ /* synthetic */ boolean w(Object obj) {
        return obj instanceof Size;
    }

    public static /* bridge */ /* synthetic */ boolean y(Object obj) {
        return obj instanceof SizeF;
    }
}

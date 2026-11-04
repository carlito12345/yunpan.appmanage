package m0;

import android.app.Notification;

/* loaded from: classes.dex */
public abstract class b0 {
    public static Notification.Action.Builder a(Notification.Action.Builder builder, boolean z) {
        return builder.setAuthenticationRequired(z);
    }

    public static Notification.Builder b(Notification.Builder builder, int i10) {
        return builder.setForegroundServiceBehavior(i10);
    }
}

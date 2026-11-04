package m0;

import android.app.RemoteInput;

/* loaded from: classes.dex */
public abstract class p0 {
    public static int a(Object obj) {
        return ((RemoteInput) obj).getEditChoicesBeforeSending();
    }

    public static RemoteInput.Builder b(RemoteInput.Builder builder, int i10) {
        return builder.setEditChoicesBeforeSending(i10);
    }
}

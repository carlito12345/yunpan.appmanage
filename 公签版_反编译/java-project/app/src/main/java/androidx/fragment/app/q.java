package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class q implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f1368a;

    public q(s sVar) {
        this.f1368a = sVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        s sVar = this.f1368a;
        Dialog dialog = sVar.f1390j;
        if (dialog != null) {
            sVar.onDismiss(dialog);
        }
    }
}

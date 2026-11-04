package androidx.fragment.app;

import android.app.Dialog;
import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class p implements DialogInterface.OnCancelListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f1363a;

    public p(s sVar) {
        this.f1363a = sVar;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        s sVar = this.f1363a;
        Dialog dialog = sVar.f1390j;
        if (dialog != null) {
            sVar.onCancel(dialog);
        }
    }
}

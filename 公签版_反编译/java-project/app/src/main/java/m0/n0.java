package m0;

import android.app.RemoteInput;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class n0 {
    public static void a(Object obj, Intent intent, Bundle bundle) {
        RemoteInput.addResultsToIntent((RemoteInput[]) obj, intent, bundle);
    }

    public static RemoteInput b(q0 q0Var) {
        q0Var.getClass();
        RemoteInput.Builder builderAddExtras = new RemoteInput.Builder("key_text_reply").setLabel("请输入ADB配对码").setChoices(null).setAllowFreeFormInput(true).addExtras(q0Var.f10791a);
        if (Build.VERSION.SDK_INT >= 26) {
            Iterator it = q0Var.f10792b.iterator();
            while (it.hasNext()) {
                o0.d(builderAddExtras, (String) it.next(), true);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            p0.b(builderAddExtras, 0);
        }
        return builderAddExtras.build();
    }

    public static Bundle c(Intent intent) {
        return RemoteInput.getResultsFromIntent(intent);
    }
}

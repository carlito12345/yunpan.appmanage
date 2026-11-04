package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import java.util.List;

/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements f4.b {
    @Override // f4.b
    public final List a() {
        return je.r.f9870a;
    }

    @Override // f4.b
    public final Object b(Context context) {
        ue.d.e(context, "context");
        f4.a aVarC = f4.a.c(context);
        ue.d.d(aVarC, "getInstance(context)");
        if (!aVarC.f5605b.contains(ProcessLifecycleInitializer.class)) {
            throw new IllegalStateException("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
        }
        if (!q.f1803a.getAndSet(true)) {
            Context applicationContext = context.getApplicationContext();
            ue.d.c(applicationContext, "null cannot be cast to non-null type android.app.Application");
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new p());
        }
        f0 f0Var = f0.f1763i;
        f0Var.getClass();
        f0Var.f1768e = new Handler();
        f0Var.f1769f.e(m.ON_CREATE);
        Context applicationContext2 = context.getApplicationContext();
        ue.d.c(applicationContext2, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext2).registerActivityLifecycleCallbacks(new e0(f0Var));
        return f0Var;
    }
}

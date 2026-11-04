package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.ProcessLifecycleInitializer;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public class EmojiCompatInitializer implements f4.b {
    @Override // f4.b
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // f4.b
    public final Object b(Context context) {
        if (Build.VERSION.SDK_INT < 19) {
            return Boolean.FALSE;
        }
        s sVar = new s(new n(context));
        sVar.f1145b = 1;
        if (l.f1111j == null) {
            synchronized (l.f1110i) {
                try {
                    if (l.f1111j == null) {
                        l.f1111j = new l(sVar);
                    }
                } finally {
                }
            }
        }
        c(context);
        return Boolean.TRUE;
    }

    public final void c(Context context) {
        Object objB;
        f4.a aVarC = f4.a.c(context);
        aVarC.getClass();
        synchronized (f4.a.f5603e) {
            try {
                objB = aVarC.f5604a.get(ProcessLifecycleInitializer.class);
                if (objB == null) {
                    objB = aVarC.b(ProcessLifecycleInitializer.class, new HashSet());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        final androidx.lifecycle.o lifecycle = ((androidx.lifecycle.t) objB).getLifecycle();
        lifecycle.a(new androidx.lifecycle.e() { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // androidx.lifecycle.e
            public final void b() {
                EmojiCompatInitializer.this.getClass();
                (Build.VERSION.SDK_INT >= 28 ? c.a(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new o(0), 500L);
                lifecycle.b(this);
            }
        });
    }
}

package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import f4.b;
import java.util.Collections;
import java.util.List;
import s1.f;
import s5.c;
import y3.e;

/* loaded from: classes.dex */
public class ProfileInstallerInitializer implements b {
    @Override // f4.b
    public final List a() {
        return Collections.emptyList();
    }

    @Override // f4.b
    public final Object b(Context context) {
        if (Build.VERSION.SDK_INT < 24) {
            return new c(28);
        }
        e.a(new f(this, context.getApplicationContext(), 17));
        return new c(28);
    }
}

package w;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c3 extends ContextWrapper {

    /* renamed from: b, reason: collision with root package name */
    public static final Object f17041b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static ArrayList f17042c;

    /* renamed from: a, reason: collision with root package name */
    public final e3 f17043a;

    public c3(Context context) {
        super(context);
        int i10 = s3.f17257b;
        this.f17043a = new e3(this, context.getResources());
    }

    public static Context a(Context context) {
        if (!(context instanceof c3) && !(context.getResources() instanceof e3)) {
            context.getResources();
            if (Build.VERSION.SDK_INT < 21) {
                synchronized (f17041b) {
                    try {
                        ArrayList arrayList = f17042c;
                        if (arrayList == null) {
                            f17042c = new ArrayList();
                        } else {
                            for (int size = arrayList.size() - 1; size >= 0; size--) {
                                WeakReference weakReference = (WeakReference) f17042c.get(size);
                                if (weakReference == null || weakReference.get() == null) {
                                    f17042c.remove(size);
                                }
                            }
                            for (int size2 = f17042c.size() - 1; size2 >= 0; size2--) {
                                WeakReference weakReference2 = (WeakReference) f17042c.get(size2);
                                c3 c3Var = weakReference2 != null ? (c3) weakReference2.get() : null;
                                if (c3Var != null && c3Var.getBaseContext() == context) {
                                    return c3Var;
                                }
                            }
                        }
                        c3 c3Var2 = new c3(context);
                        f17042c.add(new WeakReference(c3Var2));
                        return c3Var2;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            int i10 = s3.f17257b;
        }
        return context;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return this.f17043a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        return this.f17043a;
    }
}

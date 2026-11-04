package q;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class c0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final View f12796a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12797b;

    /* renamed from: c, reason: collision with root package name */
    public Method f12798c;

    /* renamed from: d, reason: collision with root package name */
    public Context f12799d;

    public c0(View view, String str) {
        this.f12796a = view;
        this.f12797b = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        String str;
        Method method;
        if (this.f12798c == null) {
            View view2 = this.f12796a;
            Context context = view2.getContext();
            while (true) {
                String str2 = this.f12797b;
                if (context == null) {
                    int id2 = view2.getId();
                    if (id2 == -1) {
                        str = "";
                    } else {
                        str = " with id '" + view2.getContext().getResources().getResourceEntryName(id2) + "'";
                    }
                    StringBuilder sbD = da.b.d("Could not find method ", str2, "(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                    sbD.append(view2.getClass());
                    sbD.append(str);
                    throw new IllegalStateException(sbD.toString());
                }
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(str2, View.class)) != null) {
                        this.f12798c = method;
                        this.f12799d = context;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
        }
        try {
            this.f12798c.invoke(this.f12799d, view);
        } catch (IllegalAccessException e7) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e7);
        } catch (InvocationTargetException e10) {
            throw new IllegalStateException("Could not execute method for android:onClick", e10);
        }
    }
}

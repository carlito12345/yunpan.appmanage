package q;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.lang.reflect.Constructor;
import w.b1;

/* loaded from: classes.dex */
public class d0 {

    /* renamed from: b, reason: collision with root package name */
    public static final Class[] f12800b = {Context.class, AttributeSet.class};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f12801c = {R.attr.onClick};

    /* renamed from: d, reason: collision with root package name */
    public static final int[] f12802d = {R.attr.accessibilityHeading};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f12803e = {R.attr.accessibilityPaneTitle};

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f12804f = {R.attr.screenReaderFocusable};

    /* renamed from: g, reason: collision with root package name */
    public static final String[] f12805g = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: h, reason: collision with root package name */
    public static final a0.t f12806h = new a0.t(0);

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f12807a = new Object[2];

    public w.n a(Context context, AttributeSet attributeSet) {
        return new w.n(context, attributeSet);
    }

    public w.o b(Context context, AttributeSet attributeSet) {
        return new w.o(context, attributeSet, com.yunpan.appmanage.R.attr.buttonStyle);
    }

    public w.p c(Context context, AttributeSet attributeSet) {
        return new w.p(context, attributeSet, com.yunpan.appmanage.R.attr.checkboxStyle);
    }

    public w.c0 d(Context context, AttributeSet attributeSet) {
        return new w.c0(context, attributeSet);
    }

    public b1 e(Context context, AttributeSet attributeSet) {
        return new b1(context, attributeSet);
    }

    public final View f(Context context, String str, String str2) throws NoSuchMethodException, SecurityException {
        String strConcat;
        a0.t tVar = f12806h;
        Constructor constructor = (Constructor) tVar.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    strConcat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                strConcat = str;
            }
            constructor = Class.forName(strConcat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f12800b);
            tVar.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f12807a);
    }
}

package x0;

import android.view.View;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public abstract class w1 {

    /* renamed from: a, reason: collision with root package name */
    public static final Field f18061a;

    /* renamed from: b, reason: collision with root package name */
    public static final Field f18062b;

    /* renamed from: c, reason: collision with root package name */
    public static final Field f18063c;

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f18064d;

    static {
        try {
            Field declaredField = View.class.getDeclaredField("mAttachInfo");
            f18061a = declaredField;
            declaredField.setAccessible(true);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            Field declaredField2 = cls.getDeclaredField("mStableInsets");
            f18062b = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = cls.getDeclaredField("mContentInsets");
            f18063c = declaredField3;
            declaredField3.setAccessible(true);
            f18064d = true;
        } catch (ReflectiveOperationException e7) {
            e7.getMessage();
        }
    }
}

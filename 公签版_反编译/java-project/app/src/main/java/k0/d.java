package k0;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class d extends ViewGroup.MarginLayoutParams {

    /* renamed from: a, reason: collision with root package name */
    public a f9998a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f9999b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10000c;

    /* renamed from: d, reason: collision with root package name */
    public final int f10001d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10002e;

    /* renamed from: f, reason: collision with root package name */
    public final int f10003f;

    /* renamed from: g, reason: collision with root package name */
    public final int f10004g;

    /* renamed from: h, reason: collision with root package name */
    public int f10005h;

    /* renamed from: i, reason: collision with root package name */
    public int f10006i;

    /* renamed from: j, reason: collision with root package name */
    public int f10007j;

    /* renamed from: k, reason: collision with root package name */
    public View f10008k;
    public View l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f10009m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f10010n;

    /* renamed from: o, reason: collision with root package name */
    public final Rect f10011o;

    public d() {
        super(-2, -2);
        this.f9999b = false;
        this.f10000c = 0;
        this.f10001d = 0;
        this.f10002e = -1;
        this.f10003f = -1;
        this.f10004g = 0;
        this.f10005h = 0;
        this.f10011o = new Rect();
    }

    public final boolean a(int i10) {
        if (i10 == 0) {
            return this.f10009m;
        }
        if (i10 != 1) {
            return false;
        }
        return this.f10010n;
    }

    public d(Context context, AttributeSet attributeSet) throws NoSuchMethodException, SecurityException {
        a aVar;
        super(context, attributeSet);
        this.f9999b = false;
        this.f10000c = 0;
        this.f10001d = 0;
        this.f10002e = -1;
        this.f10003f = -1;
        this.f10004g = 0;
        this.f10005h = 0;
        this.f10011o = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j0.a.f9617b);
        this.f10000c = typedArrayObtainStyledAttributes.getInteger(0, 0);
        this.f10003f = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.f10001d = typedArrayObtainStyledAttributes.getInteger(2, 0);
        this.f10002e = typedArrayObtainStyledAttributes.getInteger(6, -1);
        this.f10004g = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.f10005h = typedArrayObtainStyledAttributes.getInt(4, 0);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(3);
        this.f9999b = zHasValue;
        if (zHasValue) {
            String string = typedArrayObtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.f1032v;
            if (TextUtils.isEmpty(string)) {
                aVar = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f1032v;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.f1034x;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.f1033w);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    aVar = (a) constructor.newInstance(context, attributeSet);
                } catch (Exception e7) {
                    throw new RuntimeException(da.b.c("Could not inflate Behavior subclass ", string), e7);
                }
            }
            this.f9998a = aVar;
        }
        typedArrayObtainStyledAttributes.recycle();
        a aVar2 = this.f9998a;
        if (aVar2 != null) {
            aVar2.c(this);
        }
    }

    public d(d dVar) {
        super((ViewGroup.MarginLayoutParams) dVar);
        this.f9999b = false;
        this.f10000c = 0;
        this.f10001d = 0;
        this.f10002e = -1;
        this.f10003f = -1;
        this.f10004g = 0;
        this.f10005h = 0;
        this.f10011o = new Rect();
    }

    public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f9999b = false;
        this.f10000c = 0;
        this.f10001d = 0;
        this.f10002e = -1;
        this.f10003f = -1;
        this.f10004g = 0;
        this.f10005h = 0;
        this.f10011o = new Rect();
    }

    public d(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f9999b = false;
        this.f10000c = 0;
        this.f10001d = 0;
        this.f10002e = -1;
        this.f10003f = -1;
        this.f10004g = 0;
        this.f10005h = 0;
        this.f10011o = new Rect();
    }
}

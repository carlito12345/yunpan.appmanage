package x0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class b1 {

    /* renamed from: a, reason: collision with root package name */
    public static WeakHashMap f17953a;

    /* renamed from: b, reason: collision with root package name */
    public static WeakHashMap f17954b;

    /* renamed from: c, reason: collision with root package name */
    public static Field f17955c;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f17956d;

    /* renamed from: e, reason: collision with root package name */
    public static ThreadLocal f17957e;

    /* renamed from: f, reason: collision with root package name */
    public static final int[] f17958f;

    /* renamed from: g, reason: collision with root package name */
    public static final f0 f17959g;

    /* renamed from: h, reason: collision with root package name */
    public static final h0 f17960h;

    /* JADX WARN: Type inference failed for: r0v5, types: [x0.f0] */
    static {
        new AtomicInteger(1);
        f17954b = null;
        f17956d = false;
        f17958f = new int[]{R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
        f17959g = new z() { // from class: x0.f0
            @Override // x0.z
            public final i a(i iVar) {
                return iVar;
            }
        };
        f17960h = new h0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void A(View view, ColorStateList colorStateList) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 21) {
            if (view instanceof e0) {
                ((e0) view).setSupportBackgroundTintList(colorStateList);
                return;
            }
            return;
        }
        p0.q(view, colorStateList);
        if (i10 == 21) {
            Drawable background = view.getBackground();
            boolean z = (p0.g(view) == null && p0.h(view) == null) ? false : true;
            if (background == null || !z) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            j0.q(view, background);
        }
    }

    public static void B(View view, int i10) {
        if (Build.VERSION.SDK_INT >= 19) {
            j0.s(view, i10);
            return;
        }
        if (i10 == 4) {
            i10 = 2;
        }
        j0.s(view, i10);
    }

    public static void C(View view, x xVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            p0.u(view, xVar);
        }
    }

    public static void D(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            p0.v(view, str);
            return;
        }
        if (f17953a == null) {
            f17953a = new WeakHashMap();
        }
        f17953a.put(view, str);
    }

    public static void E(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static l1 a(View view) {
        if (f17954b == null) {
            f17954b = new WeakHashMap();
        }
        l1 l1Var = (l1) f17954b.get(view);
        if (l1Var != null) {
            return l1Var;
        }
        l1 l1Var2 = new l1(view);
        f17954b.put(view, l1Var2);
        return l1Var2;
    }

    public static j2 b(View view, j2 j2Var) {
        WindowInsets windowInsetsG;
        if (Build.VERSION.SDK_INT >= 21 && (windowInsetsG = j2Var.g()) != null) {
            WindowInsets windowInsetsA = n0.a(view, windowInsetsG);
            if (!windowInsetsA.equals(windowInsetsG)) {
                return j2.h(view, windowInsetsA);
            }
        }
        return j2Var;
    }

    public static boolean c(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        ArrayList arrayList = a1.f17947d;
        a1 a1Var = (a1) view.getTag(R.id.tag_unhandled_key_event_manager);
        if (a1Var == null) {
            a1Var = new a1();
            view.setTag(R.id.tag_unhandled_key_event_manager, a1Var);
        }
        if (keyEvent.getAction() == 0) {
            WeakHashMap weakHashMap = a1Var.f17948a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList arrayList2 = a1.f17947d;
            if (!arrayList2.isEmpty()) {
                synchronized (arrayList2) {
                    try {
                        if (a1Var.f17948a == null) {
                            a1Var.f17948a = new WeakHashMap();
                        }
                        for (int size = arrayList2.size() - 1; size >= 0; size--) {
                            ArrayList arrayList3 = a1.f17947d;
                            View view2 = (View) ((WeakReference) arrayList3.get(size)).get();
                            if (view2 == null) {
                                arrayList3.remove(size);
                            } else {
                                a1Var.f17948a.put(view2, Boolean.TRUE);
                                for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                    a1Var.f17948a.put((View) parent, Boolean.TRUE);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
        }
        View viewA = a1Var.a(view);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (viewA != null && !KeyEvent.isModifierKey(keyCode)) {
                if (a1Var.f17949b == null) {
                    a1Var.f17949b = new SparseArray();
                }
                a1Var.f17949b.put(keyCode, new WeakReference(viewA));
            }
        }
        return viewA != null;
    }

    public static View.AccessibilityDelegate d(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return v0.a(view);
        }
        if (f17956d) {
            return null;
        }
        if (f17955c == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f17955c = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f17956d = true;
                return null;
            }
        }
        try {
            Object obj = f17955c.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f17956d = true;
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CharSequence e(View view) {
        Object tag;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            tag = u0.b(view);
        } else if (i10 >= 19) {
            tag = view.getTag(R.id.tag_accessibility_pane_title);
            if (!CharSequence.class.isInstance(tag)) {
                tag = null;
            }
        }
        return (CharSequence) tag;
    }

    public static ArrayList f(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(R.id.tag_accessibility_actions, arrayList2);
        return arrayList2;
    }

    public static float g(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return p0.i(view);
        }
        return 0.0f;
    }

    public static Rect h() {
        if (f17957e == null) {
            f17957e = new ThreadLocal();
        }
        Rect rect = (Rect) f17957e.get();
        if (rect == null) {
            rect = new Rect();
            f17957e.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static String[] i(w.u uVar) {
        return Build.VERSION.SDK_INT >= 31 ? x0.a(uVar) : (String[]) uVar.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static j2 j(View view) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 23) {
            return q0.a(view);
        }
        if (i10 >= 21) {
            return p0.j(view);
        }
        return null;
    }

    public static String k(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return p0.k(view);
        }
        WeakHashMap weakHashMap = f17953a;
        if (weakHashMap == null) {
            return null;
        }
        return (String) weakHashMap.get(view);
    }

    public static boolean l(View view) {
        return Build.VERSION.SDK_INT >= 19 ? m0.b(view) : view.getWindowToken() != null;
    }

    public static boolean m(View view) {
        return Build.VERSION.SDK_INT >= 19 ? m0.c(view) : view.getWidth() > 0 && view.getHeight() > 0;
    }

    public static void n(int i10, View view) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z = e(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if ((Build.VERSION.SDK_INT >= 19 ? m0.a(view) : 0) != 0 || z) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z ? 32 : 2048);
                m0.g(accessibilityEventObtain, i10);
                if (z) {
                    accessibilityEventObtain.getText().add(e(view));
                    if (j0.c(view) == 0) {
                        B(view, 1);
                    }
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i10 != 32) {
                if (view.getParent() != null) {
                    try {
                        m0.e(view.getParent(), view, view, i10);
                        return;
                    } catch (AbstractMethodError unused) {
                        view.getParent().getClass();
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
            view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.setEventType(32);
            m0.g(accessibilityEventObtain2, i10);
            accessibilityEventObtain2.setSource(view);
            view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
            accessibilityEventObtain2.getText().add(e(view));
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
        }
    }

    public static void o(int i10, View view) {
        boolean z;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 23) {
            view.offsetLeftAndRight(i10);
            return;
        }
        if (i11 < 21) {
            view.offsetLeftAndRight(i10);
            if (view.getVisibility() == 0) {
                E(view);
                Object parent = view.getParent();
                if (parent instanceof View) {
                    E((View) parent);
                    return;
                }
                return;
            }
            return;
        }
        Rect rectH = h();
        Object parent2 = view.getParent();
        if (parent2 instanceof View) {
            View view2 = (View) parent2;
            rectH.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectH.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetLeftAndRight(i10);
        if (view.getVisibility() == 0) {
            E(view);
            Object parent3 = view.getParent();
            if (parent3 instanceof View) {
                E((View) parent3);
            }
        }
        if (z && rectH.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent2).invalidate(rectH);
        }
    }

    public static void p(int i10, View view) {
        boolean z;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 23) {
            view.offsetTopAndBottom(i10);
            return;
        }
        if (i11 < 21) {
            view.offsetTopAndBottom(i10);
            if (view.getVisibility() == 0) {
                E(view);
                Object parent = view.getParent();
                if (parent instanceof View) {
                    E((View) parent);
                    return;
                }
                return;
            }
            return;
        }
        Rect rectH = h();
        Object parent2 = view.getParent();
        if (parent2 instanceof View) {
            View view2 = (View) parent2;
            rectH.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectH.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        view.offsetTopAndBottom(i10);
        if (view.getVisibility() == 0) {
            E(view);
            Object parent3 = view.getParent();
            if (parent3 instanceof View) {
                E((View) parent3);
            }
        }
        if (z && rectH.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent2).invalidate(rectH);
        }
    }

    public static j2 q(View view, j2 j2Var) {
        WindowInsets windowInsetsG;
        if (Build.VERSION.SDK_INT >= 21 && (windowInsetsG = j2Var.g()) != null) {
            WindowInsets windowInsetsB = n0.b(view, windowInsetsG);
            if (!windowInsetsB.equals(windowInsetsG)) {
                return j2.h(view, windowInsetsB);
            }
        }
        return j2Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static i r(View view, i iVar) {
        if (Log.isLoggable("ViewCompat", 3)) {
            if (iVar != null) {
                iVar.toString();
            }
            view.getClass();
            view.getId();
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return x0.b(view, iVar);
        }
        y yVar = (y) view.getTag(R.id.tag_on_receive_content_listener);
        z zVar = f17959g;
        if (yVar == null) {
            if (view instanceof z) {
                zVar = (z) view;
            }
            return zVar.a(iVar);
        }
        i iVarA = ((b1.v) yVar).a(view, iVar);
        if (iVarA == null) {
            return null;
        }
        if (view instanceof z) {
            zVar = (z) view;
        }
        return zVar.a(iVarA);
    }

    public static void s(int i10, View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            t(i10, view);
            n(0, view);
        }
    }

    public static void t(int i10, View view) {
        ArrayList arrayListF = f(view);
        for (int i11 = 0; i11 < arrayListF.size(); i11++) {
            if (((y0.f) arrayListF.get(i11)).a() == i10) {
                arrayListF.remove(i11);
                return;
            }
        }
    }

    public static void u(View view, y0.f fVar, y0.a0 a0Var) {
        y0.f fVar2 = new y0.f(null, fVar.f18544b, null, a0Var, fVar.f18545c);
        if (Build.VERSION.SDK_INT >= 21) {
            View.AccessibilityDelegate accessibilityDelegateD = d(view);
            c cVar = accessibilityDelegateD == null ? null : accessibilityDelegateD instanceof a ? ((a) accessibilityDelegateD).f17943a : new c(accessibilityDelegateD);
            if (cVar == null) {
                cVar = new c();
            }
            x(view, cVar);
            t(fVar2.a(), view);
            f(view).add(fVar2);
            n(0, view);
        }
    }

    public static void v(View view) {
        if (Build.VERSION.SDK_INT >= 20) {
            n0.c(view);
        } else {
            j0.p(view);
        }
    }

    public static void w(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i10) {
        if (Build.VERSION.SDK_INT >= 29) {
            v0.d(view, context, iArr, attributeSet, typedArray, i10, 0);
        }
    }

    public static void x(View view, c cVar) {
        if (cVar == null && (d(view) instanceof a)) {
            cVar = new c();
        }
        if (j0.c(view) == 0) {
            B(view, 1);
        }
        view.setAccessibilityDelegate(cVar == null ? null : cVar.f17972b);
    }

    public static void y(TextView textView, int i10) {
        if (Build.VERSION.SDK_INT >= 19) {
            m0.f(textView, i10);
        }
    }

    public static void z(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            new g0(1).f(view, charSequence);
            h0 h0Var = f17960h;
            if (charSequence == null) {
                h0Var.f17998a.remove(view);
                view.removeOnAttachStateChangeListener(h0Var);
                j0.o(view.getViewTreeObserver(), h0Var);
            } else {
                h0Var.f17998a.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
                view.addOnAttachStateChangeListener(h0Var);
                if (m0.b(view)) {
                    view.getViewTreeObserver().addOnGlobalLayoutListener(h0Var);
                }
            }
        }
    }
}

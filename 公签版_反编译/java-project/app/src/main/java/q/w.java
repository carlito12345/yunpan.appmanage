package q;

import a2.w0;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.PopupWindow;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ViewStubCompat;
import com.yunpan.appmanage.R;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import x0.b1;
import x0.l1;

/* loaded from: classes.dex */
public final class w implements Window.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final Window.Callback f12893a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f12894b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12895c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f12896d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ a0 f12897e;

    public w(a0 a0Var, Window.Callback callback) {
        this.f12897e = a0Var;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.f12893a = callback;
    }

    public final void a(Window.Callback callback) {
        try {
            this.f12894b = true;
            callback.onContentChanged();
        } finally {
            this.f12894b = false;
        }
    }

    public final boolean b(int i10, Menu menu) {
        return this.f12893a.onMenuOpened(i10, menu);
    }

    public final void c(int i10, Menu menu) {
        this.f12893a.onPanelClosed(i10, menu);
    }

    public final void d(List list, Menu menu, int i10) {
        u.m.a(this.f12893a, list, menu, i10);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f12893a.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z = this.f12895c;
        Window.Callback callback = this.f12893a;
        return z ? callback.dispatchKeyEvent(keyEvent) : this.f12897e.s(keyEvent) || callback.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003d  */
    @Override // android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        boolean z;
        v.k kVar;
        boolean zPerformShortcut;
        if (this.f12893a.dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        a0 a0Var = this.f12897e;
        a0Var.z();
        m0 m0Var = a0Var.f12770p;
        if (m0Var == null) {
            z zVar = a0Var.P;
            if (zVar == null || !a0Var.E(zVar, keyEvent.getKeyCode(), keyEvent)) {
                if (a0Var.P == null) {
                    z zVarY = a0Var.y(0);
                    a0Var.F(zVarY, keyEvent);
                    boolean zE = a0Var.E(zVarY, keyEvent.getKeyCode(), keyEvent);
                    zVarY.f12912k = false;
                    if (zE) {
                    }
                }
                z = false;
            } else {
                z zVar2 = a0Var.P;
                if (zVar2 != null) {
                    zVar2.l = true;
                }
            }
            z = true;
        } else {
            l0 l0Var = m0Var.f12872j;
            if (l0Var == null || (kVar = l0Var.f12851d) == null) {
                zPerformShortcut = false;
            } else {
                kVar.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
                zPerformShortcut = kVar.performShortcut(keyCode, keyEvent, 0);
            }
            if (zPerformShortcut) {
                z = true;
            }
        }
        return z;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f12893a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f12893a.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f12893a.dispatchTrackballEvent(motionEvent);
    }

    public final u.f e(ActionMode.Callback callback) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ViewGroup viewGroup;
        a0 a0Var = this.f12897e;
        w0 w0Var = new w0(a0Var.f12767k, callback);
        u.a aVar = a0Var.f12776w;
        if (aVar != null) {
            aVar.a();
        }
        kf.d dVar = new kf.d(9, a0Var, w0Var, false);
        a0Var.z();
        m0 m0Var = a0Var.f12770p;
        if (m0Var != null) {
            l0 l0Var = m0Var.f12872j;
            if (l0Var != null) {
                l0Var.a();
            }
            m0Var.f12866d.setHideOnContentScrollEnabled(false);
            m0Var.f12869g.e();
            l0 l0Var2 = new l0(m0Var, m0Var.f12869g.getContext(), dVar);
            v.k kVar = l0Var2.f12851d;
            kVar.w();
            try {
                if (((w0) l0Var2.f12852e.f10286b).S(l0Var2, kVar)) {
                    m0Var.f12872j = l0Var2;
                    l0Var2.i();
                    m0Var.f12869g.c(l0Var2);
                    m0Var.k0(true);
                } else {
                    l0Var2 = null;
                }
                a0Var.f12776w = l0Var2;
            } finally {
                kVar.v();
            }
        }
        if (a0Var.f12776w == null) {
            l1 l1Var = a0Var.A;
            if (l1Var != null) {
                l1Var.b();
            }
            u.a aVar2 = a0Var.f12776w;
            if (aVar2 != null) {
                aVar2.a();
            }
            if (a0Var.f12777x == null) {
                boolean z = a0Var.L;
                Context context = a0Var.f12767k;
                if (z) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = context.getTheme();
                    theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = context.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        u.d dVar2 = new u.d(context, 0);
                        dVar2.getTheme().setTo(themeNewTheme);
                        context = dVar2;
                    }
                    a0Var.f12777x = new ActionBarContextView(context, null);
                    PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, R.attr.actionModePopupWindowStyle);
                    a0Var.f12778y = popupWindow;
                    com.bumptech.glide.d.g0(popupWindow, 2);
                    a0Var.f12778y.setContentView(a0Var.f12777x);
                    a0Var.f12778y.setWidth(-1);
                    context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                    a0Var.f12777x.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                    a0Var.f12778y.setHeight(-2);
                    a0Var.z = new o(a0Var, 1);
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) a0Var.C.findViewById(R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        a0Var.z();
                        m0 m0Var2 = a0Var.f12770p;
                        Context contextL0 = m0Var2 != null ? m0Var2.l0() : null;
                        if (contextL0 != null) {
                            context = contextL0;
                        }
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                        a0Var.f12777x = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (a0Var.f12777x != null) {
                l1 l1Var2 = a0Var.A;
                if (l1Var2 != null) {
                    l1Var2.b();
                }
                a0Var.f12777x.e();
                u.e eVar = new u.e(a0Var.f12777x.getContext(), a0Var.f12777x, dVar);
                if (((w0) dVar.f10286b).S(eVar, eVar.f15116h)) {
                    eVar.i();
                    a0Var.f12777x.c(eVar);
                    a0Var.f12776w = eVar;
                    if (a0Var.B && (viewGroup = a0Var.C) != null && b1.m(viewGroup)) {
                        a0Var.f12777x.setAlpha(0.0f);
                        l1 l1VarA = b1.a(a0Var.f12777x);
                        l1VarA.a(1.0f);
                        a0Var.A = l1VarA;
                        l1VarA.d(new q(1, a0Var));
                    } else {
                        a0Var.f12777x.setAlpha(1.0f);
                        a0Var.f12777x.setVisibility(0);
                        if (a0Var.f12777x.getParent() instanceof View) {
                            b1.v((View) a0Var.f12777x.getParent());
                        }
                    }
                    if (a0Var.f12778y != null) {
                        a0Var.l.getDecorView().post(a0Var.z);
                    }
                } else {
                    a0Var.f12776w = null;
                }
            }
            a0Var.H();
            a0Var.f12776w = a0Var.f12776w;
        }
        a0Var.H();
        u.a aVar3 = a0Var.f12776w;
        if (aVar3 != null) {
            return w0Var.G(aVar3);
        }
        return null;
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.f12893a.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.f12893a.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.f12893a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.f12894b) {
            this.f12893a.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i10, Menu menu) {
        if (i10 != 0 || (menu instanceof v.k)) {
            return this.f12893a.onCreatePanelMenu(i10, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i10) {
        return this.f12893a.onCreatePanelView(i10);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f12893a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i10, MenuItem menuItem) {
        return this.f12893a.onMenuItemSelected(i10, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i10, Menu menu) {
        b(i10, menu);
        a0 a0Var = this.f12897e;
        if (i10 == 108) {
            a0Var.z();
            m0 m0Var = a0Var.f12770p;
            if (m0Var != null && true != m0Var.f12874m) {
                m0Var.f12874m = true;
                ArrayList arrayList = m0Var.f12875n;
                if (arrayList.size() > 0) {
                    arrayList.get(0).getClass();
                    throw new ClassCastException();
                }
            }
        } else {
            a0Var.getClass();
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i10, Menu menu) {
        if (this.f12896d) {
            this.f12893a.onPanelClosed(i10, menu);
            return;
        }
        c(i10, menu);
        a0 a0Var = this.f12897e;
        if (i10 != 108) {
            if (i10 != 0) {
                a0Var.getClass();
                return;
            }
            z zVarY = a0Var.y(i10);
            if (zVarY.f12913m) {
                a0Var.q(zVarY, false);
                return;
            }
            return;
        }
        a0Var.z();
        m0 m0Var = a0Var.f12770p;
        if (m0Var == null || !m0Var.f12874m) {
            return;
        }
        m0Var.f12874m = false;
        ArrayList arrayList = m0Var.f12875n;
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    @Override // android.view.Window.Callback
    public final void onPointerCaptureChanged(boolean z) {
        u.n.a(this.f12893a, z);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i10, View view, Menu menu) {
        v.k kVar = menu instanceof v.k ? (v.k) menu : null;
        if (i10 == 0 && kVar == null) {
            return false;
        }
        if (kVar != null) {
            kVar.z = true;
        }
        boolean zOnPreparePanel = this.f12893a.onPreparePanel(i10, view, menu);
        if (kVar != null) {
            kVar.z = false;
        }
        return zOnPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i10) {
        v.k kVar = this.f12897e.y(0).f12909h;
        if (kVar != null) {
            d(list, kVar, i10);
        } else {
            d(list, menu, i10);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return u.l.a(this.f12893a, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f12893a.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        this.f12893a.onWindowFocusChanged(z);
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i10) {
        this.f12897e.getClass();
        return i10 != 0 ? u.l.b(this.f12893a, callback, i10) : e(callback);
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.f12893a.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        if (Build.VERSION.SDK_INT >= 23) {
            return null;
        }
        this.f12897e.getClass();
        return e(callback);
    }
}

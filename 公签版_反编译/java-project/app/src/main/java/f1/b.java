package f1;

import a0.u;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.chip.Chip;
import gf.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
import m7.e;
import w.i;
import x0.b1;
import x0.j0;
import x0.k0;
import y0.n;
import y0.s;

/* loaded from: classes.dex */
public abstract class b extends x0.c {

    /* renamed from: n, reason: collision with root package name */
    public static final Rect f5157n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: o, reason: collision with root package name */
    public static final e f5158o = new e(20);

    /* renamed from: p, reason: collision with root package name */
    public static final g f5159p = new g(21);

    /* renamed from: h, reason: collision with root package name */
    public final AccessibilityManager f5164h;

    /* renamed from: i, reason: collision with root package name */
    public final Chip f5165i;

    /* renamed from: j, reason: collision with root package name */
    public a f5166j;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f5160d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public final Rect f5161e = new Rect();

    /* renamed from: f, reason: collision with root package name */
    public final Rect f5162f = new Rect();

    /* renamed from: g, reason: collision with root package name */
    public final int[] f5163g = new int[2];

    /* renamed from: k, reason: collision with root package name */
    public int f5167k = Integer.MIN_VALUE;
    public int l = Integer.MIN_VALUE;

    /* renamed from: m, reason: collision with root package name */
    public int f5168m = Integer.MIN_VALUE;

    public b(Chip chip) {
        if (chip == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f5165i = chip;
        this.f5164h = (AccessibilityManager) chip.getContext().getSystemService("accessibility");
        chip.setFocusable(true);
        WeakHashMap weakHashMap = b1.f17953a;
        if (j0.c(chip) == 0) {
            b1.B(chip, 1);
        }
    }

    @Override // x0.c
    public final i b(View view) {
        if (this.f5166j == null) {
            this.f5166j = new a(this);
        }
        return this.f5166j;
    }

    @Override // x0.c
    public final void d(View view, n nVar) {
        View.AccessibilityDelegate accessibilityDelegate = this.f17971a;
        AccessibilityNodeInfo accessibilityNodeInfo = nVar.f18549a;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        Chip chip = ((b7.d) this).f2584q;
        accessibilityNodeInfo.setCheckable(chip.d());
        accessibilityNodeInfo.setClickable(chip.isClickable());
        nVar.j(chip.getAccessibilityClassName());
        CharSequence text = chip.getText();
        if (Build.VERSION.SDK_INT >= 23) {
            nVar.o(text);
        } else {
            accessibilityNodeInfo.setContentDescription(text);
        }
    }

    public final boolean j(int i10) {
        if (this.l != i10) {
            return false;
        }
        this.l = Integer.MIN_VALUE;
        b7.d dVar = (b7.d) this;
        if (i10 == 1) {
            Chip chip = dVar.f2584q;
            chip.f3523m = false;
            chip.refreshDrawableState();
        }
        q(i10, 8);
        return true;
    }

    public final n k(int i10) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
        n nVar = new n(accessibilityNodeInfoObtain);
        accessibilityNodeInfoObtain.setEnabled(true);
        accessibilityNodeInfoObtain.setFocusable(true);
        nVar.j("android.view.View");
        Rect rect = f5157n;
        accessibilityNodeInfoObtain.setBoundsInParent(rect);
        accessibilityNodeInfoObtain.setBoundsInScreen(rect);
        Chip chip = this.f5165i;
        accessibilityNodeInfoObtain.setParent(chip);
        o(i10, nVar);
        if (nVar.h() == null && accessibilityNodeInfoObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.f5161e;
        nVar.f(rect2);
        if (rect2.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = accessibilityNodeInfoObtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoObtain.setPackageName(chip.getContext().getPackageName());
        nVar.f18550b = i10;
        accessibilityNodeInfoObtain.setSource(chip, i10);
        if (this.f5167k == i10) {
            accessibilityNodeInfoObtain.setAccessibilityFocused(true);
            nVar.a(128);
        } else {
            accessibilityNodeInfoObtain.setAccessibilityFocused(false);
            nVar.a(64);
        }
        boolean z = this.l == i10;
        if (z) {
            nVar.a(2);
        } else if (accessibilityNodeInfoObtain.isFocusable()) {
            nVar.a(1);
        }
        accessibilityNodeInfoObtain.setFocused(z);
        int[] iArr = this.f5163g;
        chip.getLocationOnScreen(iArr);
        Rect rect3 = this.f5160d;
        accessibilityNodeInfoObtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            nVar.f(rect3);
            rect3.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
        }
        Rect rect4 = this.f5162f;
        if (chip.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
            if (rect3.intersect(rect4)) {
                accessibilityNodeInfoObtain.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && chip.getWindowVisibility() == 0) {
                    Object parent = chip.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view = (View) parent;
                            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                                break;
                            }
                            parent = view.getParent();
                        } else if (parent != null) {
                            accessibilityNodeInfoObtain.setVisibleToUser(true);
                        }
                    }
                }
            }
        }
        return nVar;
    }

    public abstract void l(ArrayList arrayList);

    /* JADX WARN: Removed duplicated region for block: B:40:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m(int i10, Rect rect) {
        Object obj;
        n nVar;
        int i11;
        int i12;
        int i13;
        ArrayList arrayList = new ArrayList();
        l(arrayList);
        u uVar = new u();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            uVar.d(((Integer) arrayList.get(i14)).intValue(), k(((Integer) arrayList.get(i14)).intValue()));
        }
        int i15 = this.l;
        int i16 = Integer.MIN_VALUE;
        n nVar2 = i15 == Integer.MIN_VALUE ? null : (n) uVar.c(i15);
        e eVar = f5158o;
        g gVar = f5159p;
        Chip chip = this.f5165i;
        if (i10 == 1 || i10 == 2) {
            WeakHashMap weakHashMap = b1.f17953a;
            boolean z = k0.d(chip) == 1;
            gVar.getClass();
            int i17 = uVar.f68c;
            ArrayList arrayList2 = new ArrayList(i17);
            for (int i18 = 0; i18 < i17; i18++) {
                arrayList2.add((n) uVar.e(i18));
            }
            Collections.sort(arrayList2, new c(z, eVar));
            if (i10 == 1) {
                int size = arrayList2.size();
                if (nVar2 != null) {
                    size = arrayList2.indexOf(nVar2);
                }
                int i19 = size - 1;
                if (i19 >= 0) {
                    obj = arrayList2.get(i19);
                }
                nVar = (n) obj;
            } else {
                if (i10 != 2) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
                }
                int size2 = arrayList2.size();
                int iLastIndexOf = (nVar2 == null ? -1 : arrayList2.lastIndexOf(nVar2)) + 1;
                obj = iLastIndexOf < size2 ? arrayList2.get(iLastIndexOf) : null;
                nVar = (n) obj;
            }
        } else {
            if (i10 != 17 && i10 != 33 && i10 != 66 && i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i20 = this.l;
            if (i20 != Integer.MIN_VALUE) {
                n(i20).f(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                int width = chip.getWidth();
                int height = chip.getHeight();
                if (i10 == 17) {
                    rect2.set(width, 0, width, height);
                } else if (i10 == 33) {
                    rect2.set(0, height, width, height);
                } else if (i10 == 66) {
                    rect2.set(-1, 0, -1, height);
                } else {
                    if (i10 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    rect2.set(0, -1, width, -1);
                }
                Rect rect3 = new Rect(rect2);
                if (i10 != 17) {
                    rect3.offset(rect2.width() + 1, 0);
                } else if (i10 == 33) {
                    rect3.offset(0, rect2.height() + 1);
                } else if (i10 == 66) {
                    rect3.offset(-(rect2.width() + 1), 0);
                } else {
                    if (i10 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    rect3.offset(0, -(rect2.height() + 1));
                }
                gVar.getClass();
                i12 = uVar.f68c;
                Rect rect4 = new Rect();
                nVar = null;
                for (i13 = 0; i13 < i12; i13++) {
                    n nVar3 = (n) uVar.e(i13);
                    if (nVar3 != nVar2) {
                        eVar.getClass();
                        nVar3.f(rect4);
                        if (s1.g.J(i10, rect2, rect4)) {
                            if (s1.g.J(i10, rect2, rect3) && !s1.g.f(i10, rect2, rect4, rect3)) {
                                if (!s1.g.f(i10, rect2, rect3, rect4)) {
                                    int iM = s1.g.M(i10, rect2, rect4);
                                    int iN = s1.g.N(i10, rect2, rect4);
                                    int i21 = (iN * iN) + (iM * 13 * iM);
                                    int iM2 = s1.g.M(i10, rect2, rect3);
                                    int iN2 = s1.g.N(i10, rect2, rect3);
                                    if (i21 < (iN2 * iN2) + (iM2 * 13 * iM2)) {
                                        rect3.set(rect4);
                                        nVar = nVar3;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Rect rect32 = new Rect(rect2);
            if (i10 != 17) {
            }
            gVar.getClass();
            i12 = uVar.f68c;
            Rect rect42 = new Rect();
            nVar = null;
            while (i13 < i12) {
            }
        }
        n nVar4 = nVar;
        if (nVar4 != null) {
            int i22 = uVar.f68c;
            int i23 = 0;
            while (true) {
                if (i23 >= i22) {
                    i11 = -1;
                    break;
                }
                if (uVar.f67b[i23] == nVar4) {
                    i11 = i23;
                    break;
                }
                i23++;
            }
            i16 = uVar.f66a[i11];
        }
        return p(i16);
    }

    public final n n(int i10) {
        if (i10 != -1) {
            return k(i10);
        }
        Chip chip = this.f5165i;
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(chip);
        n nVar = new n(accessibilityNodeInfoObtain);
        WeakHashMap weakHashMap = b1.f17953a;
        chip.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoObtain);
        ArrayList arrayList = new ArrayList();
        l(arrayList);
        if (accessibilityNodeInfoObtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            nVar.f18549a.addChild(chip, ((Integer) arrayList.get(i11)).intValue());
        }
        return nVar;
    }

    public abstract void o(int i10, n nVar);

    public final boolean p(int i10) {
        int i11;
        Chip chip = this.f5165i;
        if ((!chip.isFocused() && !chip.requestFocus()) || (i11 = this.l) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            j(i11);
        }
        if (i10 == Integer.MIN_VALUE) {
            return false;
        }
        this.l = i10;
        b7.d dVar = (b7.d) this;
        if (i10 == 1) {
            Chip chip2 = dVar.f2584q;
            chip2.f3523m = true;
            chip2.refreshDrawableState();
        }
        q(i10, 8);
        return true;
    }

    public final void q(int i10, int i11) {
        View view;
        ViewParent parent;
        AccessibilityEvent accessibilityEventObtain;
        if (i10 == Integer.MIN_VALUE || !this.f5164h.isEnabled() || (parent = (view = this.f5165i).getParent()) == null) {
            return;
        }
        if (i10 != -1) {
            accessibilityEventObtain = AccessibilityEvent.obtain(i11);
            n nVarN = n(i10);
            accessibilityEventObtain.getText().add(nVarN.h());
            AccessibilityNodeInfo accessibilityNodeInfo = nVarN.f18549a;
            accessibilityEventObtain.setContentDescription(accessibilityNodeInfo.getContentDescription());
            accessibilityEventObtain.setScrollable(accessibilityNodeInfo.isScrollable());
            accessibilityEventObtain.setPassword(accessibilityNodeInfo.isPassword());
            accessibilityEventObtain.setEnabled(accessibilityNodeInfo.isEnabled());
            accessibilityEventObtain.setChecked(accessibilityNodeInfo.isChecked());
            if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            accessibilityEventObtain.setClassName(accessibilityNodeInfo.getClassName());
            s.a(accessibilityEventObtain, view, i10);
            accessibilityEventObtain.setPackageName(view.getContext().getPackageName());
        } else {
            accessibilityEventObtain = AccessibilityEvent.obtain(i11);
            view.onInitializeAccessibilityEvent(accessibilityEventObtain);
        }
        parent.requestSendAccessibilityEvent(view, accessibilityEventObtain);
    }
}

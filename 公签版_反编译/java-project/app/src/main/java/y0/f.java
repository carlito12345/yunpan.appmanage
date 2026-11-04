package y0;

import android.R;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: e, reason: collision with root package name */
    public static final f f18534e;

    /* renamed from: f, reason: collision with root package name */
    public static final f f18535f;

    /* renamed from: g, reason: collision with root package name */
    public static final f f18536g;

    /* renamed from: h, reason: collision with root package name */
    public static final f f18537h;

    /* renamed from: i, reason: collision with root package name */
    public static final f f18538i;

    /* renamed from: j, reason: collision with root package name */
    public static final f f18539j;

    /* renamed from: k, reason: collision with root package name */
    public static final f f18540k;
    public static final f l;

    /* renamed from: m, reason: collision with root package name */
    public static final f f18541m;

    /* renamed from: n, reason: collision with root package name */
    public static final f f18542n;

    /* renamed from: a, reason: collision with root package name */
    public final Object f18543a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18544b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f18545c;

    /* renamed from: d, reason: collision with root package name */
    public final a0 f18546d;

    static {
        new f(1);
        new f(2);
        new f(4);
        new f(8);
        f18534e = new f(16);
        new f(32);
        new f(64);
        new f(128);
        new f(t.class, 256);
        new f(t.class, 512);
        new f(u.class, 1024);
        new f(u.class, 2048);
        f18535f = new f(4096);
        f18536g = new f(8192);
        new f(16384);
        new f(32768);
        new f(65536);
        new f(y.class, 131072);
        f18537h = new f(262144);
        f18538i = new f(PKIFailureInfo.signerNotTrusted);
        f18539j = new f(1048576);
        new f(z.class, PKIFailureInfo.badSenderNonce);
        int i10 = Build.VERSION.SDK_INT;
        new f(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, R.id.accessibilityActionShowOnScreen, null, null, null);
        new f(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, R.id.accessibilityActionScrollToPosition, null, null, w.class);
        f18540k = new f(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null, null, null);
        l = new f(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, R.id.accessibilityActionScrollLeft, null, null, null);
        f18541m = new f(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, R.id.accessibilityActionScrollDown, null, null, null);
        f18542n = new f(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, R.id.accessibilityActionScrollRight, null, null, null);
        new f(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
        new f(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
        new f(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
        new f(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
        new f(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, R.id.accessibilityActionContextClick, null, null, null);
        new f(i10 >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, null, null, x.class);
        new f(i10 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, v.class);
        new f(i10 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
        new f(i10 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
        new f(i10 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
        new f(i10 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null, null, null);
        new f(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null, null, null);
        new f(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP : null, R.id.accessibilityActionDragDrop, null, null, null);
        new f(i10 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL : null, R.id.accessibilityActionDragCancel, null, null, null);
        new f(i10 >= 33 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS : null, R.id.accessibilityActionShowTextSuggestions, null, null, null);
        new f(i10 >= 34 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_IN_DIRECTION : null, R.id.accessibilityActionScrollInDirection, null, null, null);
    }

    public f(int i10) {
        this(null, i10, null, null, null);
    }

    public final int a() {
        if (Build.VERSION.SDK_INT >= 21) {
            return wa.h.g(this.f18543a).getId();
        }
        return 0;
    }

    public final CharSequence b() {
        if (Build.VERSION.SDK_INT >= 21) {
            return wa.h.g(this.f18543a).getLabel();
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof f)) {
            return false;
        }
        Object obj2 = ((f) obj).f18543a;
        Object obj3 = this.f18543a;
        return obj3 == null ? obj2 == null : obj3.equals(obj2);
    }

    public final int hashCode() {
        Object obj = this.f18543a;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("AccessibilityActionCompat: ");
        String strD = n.d(this.f18544b);
        if (strD.equals("ACTION_UNKNOWN") && b() != null) {
            strD = b().toString();
        }
        sb2.append(strD);
        return sb2.toString();
    }

    public f(Class cls, int i10) {
        this(null, i10, null, null, cls);
    }

    public f(Object obj, int i10, String str, a0 a0Var, Class cls) {
        this.f18544b = i10;
        this.f18546d = a0Var;
        if (Build.VERSION.SDK_INT >= 21 && obj == null) {
            this.f18543a = new AccessibilityNodeInfo.AccessibilityAction(i10, str);
        } else {
            this.f18543a = obj;
        }
        this.f18545c = cls;
    }
}

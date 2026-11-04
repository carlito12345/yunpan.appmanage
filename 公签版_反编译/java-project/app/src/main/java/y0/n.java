package y0;

import android.R;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: c, reason: collision with root package name */
    public static int f18548c;

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityNodeInfo f18549a;

    /* renamed from: b, reason: collision with root package name */
    public int f18550b = -1;

    public n(AccessibilityNodeInfo accessibilityNodeInfo, int i10) {
        this.f18549a = accessibilityNodeInfo;
    }

    public static String d(int i10) {
        if (i10 == 1) {
            return "ACTION_FOCUS";
        }
        if (i10 == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i10) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case PKIFailureInfo.signerNotTrusted /* 524288 */:
                return "ACTION_COLLAPSE";
            case PKIFailureInfo.badSenderNonce /* 2097152 */:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            case R.id.accessibilityActionScrollInDirection:
                return "ACTION_SCROLL_IN_DIRECTION";
            default:
                switch (i10) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i10) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                switch (i10) {
                                    case R.id.accessibilityActionImeEnter:
                                        return "ACTION_IME_ENTER";
                                    case R.id.accessibilityActionDragStart:
                                        return "ACTION_DRAG_START";
                                    case R.id.accessibilityActionDragDrop:
                                        return "ACTION_DRAG_DROP";
                                    case R.id.accessibilityActionDragCancel:
                                        return "ACTION_DRAG_CANCEL";
                                    default:
                                        return "ACTION_UNKNOWN";
                                }
                        }
                }
        }
    }

    public final void a(int i10) {
        this.f18549a.addAction(i10);
    }

    public final void b(f fVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f18549a.addAction(wa.h.g(fVar.f18543a));
        }
    }

    public final ArrayList c(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        AccessibilityNodeInfo accessibilityNodeInfo = this.f18549a;
        ArrayList<Integer> integerArrayList = g.c(accessibilityNodeInfo).getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        g.c(accessibilityNodeInfo).putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    public final boolean e(int i10) {
        Bundle bundleG = g();
        return bundleG != null && (bundleG.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i10) == i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = nVar.f18549a;
        AccessibilityNodeInfo accessibilityNodeInfo2 = this.f18549a;
        if (accessibilityNodeInfo2 == null) {
            if (accessibilityNodeInfo != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo2.equals(accessibilityNodeInfo)) {
            return false;
        }
        return this.f18550b == nVar.f18550b;
    }

    public final void f(Rect rect) {
        this.f18549a.getBoundsInParent(rect);
    }

    public final Bundle g() {
        return Build.VERSION.SDK_INT >= 19 ? g.c(this.f18549a) : new Bundle();
    }

    public final CharSequence h() {
        boolean zIsEmpty = c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
        AccessibilityNodeInfo accessibilityNodeInfo = this.f18549a;
        if (zIsEmpty) {
            return accessibilityNodeInfo.getText();
        }
        ArrayList arrayListC = c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
        ArrayList arrayListC2 = c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
        ArrayList arrayListC3 = c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
        ArrayList arrayListC4 = c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        SpannableString spannableString = new SpannableString(TextUtils.substring(accessibilityNodeInfo.getText(), 0, accessibilityNodeInfo.getText().length()));
        for (int i10 = 0; i10 < arrayListC.size(); i10++) {
            spannableString.setSpan(new a(((Integer) arrayListC4.get(i10)).intValue(), this, g().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), ((Integer) arrayListC.get(i10)).intValue(), ((Integer) arrayListC2.get(i10)).intValue(), ((Integer) arrayListC3.get(i10)).intValue());
        }
        return spannableString;
    }

    public final int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f18549a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public final void i(int i10, boolean z) {
        Bundle bundleG = g();
        if (bundleG != null) {
            int i11 = bundleG.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i10 ^ (-1));
            if (!z) {
                i10 = 0;
            }
            bundleG.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i10 | i11);
        }
    }

    public final void j(CharSequence charSequence) {
        this.f18549a.setClassName(charSequence);
    }

    public final void k(kh.h hVar) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f18549a.setCollectionInfo(hVar == null ? null : vb.b.c(hVar.f10353a));
        }
    }

    public final void l(m mVar) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f18549a.setCollectionItemInfo(vb.b.e(mVar.f18547a));
        }
    }

    public final void m(String str) {
        int i10 = Build.VERSION.SDK_INT;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f18549a;
        if (i10 >= 26) {
            accessibilityNodeInfo.setHintText(str);
        } else if (i10 >= 19) {
            g.c(accessibilityNodeInfo).putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", str);
        }
    }

    public final void n(boolean z) {
        this.f18549a.setScrollable(z);
    }

    public final void o(CharSequence charSequence) {
        this.f18549a.setText(charSequence);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v16, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.util.ArrayList] */
    public final String toString() {
        Rect rect;
        ?? EmptyList;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        Rect rect2 = new Rect();
        f(rect2);
        sb2.append("; boundsInParent: " + rect2);
        AccessibilityNodeInfo accessibilityNodeInfo = this.f18549a;
        accessibilityNodeInfo.getBoundsInScreen(rect2);
        sb2.append("; boundsInScreen: " + rect2);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 34) {
            l.a(accessibilityNodeInfo, rect2);
        } else if (i10 >= 19 && (rect = (Rect) g.c(accessibilityNodeInfo).getParcelable("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOUNDS_IN_WINDOW_KEY")) != null) {
            rect2.set(rect.left, rect.top, rect.right, rect.bottom);
        }
        sb2.append("; boundsInWindow: " + rect2);
        sb2.append("; packageName: ");
        sb2.append(accessibilityNodeInfo.getPackageName());
        sb2.append("; className: ");
        sb2.append(accessibilityNodeInfo.getClassName());
        sb2.append("; text: ");
        sb2.append(h());
        sb2.append("; error: ");
        sb2.append(i10 >= 21 ? accessibilityNodeInfo.getError() : null);
        sb2.append("; maxTextLength: ");
        sb2.append(i10 >= 21 ? accessibilityNodeInfo.getMaxTextLength() : -1);
        sb2.append("; stateDescription: ");
        sb2.append(i10 >= 30 ? h.b(accessibilityNodeInfo) : i10 >= 19 ? g.c(accessibilityNodeInfo).getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY") : null);
        sb2.append("; contentDescription: ");
        sb2.append(accessibilityNodeInfo.getContentDescription());
        sb2.append("; tooltipText: ");
        sb2.append(i10 >= 28 ? accessibilityNodeInfo.getTooltipText() : i10 >= 19 ? g.c(accessibilityNodeInfo).getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.TOOLTIP_TEXT_KEY") : null);
        sb2.append("; viewIdResName: ");
        sb2.append(i10 >= 18 ? accessibilityNodeInfo.getViewIdResourceName() : null);
        sb2.append("; uniqueId: ");
        sb2.append(i10 >= 33 ? i.g(accessibilityNodeInfo) : i10 >= 19 ? g.c(accessibilityNodeInfo).getString("androidx.view.accessibility.AccessibilityNodeInfoCompat.UNIQUE_ID_KEY") : null);
        sb2.append("; checkable: ");
        sb2.append(accessibilityNodeInfo.isCheckable());
        sb2.append("; checked: ");
        sb2.append(accessibilityNodeInfo.isChecked());
        sb2.append("; focusable: ");
        sb2.append(accessibilityNodeInfo.isFocusable());
        sb2.append("; focused: ");
        sb2.append(accessibilityNodeInfo.isFocused());
        sb2.append("; selected: ");
        sb2.append(accessibilityNodeInfo.isSelected());
        sb2.append("; clickable: ");
        sb2.append(accessibilityNodeInfo.isClickable());
        sb2.append("; longClickable: ");
        sb2.append(accessibilityNodeInfo.isLongClickable());
        sb2.append("; contextClickable: ");
        sb2.append(i10 >= 23 ? accessibilityNodeInfo.isContextClickable() : false);
        sb2.append("; enabled: ");
        sb2.append(accessibilityNodeInfo.isEnabled());
        sb2.append("; password: ");
        sb2.append(accessibilityNodeInfo.isPassword());
        sb2.append("; scrollable: " + accessibilityNodeInfo.isScrollable());
        sb2.append("; containerTitle: ");
        sb2.append(i10 >= 34 ? l.b(accessibilityNodeInfo) : i10 >= 19 ? g.c(accessibilityNodeInfo).getCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.CONTAINER_TITLE_KEY") : null);
        sb2.append("; granularScrollingSupported: ");
        sb2.append(e(67108864));
        sb2.append("; importantForAccessibility: ");
        sb2.append(i10 >= 24 ? accessibilityNodeInfo.isImportantForAccessibility() : true);
        sb2.append("; visible: ");
        sb2.append(accessibilityNodeInfo.isVisibleToUser());
        sb2.append("; isTextSelectable: ");
        sb2.append(i10 >= 33 ? i.h(accessibilityNodeInfo) : e(8388608));
        sb2.append("; accessibilityDataSensitive: ");
        sb2.append(i10 >= 34 ? l.e(accessibilityNodeInfo) : e(64));
        sb2.append("; [");
        if (i10 >= 21) {
            List actionList = i10 >= 21 ? accessibilityNodeInfo.getActionList() : null;
            if (actionList != null) {
                EmptyList = new ArrayList();
                int size = actionList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    EmptyList.add(new f(actionList.get(i11), 0, null, null, null));
                }
            } else {
                EmptyList = Collections.emptyList();
            }
            for (int i12 = 0; i12 < EmptyList.size(); i12++) {
                f fVar = (f) EmptyList.get(i12);
                String strD = d(fVar.a());
                if (strD.equals("ACTION_UNKNOWN") && fVar.b() != null) {
                    strD = fVar.b().toString();
                }
                sb2.append(strD);
                if (i12 != EmptyList.size() - 1) {
                    sb2.append(", ");
                }
            }
        } else {
            int actions = accessibilityNodeInfo.getActions();
            while (actions != 0) {
                int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(actions);
                actions &= iNumberOfTrailingZeros ^ (-1);
                sb2.append(d(iNumberOfTrailingZeros));
                if (actions != 0) {
                    sb2.append(", ");
                }
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    public n(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f18549a = accessibilityNodeInfo;
    }
}

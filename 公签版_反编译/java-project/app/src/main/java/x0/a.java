package x0;

import android.os.Build;
import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import com.yunpan.appmanage.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class a extends View.AccessibilityDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final c f17943a;

    public a(c cVar) {
        this.f17943a = cVar;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.f17943a.a(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        w.i iVarB = this.f17943a.b(view);
        if (iVarB != null) {
            return (AccessibilityNodeProvider) iVarB.f17092b;
        }
        return null;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f17943a.c(view, accessibilityEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0030  */
    @Override // android.view.View.AccessibilityDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        Object tag;
        Object tag2;
        Object tag3;
        int iKeyAt;
        int i10 = 1;
        y0.n nVar = new y0.n(accessibilityNodeInfo);
        WeakHashMap weakHashMap = b1.f17953a;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 28) {
            tag = Boolean.valueOf(u0.d(view));
        } else if (i11 >= 19) {
            tag = view.getTag(R.id.tag_screen_reader_focusable);
            if (!Boolean.class.isInstance(tag)) {
                tag = null;
            }
        }
        Boolean bool = (Boolean) tag;
        boolean z = bool != null && bool.booleanValue();
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 28) {
            accessibilityNodeInfo.setScreenReaderFocusable(z);
        } else {
            nVar.i(1, z);
        }
        int i13 = Build.VERSION.SDK_INT;
        if (i13 >= 28) {
            tag2 = Boolean.valueOf(u0.c(view));
        } else if (i13 >= 19) {
            tag2 = view.getTag(R.id.tag_accessibility_heading);
            if (!Boolean.class.isInstance(tag2)) {
                tag2 = null;
            }
        }
        Boolean bool2 = (Boolean) tag2;
        boolean z4 = bool2 != null && bool2.booleanValue();
        if (i12 >= 28) {
            accessibilityNodeInfo.setHeading(z4);
        } else {
            nVar.i(2, z4);
        }
        CharSequence charSequenceE = b1.e(view);
        if (i12 >= 28) {
            accessibilityNodeInfo.setPaneTitle(charSequenceE);
        } else if (i12 >= 19) {
            y0.g.c(accessibilityNodeInfo).putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequenceE);
        }
        if (i12 >= 30) {
            tag3 = w0.b(view);
        } else if (i12 >= 19) {
            tag3 = view.getTag(R.id.tag_state_description);
            if (!CharSequence.class.isInstance(tag3)) {
                tag3 = null;
            }
        }
        CharSequence charSequence = (CharSequence) tag3;
        if (i12 >= 30) {
            y0.h.c(accessibilityNodeInfo, charSequence);
        } else if (i12 >= 19) {
            y0.g.c(accessibilityNodeInfo).putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
        this.f17943a.d(view, nVar);
        CharSequence text = accessibilityNodeInfo.getText();
        if (i12 >= 19 && i12 < 26) {
            if (i12 >= 19) {
                y0.g.c(accessibilityNodeInfo).remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
                y0.g.c(accessibilityNodeInfo).remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
                y0.g.c(accessibilityNodeInfo).remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
                y0.g.c(accessibilityNodeInfo).remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            }
            SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
            if (sparseArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i14 = 0; i14 < sparseArray.size(); i14++) {
                    if (((WeakReference) sparseArray.valueAt(i14)).get() == null) {
                        arrayList.add(Integer.valueOf(i14));
                    }
                }
                for (int i15 = 0; i15 < arrayList.size(); i15++) {
                    sparseArray.remove(((Integer) arrayList.get(i15)).intValue());
                }
            }
            ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
            if (clickableSpanArr != null && clickableSpanArr.length > 0) {
                nVar.g().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", R.id.accessibility_action_clickable_span);
                SparseArray sparseArray2 = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
                if (sparseArray2 == null) {
                    sparseArray2 = new SparseArray();
                    view.setTag(R.id.tag_accessibility_clickable_spans, sparseArray2);
                }
                for (int i16 = 0; i16 < clickableSpanArr.length; i16++) {
                    ClickableSpan clickableSpan = clickableSpanArr[i16];
                    int i17 = 0;
                    while (true) {
                        if (i17 >= sparseArray2.size()) {
                            iKeyAt = y0.n.f18548c;
                            y0.n.f18548c = iKeyAt + 1;
                            break;
                        } else {
                            if (clickableSpan.equals((ClickableSpan) ((WeakReference) sparseArray2.valueAt(i17)).get())) {
                                iKeyAt = sparseArray2.keyAt(i17);
                                break;
                            }
                            i17 += i10;
                        }
                    }
                    sparseArray2.put(iKeyAt, new WeakReference(clickableSpanArr[i16]));
                    ClickableSpan clickableSpan2 = clickableSpanArr[i16];
                    Spanned spanned = (Spanned) text;
                    nVar.c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan2)));
                    nVar.c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan2)));
                    nVar.c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan2)));
                    nVar.c("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(iKeyAt));
                    i10 = 1;
                }
            }
        }
        List listEmptyList = (List) view.getTag(R.id.tag_accessibility_actions);
        if (listEmptyList == null) {
            listEmptyList = Collections.emptyList();
        }
        for (int i18 = 0; i18 < listEmptyList.size(); i18++) {
            nVar.b((y0.f) listEmptyList.get(i18));
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.f17943a.e(view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.f17943a.f(viewGroup, view, accessibilityEvent);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final boolean performAccessibilityAction(View view, int i10, Bundle bundle) {
        return this.f17943a.g(view, i10, bundle);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void sendAccessibilityEvent(View view, int i10) {
        this.f17943a.h(view, i10);
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.f17943a.i(view, accessibilityEvent);
    }
}

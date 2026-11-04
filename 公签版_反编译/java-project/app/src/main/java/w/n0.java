package w;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class n0 extends g2 implements p0 {
    public CharSequence F;
    public l0 G;
    public final Rect H;
    public int I;
    public final /* synthetic */ q0 K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(q0 q0Var, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle);
        this.K = q0Var;
        this.H = new Rect();
        this.f17081p = q0Var;
        this.A = true;
        this.B.setFocusable(true);
        this.f17082q = new q7.u(1, this);
    }

    @Override // w.p0
    public final CharSequence e() {
        return this.F;
    }

    @Override // w.p0
    public final void g(CharSequence charSequence) {
        this.F = charSequence;
    }

    @Override // w.p0
    public final void k(int i10) {
        this.I = i10;
    }

    @Override // w.p0
    public final void l(int i10, int i11) {
        ViewTreeObserver viewTreeObserver;
        z zVar = this.B;
        boolean zIsShowing = zVar.isShowing();
        r();
        this.B.setInputMethodMode(2);
        show();
        t1 t1Var = this.f17070c;
        t1Var.setChoiceMode(1);
        i0.d(t1Var, i10);
        i0.c(t1Var, i11);
        q0 q0Var = this.K;
        int selectedItemPosition = q0Var.getSelectedItemPosition();
        t1 t1Var2 = this.f17070c;
        if (zVar.isShowing() && t1Var2 != null) {
            t1Var2.setListSelectionHidden(false);
            t1Var2.setSelection(selectedItemPosition);
            if (t1Var2.getChoiceMode() != 0) {
                t1Var2.setItemChecked(selectedItemPosition, true);
            }
        }
        if (zIsShowing || (viewTreeObserver = q0Var.getViewTreeObserver()) == null) {
            return;
        }
        ua.c2 c2Var = new ua.c2(4, this);
        viewTreeObserver.addOnGlobalLayoutListener(c2Var);
        this.B.setOnDismissListener(new m0(this, c2Var));
    }

    @Override // w.g2, w.p0
    public final void o(ListAdapter listAdapter) {
        super.o(listAdapter);
        this.G = (l0) listAdapter;
    }

    public final void r() {
        int i10;
        z zVar = this.B;
        Drawable background = zVar.getBackground();
        q0 q0Var = this.K;
        if (background != null) {
            background.getPadding(q0Var.f17213h);
            boolean zA = u3.a(q0Var);
            Rect rect = q0Var.f17213h;
            i10 = zA ? rect.right : -rect.left;
        } else {
            Rect rect2 = q0Var.f17213h;
            rect2.right = 0;
            rect2.left = 0;
            i10 = 0;
        }
        int paddingLeft = q0Var.getPaddingLeft();
        int paddingRight = q0Var.getPaddingRight();
        int width = q0Var.getWidth();
        int i11 = q0Var.f17212g;
        if (i11 == -2) {
            int iA = q0Var.a(this.G, zVar.getBackground());
            int i12 = q0Var.getContext().getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = q0Var.f17213h;
            int i13 = (i12 - rect3.left) - rect3.right;
            if (iA > i13) {
                iA = i13;
            }
            q(Math.max(iA, (width - paddingLeft) - paddingRight));
        } else if (i11 == -1) {
            q((width - paddingLeft) - paddingRight);
        } else {
            q(i11);
        }
        this.f17073f = u3.a(q0Var) ? (((width - paddingRight) - this.f17072e) - this.I) + i10 : paddingLeft + this.I + i10;
    }
}

package q7;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.WeakHashMap;
import x0.b1;
import x0.j0;

/* loaded from: classes.dex */
public final class v extends ArrayAdapter {

    /* renamed from: a, reason: collision with root package name */
    public ColorStateList f13146a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f13147b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ w f13148c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(w wVar, Context context, int i10, String[] strArr) {
        super(context, i10, strArr);
        this.f13148c = wVar;
        a();
    }

    public final void a() {
        ColorStateList colorStateList;
        w wVar = this.f13148c;
        ColorStateList colorStateList2 = wVar.l;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {R.attr.state_pressed};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.f13147b = colorStateList;
        if (wVar.f13155k != 0 && wVar.l != null && Build.VERSION.SDK_INT >= 21) {
            int[] iArr2 = {R.attr.state_hovered, -16842919};
            int[] iArr3 = {R.attr.state_selected, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{p0.a.b(wVar.l.getColorForState(iArr3, 0), wVar.f13155k), p0.a.b(wVar.l.getColorForState(iArr2, 0), wVar.f13155k), wVar.f13155k});
        }
        this.f13146a = colorStateList3;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i10, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            w wVar = this.f13148c;
            Drawable rippleDrawable = null;
            if (wVar.getText().toString().contentEquals(textView.getText()) && wVar.f13155k != 0 && Build.VERSION.SDK_INT >= 21) {
                ColorDrawable colorDrawable = new ColorDrawable(wVar.f13155k);
                if (this.f13147b != null) {
                    com.bumptech.glide.c.f0(colorDrawable, this.f13146a);
                    rippleDrawable = new RippleDrawable(this.f13147b, colorDrawable, null);
                } else {
                    rippleDrawable = colorDrawable;
                }
            }
            WeakHashMap weakHashMap = b1.f17953a;
            j0.q(textView, rippleDrawable);
        }
        return view2;
    }
}

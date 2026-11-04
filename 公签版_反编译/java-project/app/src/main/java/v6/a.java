package v6;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import androidx.appcompat.widget.SearchView;
import com.google.android.material.bottomappbar.BottomAppBar$Behavior;
import com.yunpan.appmanage.R;
import w.u3;

/* loaded from: classes.dex */
public final class a implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16634a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16635b;

    public /* synthetic */ a(int i10, Object obj) {
        this.f16634a = i10;
        this.f16635b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        switch (this.f16634a) {
            case 0:
                ((BottomAppBar$Behavior) this.f16635b).getClass();
                throw null;
            default:
                SearchView searchView = (SearchView) this.f16635b;
                View view2 = searchView.z;
                if (view2.getWidth() > 1) {
                    Resources resources = searchView.getContext().getResources();
                    int paddingLeft = searchView.f975s.getPaddingLeft();
                    Rect rect = new Rect();
                    boolean zA = u3.a(searchView);
                    int dimensionPixelSize = searchView.P ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) : 0;
                    SearchView.SearchAutoComplete searchAutoComplete = searchView.f974q;
                    searchAutoComplete.getDropDownBackground().getPadding(rect);
                    searchAutoComplete.setDropDownHorizontalOffset(zA ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                    searchAutoComplete.setDropDownWidth((((view2.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
                    return;
                }
                return;
        }
    }
}

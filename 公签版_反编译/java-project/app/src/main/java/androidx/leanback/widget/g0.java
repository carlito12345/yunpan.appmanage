package androidx.leanback.widget;

import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class g0 implements TextView.OnEditorActionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1642a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1643b;

    public /* synthetic */ g0(int i10, ViewGroup viewGroup) {
        this.f1642a = i10;
        this.f1643b = viewGroup;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
        switch (this.f1642a) {
            case 0:
                SearchBar searchBar = (SearchBar) this.f1643b;
                if (3 == i10 || i10 == 0) {
                    searchBar.getClass();
                }
                if (1 == i10) {
                    searchBar.getClass();
                }
                if (2 == i10) {
                    searchBar.f1557i.hideSoftInputFromWindow(searchBar.f1549a.getWindowToken(), 0);
                    searchBar.f1556h.postDelayed(new androidx.activity.h(2, this), 500L);
                    break;
                }
                break;
            default:
                ((SearchView) this.f1643b).s();
                break;
        }
        return true;
    }
}

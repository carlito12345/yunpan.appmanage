package androidx.leanback.widget;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class d0 implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1630a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1631b;

    public /* synthetic */ d0(int i10, ViewGroup viewGroup) {
        this.f1630a = i10;
        this.f1631b = viewGroup;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) throws Resources.NotFoundException {
        switch (this.f1630a) {
            case 0:
                SearchBar searchBar = (SearchBar) this.f1631b;
                if (z) {
                    searchBar.f1556h.post(new e0(searchBar, 1));
                } else {
                    searchBar.f1557i.hideSoftInputFromWindow(searchBar.f1549a.getWindowToken(), 0);
                }
                searchBar.d(z);
                break;
            case 1:
                SearchBar searchBar2 = (SearchBar) this.f1631b;
                if (z) {
                    searchBar2.f1557i.hideSoftInputFromWindow(searchBar2.f1549a.getWindowToken(), 0);
                    if (searchBar2.f1558j) {
                        searchBar2.a();
                        searchBar2.f1558j = false;
                    }
                } else {
                    searchBar2.b();
                }
                searchBar2.d(z);
                break;
            default:
                SearchView searchView = (SearchView) this.f1631b;
                View.OnFocusChangeListener onFocusChangeListener = searchView.N;
                if (onFocusChangeListener != null) {
                    onFocusChangeListener.onFocusChange(searchView, z);
                    break;
                }
                break;
        }
    }
}

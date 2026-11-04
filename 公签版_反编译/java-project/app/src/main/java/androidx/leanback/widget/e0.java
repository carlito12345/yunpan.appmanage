package androidx.leanback.widget;

import android.os.SystemClock;
import android.view.MotionEvent;

/* loaded from: classes.dex */
public final class e0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1632a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchBar f1633b;

    public /* synthetic */ e0(SearchBar searchBar, int i10) {
        this.f1632a = i10;
        this.f1633b = searchBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1632a) {
            case 0:
                SearchBar searchBar = this.f1633b;
                searchBar.setSearchQueryInternal(searchBar.f1549a.getText().toString());
                break;
            default:
                SearchBar searchBar2 = this.f1633b;
                searchBar2.f1549a.requestFocusFromTouch();
                searchBar2.f1549a.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, searchBar2.f1549a.getWidth(), searchBar2.f1549a.getHeight(), 0));
                searchBar2.f1549a.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, searchBar2.f1549a.getWidth(), searchBar2.f1549a.getHeight(), 0));
                break;
        }
    }
}

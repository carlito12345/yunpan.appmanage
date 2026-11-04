package w;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;

/* loaded from: classes.dex */
public final class l2 extends t1 {

    /* renamed from: m, reason: collision with root package name */
    public final int f17146m;

    /* renamed from: n, reason: collision with root package name */
    public final int f17147n;

    /* renamed from: p, reason: collision with root package name */
    public h2 f17148p;

    /* renamed from: q, reason: collision with root package name */
    public v.m f17149q;

    public l2(Context context, boolean z) {
        super(context, z);
        if (1 == k2.a(context.getResources().getConfiguration())) {
            this.f17146m = 21;
            this.f17147n = 22;
        } else {
            this.f17146m = 22;
            this.f17147n = 21;
        }
    }

    @Override // w.t1, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        v.h hVar;
        int headersCount;
        int iPointToPosition;
        int i10;
        if (this.f17148p != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                headersCount = headerViewListAdapter.getHeadersCount();
                hVar = (v.h) headerViewListAdapter.getWrappedAdapter();
            } else {
                hVar = (v.h) adapter;
                headersCount = 0;
            }
            v.m mVarB = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i10 = iPointToPosition - headersCount) < 0 || i10 >= hVar.getCount()) ? null : hVar.getItem(i10);
            v.m mVar = this.f17149q;
            if (mVar != mVarB) {
                v.k kVar = hVar.f16227a;
                if (mVar != null) {
                    this.f17148p.m(kVar, mVar);
                }
                this.f17149q = mVarB;
                if (mVarB != null) {
                    this.f17148p.c(kVar, mVarB);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i10 == this.f17146m) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i10 != this.f17147n) {
            return super.onKeyDown(i10, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (v.h) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (v.h) adapter).f16227a.c(false);
        return true;
    }

    public void setHoverListener(h2 h2Var) {
        this.f17148p = h2Var;
    }

    @Override // w.t1, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}

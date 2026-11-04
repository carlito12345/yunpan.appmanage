package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public class ThumbsBar extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public int f1605a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1606b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1607c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1608d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1609e;

    /* renamed from: f, reason: collision with root package name */
    public int f1610f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1611g;

    public ThumbsBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1605a = -1;
        new SparseArray();
        this.f1611g = false;
        this.f1606b = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_thumbs_width);
        this.f1607c = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_thumbs_height);
        this.f1609e = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_hero_thumbs_width);
        this.f1608d = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_hero_thumbs_height);
        this.f1610f = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_thumbs_margin);
    }

    public final void a() {
        int i10;
        int i11;
        while (getChildCount() > this.f1605a) {
            removeView(getChildAt(getChildCount() - 1));
        }
        while (true) {
            int childCount = getChildCount();
            int i12 = this.f1605a;
            i10 = this.f1607c;
            i11 = this.f1606b;
            if (childCount >= i12) {
                break;
            } else {
                addView(new ImageView(getContext()), new LinearLayout.LayoutParams(i11, i10));
            }
        }
        int heroIndex = getHeroIndex();
        for (int i13 = 0; i13 < getChildCount(); i13++) {
            View childAt = getChildAt(i13);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (heroIndex == i13) {
                layoutParams.width = this.f1608d;
                layoutParams.height = this.f1609e;
            } else {
                layoutParams.width = i11;
                layoutParams.height = i10;
            }
            childAt.setLayoutParams(layoutParams);
        }
    }

    public int getHeroIndex() {
        return getChildCount() / 2;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        super.onLayout(z, i10, i11, i12, i13);
        int heroIndex = getHeroIndex();
        View childAt = getChildAt(heroIndex);
        int width = (getWidth() / 2) - (childAt.getMeasuredWidth() / 2);
        int measuredWidth = (childAt.getMeasuredWidth() / 2) + (getWidth() / 2);
        childAt.layout(width, getPaddingTop(), measuredWidth, childAt.getMeasuredHeight() + getPaddingTop());
        int measuredHeight = (childAt.getMeasuredHeight() / 2) + getPaddingTop();
        for (int i14 = heroIndex - 1; i14 >= 0; i14--) {
            int i15 = width - this.f1610f;
            View childAt2 = getChildAt(i14);
            childAt2.layout(i15 - childAt2.getMeasuredWidth(), measuredHeight - (childAt2.getMeasuredHeight() / 2), i15, (childAt2.getMeasuredHeight() / 2) + measuredHeight);
            width = i15 - childAt2.getMeasuredWidth();
        }
        while (true) {
            heroIndex++;
            if (heroIndex >= this.f1605a) {
                return;
            }
            int i16 = measuredWidth + this.f1610f;
            View childAt3 = getChildAt(heroIndex);
            childAt3.layout(i16, measuredHeight - (childAt3.getMeasuredHeight() / 2), childAt3.getMeasuredWidth() + i16, (childAt3.getMeasuredHeight() / 2) + measuredHeight);
            measuredWidth = i16 + childAt3.getMeasuredWidth();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int measuredWidth = getMeasuredWidth();
        if (this.f1611g) {
            return;
        }
        int i12 = measuredWidth - this.f1608d;
        int i13 = ((i12 + r3) - 1) / (this.f1606b + this.f1610f);
        if (i13 < 2) {
            i13 = 2;
        } else if ((i13 & 1) != 0) {
            i13++;
        }
        int i14 = i13 + 1;
        if (this.f1605a != i14) {
            this.f1605a = i14;
            a();
        }
    }

    public void setNumberOfThumbs(int i10) {
        this.f1611g = true;
        this.f1605a = i10;
        a();
    }

    public void setThumbSpace(int i10) {
        this.f1610f = i10;
        requestLayout();
    }
}

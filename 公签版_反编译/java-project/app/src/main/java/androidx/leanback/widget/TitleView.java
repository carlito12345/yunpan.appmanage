package androidx.leanback.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public class TitleView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final ImageView f1612a;

    /* renamed from: b, reason: collision with root package name */
    public final TextView f1613b;

    /* renamed from: c, reason: collision with root package name */
    public final SearchOrbView f1614c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1615d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1616e;

    /* renamed from: f, reason: collision with root package name */
    public final v0 f1617f;

    public TitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.browseTitleViewStyle);
        this.f1615d = 6;
        this.f1616e = false;
        this.f1617f = new v0();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.lb_title_view, this);
        this.f1612a = (ImageView) viewInflate.findViewById(R.id.title_badge);
        this.f1613b = (TextView) viewInflate.findViewById(R.id.title_text);
        this.f1614c = (SearchOrbView) viewInflate.findViewById(R.id.title_orb);
        setClipToPadding(false);
        setClipChildren(false);
    }

    public Drawable getBadgeDrawable() {
        return this.f1612a.getDrawable();
    }

    public n0 getSearchAffordanceColors() {
        return this.f1614c.getOrbColors();
    }

    public View getSearchAffordanceView() {
        return this.f1614c;
    }

    public CharSequence getTitle() {
        return this.f1613b.getText();
    }

    public w0 getTitleViewAdapter() {
        return this.f1617f;
    }

    public void setBadgeDrawable(Drawable drawable) {
        this.f1612a.setImageDrawable(drawable);
        ImageView imageView = this.f1612a;
        Drawable drawable2 = imageView.getDrawable();
        TextView textView = this.f1613b;
        if (drawable2 != null) {
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else {
            imageView.setVisibility(8);
            textView.setVisibility(0);
        }
    }

    public void setOnSearchClickedListener(View.OnClickListener onClickListener) {
        this.f1616e = onClickListener != null;
        SearchOrbView searchOrbView = this.f1614c;
        searchOrbView.setOnOrbClickedListener(onClickListener);
        searchOrbView.setVisibility((this.f1616e && (this.f1615d & 4) == 4) ? 0 : 4);
    }

    public void setSearchAffordanceColors(n0 n0Var) {
        this.f1614c.setOrbColors(n0Var);
    }

    public void setTitle(CharSequence charSequence) {
        this.f1613b.setText(charSequence);
        ImageView imageView = this.f1612a;
        Drawable drawable = imageView.getDrawable();
        TextView textView = this.f1613b;
        if (drawable != null) {
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else {
            imageView.setVisibility(8);
            textView.setVisibility(0);
        }
    }
}

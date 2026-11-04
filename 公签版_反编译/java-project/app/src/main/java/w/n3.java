package w;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class n3 implements m1 {

    /* renamed from: a, reason: collision with root package name */
    public final Toolbar f17162a;

    /* renamed from: b, reason: collision with root package name */
    public int f17163b;

    /* renamed from: c, reason: collision with root package name */
    public final View f17164c;

    /* renamed from: d, reason: collision with root package name */
    public Drawable f17165d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f17166e;

    /* renamed from: f, reason: collision with root package name */
    public final Drawable f17167f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f17168g;

    /* renamed from: h, reason: collision with root package name */
    public CharSequence f17169h;

    /* renamed from: i, reason: collision with root package name */
    public final CharSequence f17170i;

    /* renamed from: j, reason: collision with root package name */
    public final CharSequence f17171j;

    /* renamed from: k, reason: collision with root package name */
    public Window.Callback f17172k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public j f17173m;

    /* renamed from: n, reason: collision with root package name */
    public final int f17174n;

    /* renamed from: o, reason: collision with root package name */
    public final Drawable f17175o;

    public n3(Toolbar toolbar) {
        Drawable drawable;
        this.f17174n = 0;
        this.f17162a = toolbar;
        this.f17169h = toolbar.getTitle();
        this.f17170i = toolbar.getSubtitle();
        this.f17168g = this.f17169h != null;
        this.f17167f = toolbar.getNavigationIcon();
        s4.a aVarJ = s4.a.j(toolbar.getContext(), null, p.a.f12515a, R.attr.actionBarStyle);
        this.f17175o = aVarJ.e(15);
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        CharSequence text = typedArray.getText(27);
        if (!TextUtils.isEmpty(text)) {
            this.f17168g = true;
            this.f17169h = text;
            if ((this.f17163b & 8) != 0) {
                Toolbar toolbar2 = this.f17162a;
                toolbar2.setTitle(text);
                if (this.f17168g) {
                    x0.b1.z(toolbar2.getRootView(), text);
                }
            }
        }
        CharSequence text2 = typedArray.getText(25);
        if (!TextUtils.isEmpty(text2)) {
            this.f17170i = text2;
            if ((this.f17163b & 8) != 0) {
                toolbar.setSubtitle(text2);
            }
        }
        Drawable drawableE = aVarJ.e(20);
        if (drawableE != null) {
            this.f17166e = drawableE;
            c();
        }
        Drawable drawableE2 = aVarJ.e(17);
        if (drawableE2 != null) {
            this.f17165d = drawableE2;
            c();
        }
        if (this.f17167f == null && (drawable = this.f17175o) != null) {
            this.f17167f = drawable;
            int i10 = this.f17163b & 4;
            Toolbar toolbar3 = this.f17162a;
            if (i10 != 0) {
                toolbar3.setNavigationIcon(drawable);
            } else {
                toolbar3.setNavigationIcon((Drawable) null);
            }
        }
        a(typedArray.getInt(10, 0));
        int resourceId = typedArray.getResourceId(9, 0);
        if (resourceId != 0) {
            View viewInflate = LayoutInflater.from(toolbar.getContext()).inflate(resourceId, (ViewGroup) toolbar, false);
            View view = this.f17164c;
            if (view != null && (this.f17163b & 16) != 0) {
                toolbar.removeView(view);
            }
            this.f17164c = viewInflate;
            if (viewInflate != null && (this.f17163b & 16) != 0) {
                toolbar.addView(viewInflate);
            }
            a(this.f17163b | 16);
        }
        int layoutDimension = typedArray.getLayoutDimension(13, 0);
        if (layoutDimension > 0) {
            ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
            layoutParams.height = layoutDimension;
            toolbar.setLayoutParams(layoutParams);
        }
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
        if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
            int iMax = Math.max(dimensionPixelOffset, 0);
            int iMax2 = Math.max(dimensionPixelOffset2, 0);
            if (toolbar.f1003v == null) {
                toolbar.f1003v = new r2();
            }
            toolbar.f1003v.a(iMax, iMax2);
        }
        int resourceId2 = typedArray.getResourceId(28, 0);
        if (resourceId2 != 0) {
            Context context = toolbar.getContext();
            toolbar.l = resourceId2;
            b1 b1Var = toolbar.f987b;
            if (b1Var != null) {
                b1Var.setTextAppearance(context, resourceId2);
            }
        }
        int resourceId3 = typedArray.getResourceId(26, 0);
        if (resourceId3 != 0) {
            Context context2 = toolbar.getContext();
            toolbar.f997m = resourceId3;
            b1 b1Var2 = toolbar.f988c;
            if (b1Var2 != null) {
                b1Var2.setTextAppearance(context2, resourceId3);
            }
        }
        int resourceId4 = typedArray.getResourceId(22, 0);
        if (resourceId4 != 0) {
            toolbar.setPopupTheme(resourceId4);
        }
        aVarJ.r();
        if (R.string.abc_action_bar_up_description != this.f17174n) {
            this.f17174n = R.string.abc_action_bar_up_description;
            if (TextUtils.isEmpty(toolbar.getNavigationContentDescription())) {
                int i11 = this.f17174n;
                this.f17171j = i11 != 0 ? toolbar.getContext().getString(i11) : null;
                b();
            }
        }
        this.f17171j = toolbar.getNavigationContentDescription();
        toolbar.setNavigationOnClickListener(new m3(this));
    }

    public final void a(int i10) {
        View view;
        int i11 = this.f17163b ^ i10;
        this.f17163b = i10;
        if (i11 != 0) {
            if ((i11 & 4) != 0) {
                if ((i10 & 4) != 0) {
                    b();
                }
                int i12 = this.f17163b & 4;
                Toolbar toolbar = this.f17162a;
                if (i12 != 0) {
                    Drawable drawable = this.f17167f;
                    if (drawable == null) {
                        drawable = this.f17175o;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i11 & 3) != 0) {
                c();
            }
            int i13 = i11 & 8;
            Toolbar toolbar2 = this.f17162a;
            if (i13 != 0) {
                if ((i10 & 8) != 0) {
                    toolbar2.setTitle(this.f17169h);
                    toolbar2.setSubtitle(this.f17170i);
                } else {
                    toolbar2.setTitle((CharSequence) null);
                    toolbar2.setSubtitle((CharSequence) null);
                }
            }
            if ((i11 & 16) == 0 || (view = this.f17164c) == null) {
                return;
            }
            if ((i10 & 16) != 0) {
                toolbar2.addView(view);
            } else {
                toolbar2.removeView(view);
            }
        }
    }

    public final void b() {
        if ((this.f17163b & 4) != 0) {
            boolean zIsEmpty = TextUtils.isEmpty(this.f17171j);
            Toolbar toolbar = this.f17162a;
            if (zIsEmpty) {
                toolbar.setNavigationContentDescription(this.f17174n);
            } else {
                toolbar.setNavigationContentDescription(this.f17171j);
            }
        }
    }

    public final void c() {
        Drawable drawable;
        int i10 = this.f17163b;
        if ((i10 & 2) == 0) {
            drawable = null;
        } else if ((i10 & 1) == 0 || (drawable = this.f17166e) == null) {
            drawable = this.f17165d;
        }
        this.f17162a.setLogo(drawable);
    }
}

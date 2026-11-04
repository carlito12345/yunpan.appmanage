package p7;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.StateSet;
import android.view.LayoutInflater;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import b1.p;
import com.google.android.material.tabs.TabLayout;
import java.util.WeakHashMap;
import q.t;
import x0.b0;
import x0.b1;
import x0.j0;
import x0.k0;
import x0.r0;

/* loaded from: classes.dex */
public final class k extends LinearLayout {
    public static final /* synthetic */ int l = 0;

    /* renamed from: a, reason: collision with root package name */
    public h f12597a;

    /* renamed from: b, reason: collision with root package name */
    public TextView f12598b;

    /* renamed from: c, reason: collision with root package name */
    public ImageView f12599c;

    /* renamed from: d, reason: collision with root package name */
    public View f12600d;

    /* renamed from: e, reason: collision with root package name */
    public t6.a f12601e;

    /* renamed from: f, reason: collision with root package name */
    public View f12602f;

    /* renamed from: g, reason: collision with root package name */
    public TextView f12603g;

    /* renamed from: h, reason: collision with root package name */
    public ImageView f12604h;

    /* renamed from: i, reason: collision with root package name */
    public Drawable f12605i;

    /* renamed from: j, reason: collision with root package name */
    public int f12606j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ TabLayout f12607k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(TabLayout tabLayout, Context context) {
        super(context);
        this.f12607k = tabLayout;
        this.f12606j = 2;
        e(context);
        int i10 = tabLayout.f3650e;
        WeakHashMap weakHashMap = b1.f17953a;
        k0.k(this, i10, tabLayout.f3651f, tabLayout.f3652g, tabLayout.f3653h);
        setGravity(17);
        setOrientation(!tabLayout.E ? 1 : 0);
        setClickable(true);
        Context context2 = getContext();
        int i11 = Build.VERSION.SDK_INT;
        w.i iVar = i11 >= 24 ? new w.i(6, b0.b(context2, 1002)) : new w.i(6, null);
        if (i11 >= 24) {
            r0.d(this, t.h((PointerIcon) iVar.f17092b));
        }
    }

    private t6.a getBadge() {
        return this.f12601e;
    }

    private t6.a getOrCreateBadge() {
        if (this.f12601e == null) {
            this.f12601e = new t6.a(getContext());
        }
        b();
        t6.a aVar = this.f12601e;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException("Unable to create badge");
    }

    public final void a() {
        if (this.f12601e != null) {
            setClipChildren(true);
            setClipToPadding(true);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(true);
                viewGroup.setClipToPadding(true);
            }
            View view = this.f12600d;
            if (view != null) {
                t6.a aVar = this.f12601e;
                if (aVar == null) {
                    boolean z = t6.d.f14826a;
                } else if (t6.d.f14826a || aVar.c() != null) {
                    aVar.c().setForeground(null);
                } else {
                    view.getOverlay().remove(aVar);
                }
                this.f12600d = null;
            }
        }
    }

    public final void b() {
        if (this.f12601e != null) {
            if (this.f12602f != null) {
                a();
                return;
            }
            TextView textView = this.f12598b;
            if (textView == null || this.f12597a == null) {
                a();
                return;
            }
            if (this.f12600d == textView) {
                c(textView);
                return;
            }
            a();
            TextView textView2 = this.f12598b;
            if (this.f12601e == null || textView2 == null) {
                return;
            }
            setClipChildren(false);
            setClipToPadding(false);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(false);
                viewGroup.setClipToPadding(false);
            }
            t6.a aVar = this.f12601e;
            FrameLayout frameLayout = null;
            if ((textView2 == this.f12599c || textView2 == this.f12598b) && t6.d.f14826a) {
                frameLayout = (FrameLayout) textView2.getParent();
            }
            boolean z = t6.d.f14826a;
            Rect rect = new Rect();
            textView2.getDrawingRect(rect);
            aVar.setBounds(rect);
            aVar.h(textView2, frameLayout);
            if (aVar.c() != null) {
                aVar.c().setForeground(aVar);
            } else {
                if (t6.d.f14826a) {
                    throw new IllegalArgumentException("Trying to reference null customBadgeParent");
                }
                textView2.getOverlay().add(aVar);
            }
            this.f12600d = textView2;
        }
    }

    public final void c(View view) {
        t6.a aVar = this.f12601e;
        if (aVar == null || view != this.f12600d) {
            return;
        }
        FrameLayout frameLayout = null;
        if ((view == this.f12599c || view == this.f12598b) && t6.d.f14826a) {
            frameLayout = (FrameLayout) view.getParent();
        }
        boolean z = t6.d.f14826a;
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        aVar.setBounds(rect);
        aVar.h(view, frameLayout);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d() {
        boolean z;
        f();
        h hVar = this.f12597a;
        if (hVar == null) {
            z = false;
        } else {
            TabLayout tabLayout = hVar.f12590d;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            int selectedTabPosition = tabLayout.getSelectedTabPosition();
            if (selectedTabPosition != -1 && selectedTabPosition == hVar.f12588b) {
                z = true;
            }
        }
        setSelected(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f12605i;
        if ((drawable == null || !drawable.isStateful()) ? false : this.f12605i.setState(drawableState)) {
            invalidate();
            this.f12607k.invalidate();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [android.graphics.drawable.RippleDrawable] */
    /* JADX WARN: Type inference failed for: r1v11, types: [android.graphics.drawable.LayerDrawable] */
    public final void e(Context context) {
        ColorStateList colorStateList;
        TabLayout tabLayout = this.f12607k;
        int i10 = tabLayout.f3663t;
        if (i10 != 0) {
            Drawable drawableX = com.bumptech.glide.d.x(context, i10);
            this.f12605i = drawableX;
            if (drawableX != null && drawableX.isStateful()) {
                this.f12605i.setState(getDrawableState());
            }
        } else {
            this.f12605i = null;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(0);
        if (tabLayout.f3659n != null) {
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setCornerRadius(1.0E-5f);
            gradientDrawable2.setColor(-1);
            ColorStateList colorStateList2 = tabLayout.f3659n;
            boolean z = k7.d.f10182a;
            int[] iArr = k7.d.f10183b;
            int[] iArr2 = k7.d.f10185d;
            int[] iArr3 = k7.d.f10187f;
            int[] iArr4 = k7.d.f10191j;
            if (z) {
                colorStateList = new ColorStateList(new int[][]{iArr4, iArr2, StateSet.NOTHING}, new int[]{k7.d.a(colorStateList2, iArr3), k7.d.a(colorStateList2, iArr2), k7.d.a(colorStateList2, iArr)});
            } else {
                int iA = k7.d.a(colorStateList2, iArr3);
                int[] iArr5 = k7.d.f10188g;
                int iA2 = k7.d.a(colorStateList2, iArr5);
                int[] iArr6 = k7.d.f10189h;
                int iA3 = k7.d.a(colorStateList2, iArr6);
                int[] iArr7 = k7.d.f10190i;
                int iA4 = k7.d.a(colorStateList2, iArr7);
                int iA5 = k7.d.a(colorStateList2, iArr);
                int[] iArr8 = k7.d.f10184c;
                int iA6 = k7.d.a(colorStateList2, iArr8);
                int iA7 = k7.d.a(colorStateList2, iArr2);
                int[] iArr9 = k7.d.f10186e;
                colorStateList = new ColorStateList(new int[][]{iArr3, iArr5, iArr6, iArr7, iArr4, iArr, iArr8, iArr2, iArr9, StateSet.NOTHING}, new int[]{iA, iA2, iA3, iA4, 0, iA5, iA6, iA7, k7.d.a(colorStateList2, iArr9), 0});
            }
            if (Build.VERSION.SDK_INT >= 21) {
                boolean z4 = tabLayout.I;
                if (z4) {
                    gradientDrawable = null;
                }
                gradientDrawable = new RippleDrawable(colorStateList, gradientDrawable, z4 ? null : gradientDrawable2);
            } else {
                Drawable drawableN0 = com.bumptech.glide.c.n0(gradientDrawable2);
                com.bumptech.glide.c.f0(drawableN0, colorStateList);
                gradientDrawable = new LayerDrawable(new Drawable[]{gradientDrawable, drawableN0});
            }
        }
        WeakHashMap weakHashMap = b1.f17953a;
        j0.q(this, gradientDrawable);
        tabLayout.invalidate();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f() {
        int i10;
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        ViewParent parent;
        h hVar = this.f12597a;
        View view = hVar != null ? hVar.f12589c : null;
        if (view != null) {
            ViewParent parent2 = view.getParent();
            if (parent2 != this) {
                if (parent2 != null) {
                    ((ViewGroup) parent2).removeView(view);
                }
                View view2 = this.f12602f;
                if (view2 != null && (parent = view2.getParent()) != null) {
                    ((ViewGroup) parent).removeView(this.f12602f);
                }
                addView(view);
            }
            this.f12602f = view;
            TextView textView = this.f12598b;
            if (textView != null) {
                textView.setVisibility(8);
            }
            ImageView imageView = this.f12599c;
            if (imageView != null) {
                imageView.setVisibility(8);
                this.f12599c.setImageDrawable(null);
            }
            TextView textView2 = (TextView) view.findViewById(R.id.text1);
            this.f12603g = textView2;
            if (textView2 != null) {
                this.f12606j = p.b(textView2);
            }
            this.f12604h = (ImageView) view.findViewById(R.id.icon);
        } else {
            View view3 = this.f12602f;
            if (view3 != null) {
                removeView(view3);
                this.f12602f = null;
            }
            this.f12603g = null;
            this.f12604h = null;
        }
        if (this.f12602f == null) {
            if (this.f12599c == null) {
                if (t6.d.f14826a) {
                    frameLayout2 = new FrameLayout(getContext());
                    frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
                    addView(frameLayout2, 0);
                } else {
                    frameLayout2 = this;
                }
                ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(com.yunpan.appmanage.R.layout.design_layout_tab_icon, (ViewGroup) frameLayout2, false);
                this.f12599c = imageView2;
                frameLayout2.addView(imageView2, 0);
            }
            if (this.f12598b == null) {
                if (t6.d.f14826a) {
                    frameLayout = new FrameLayout(getContext());
                    frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
                    addView(frameLayout);
                } else {
                    frameLayout = this;
                }
                TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(com.yunpan.appmanage.R.layout.design_layout_tab_text, (ViewGroup) frameLayout, false);
                this.f12598b = textView3;
                frameLayout.addView(textView3);
                this.f12606j = p.b(this.f12598b);
            }
            TextView textView4 = this.f12598b;
            TabLayout tabLayout = this.f12607k;
            d.b.o0(textView4, tabLayout.f3655i);
            if (!isSelected() || (i10 = tabLayout.f3657k) == -1) {
                d.b.o0(this.f12598b, tabLayout.f3656j);
            } else {
                d.b.o0(this.f12598b, i10);
            }
            ColorStateList colorStateList = tabLayout.l;
            if (colorStateList != null) {
                this.f12598b.setTextColor(colorStateList);
            }
            g(this.f12598b, this.f12599c, true);
            b();
            ImageView imageView3 = this.f12599c;
            if (imageView3 != null) {
                imageView3.addOnLayoutChangeListener(new j(this, imageView3));
            }
            TextView textView5 = this.f12598b;
            if (textView5 != null) {
                textView5.addOnLayoutChangeListener(new j(this, textView5));
            }
        } else {
            TextView textView6 = this.f12603g;
            if (textView6 != null || this.f12604h != null) {
                g(textView6, this.f12604h, false);
            }
        }
        if (hVar == null || TextUtils.isEmpty(null)) {
            return;
        }
        setContentDescription(null);
    }

    public final void g(TextView textView, ImageView imageView, boolean z) {
        boolean z4;
        h hVar = this.f12597a;
        String str = hVar != null ? hVar.f12587a : null;
        if (imageView != null) {
            imageView.setVisibility(8);
            imageView.setImageDrawable(null);
        }
        boolean zIsEmpty = TextUtils.isEmpty(str);
        if (textView != null) {
            if (zIsEmpty) {
                z4 = false;
            } else {
                this.f12597a.getClass();
                z4 = true;
            }
            textView.setText(!zIsEmpty ? str : null);
            textView.setVisibility(z4 ? 0 : 8);
            if (!zIsEmpty) {
                setVisibility(0);
            }
        } else {
            z4 = false;
        }
        if (z && imageView != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            int iD = (z4 && imageView.getVisibility() == 0) ? (int) g7.l.d(getContext(), 8) : 0;
            if (this.f12607k.E) {
                if (iD != x0.p.b(marginLayoutParams)) {
                    x0.p.g(marginLayoutParams, iD);
                    marginLayoutParams.bottomMargin = 0;
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            } else if (iD != marginLayoutParams.bottomMargin) {
                marginLayoutParams.bottomMargin = iD;
                x0.p.g(marginLayoutParams, 0);
                imageView.setLayoutParams(marginLayoutParams);
                imageView.requestLayout();
            }
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 21 || i10 > 23) {
            q4.a.a0(this, zIsEmpty ? null : str);
        }
    }

    public int getContentHeight() {
        View[] viewArr = {this.f12598b, this.f12599c, this.f12602f};
        int iMax = 0;
        int iMin = 0;
        boolean z = false;
        for (int i10 = 0; i10 < 3; i10++) {
            View view = viewArr[i10];
            if (view != null && view.getVisibility() == 0) {
                iMin = z ? Math.min(iMin, view.getTop()) : view.getTop();
                iMax = z ? Math.max(iMax, view.getBottom()) : view.getBottom();
                z = true;
            }
        }
        return iMax - iMin;
    }

    public int getContentWidth() {
        View[] viewArr = {this.f12598b, this.f12599c, this.f12602f};
        int iMax = 0;
        int iMin = 0;
        boolean z = false;
        for (int i10 = 0; i10 < 3; i10++) {
            View view = viewArr[i10];
            if (view != null && view.getVisibility() == 0) {
                iMin = z ? Math.min(iMin, view.getLeft()) : view.getLeft();
                iMax = z ? Math.max(iMax, view.getRight()) : view.getRight();
                z = true;
            }
        }
        return iMax - iMin;
    }

    public h getTab() {
        return this.f12597a;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0072  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) throws Resources.NotFoundException {
        Context context;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        t6.a aVar = this.f12601e;
        if (aVar != null && aVar.isVisible()) {
            CharSequence contentDescription = getContentDescription();
            StringBuilder sb2 = new StringBuilder();
            sb2.append((Object) contentDescription);
            sb2.append(", ");
            t6.a aVar2 = this.f12601e;
            Object quantityString = null;
            if (aVar2.isVisible()) {
                t6.b bVar = aVar2.f14786e.f14816b;
                String str = bVar.f14803j;
                if (str != null) {
                    String str2 = bVar.f14807p;
                    quantityString = str2 != null ? str2 : str;
                } else if (!aVar2.f()) {
                    quantityString = bVar.f14808q;
                } else if (bVar.r != 0 && (context = (Context) aVar2.f14782a.get()) != null) {
                    if (aVar2.f14789h != -2) {
                        int iD = aVar2.d();
                        int i10 = aVar2.f14789h;
                        quantityString = iD <= i10 ? context.getResources().getQuantityString(bVar.r, aVar2.d(), Integer.valueOf(aVar2.d())) : context.getString(bVar.f14809s, Integer.valueOf(i10));
                    }
                }
            }
            sb2.append(quantityString);
            accessibilityNodeInfo.setContentDescription(sb2.toString());
        }
        y0.m mVarA = y0.m.a(0, 1, this.f12597a.f12588b, 1, isSelected());
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 19) {
            accessibilityNodeInfo.setCollectionItemInfo(vb.b.e(mVarA.f18547a));
        }
        if (isSelected()) {
            accessibilityNodeInfo.setClickable(false);
            y0.f fVar = y0.f.f18534e;
            if (i11 >= 21) {
                accessibilityNodeInfo.removeAction(wa.h.g(fVar.f18543a));
            }
        }
        String string = getResources().getString(com.yunpan.appmanage.R.string.item_view_role_description);
        if (i11 >= 19) {
            y0.g.c(accessibilityNodeInfo).putCharSequence("AccessibilityNodeInfo.roleDescription", string);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i10);
        TabLayout tabLayout = this.f12607k;
        int tabMaxWidth = tabLayout.getTabMaxWidth();
        if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
            i10 = View.MeasureSpec.makeMeasureSpec(tabLayout.f3665v, Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
        if (this.f12598b != null) {
            float f10 = tabLayout.r;
            int i12 = this.f12606j;
            ImageView imageView = this.f12599c;
            if (imageView == null || imageView.getVisibility() != 0) {
                TextView textView = this.f12598b;
                if (textView != null && textView.getLineCount() > 1) {
                    f10 = tabLayout.f3662s;
                }
            } else {
                i12 = 1;
            }
            float textSize = this.f12598b.getTextSize();
            int lineCount = this.f12598b.getLineCount();
            int iB = p.b(this.f12598b);
            if (f10 != textSize || (iB >= 0 && i12 != iB)) {
                if (tabLayout.D == 1 && f10 > textSize && lineCount == 1) {
                    Layout layout = this.f12598b.getLayout();
                    if (layout == null) {
                        return;
                    }
                    if ((f10 / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                        return;
                    }
                }
                this.f12598b.setTextSize(0, f10);
                this.f12598b.setMaxLines(i12);
                super.onMeasure(i10, i11);
            }
        }
    }

    @Override // android.view.View
    public final boolean performClick() {
        boolean zPerformClick = super.performClick();
        if (this.f12597a == null) {
            return zPerformClick;
        }
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        h hVar = this.f12597a;
        TabLayout tabLayout = hVar.f12590d;
        if (tabLayout == null) {
            throw new IllegalArgumentException("Tab not attached to a TabLayout");
        }
        tabLayout.j(hVar, true);
        return true;
    }

    @Override // android.view.View
    public void setSelected(boolean z) {
        isSelected();
        super.setSelected(z);
        TextView textView = this.f12598b;
        if (textView != null) {
            textView.setSelected(z);
        }
        ImageView imageView = this.f12599c;
        if (imageView != null) {
            imageView.setSelected(z);
        }
        View view = this.f12602f;
        if (view != null) {
            view.setSelected(z);
        }
    }

    public void setTab(h hVar) {
        if (hVar != this.f12597a) {
            this.f12597a = hVar;
            d();
        }
    }
}

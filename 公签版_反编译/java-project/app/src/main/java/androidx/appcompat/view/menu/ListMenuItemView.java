package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import java.util.WeakHashMap;
import s4.a;
import v.k;
import v.m;
import v.y;
import x0.b1;
import x0.j0;

/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements y, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: a, reason: collision with root package name */
    public m f888a;

    /* renamed from: b, reason: collision with root package name */
    public ImageView f889b;

    /* renamed from: c, reason: collision with root package name */
    public RadioButton f890c;

    /* renamed from: d, reason: collision with root package name */
    public TextView f891d;

    /* renamed from: e, reason: collision with root package name */
    public CheckBox f892e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f893f;

    /* renamed from: g, reason: collision with root package name */
    public ImageView f894g;

    /* renamed from: h, reason: collision with root package name */
    public ImageView f895h;

    /* renamed from: i, reason: collision with root package name */
    public LinearLayout f896i;

    /* renamed from: j, reason: collision with root package name */
    public final Drawable f897j;

    /* renamed from: k, reason: collision with root package name */
    public final int f898k;
    public final Context l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f899m;

    /* renamed from: n, reason: collision with root package name */
    public final Drawable f900n;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f901p;

    /* renamed from: q, reason: collision with root package name */
    public LayoutInflater f902q;
    public boolean r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVarJ = a.j(getContext(), attributeSet, p.a.r, R.attr.listMenuViewStyle);
        this.f897j = aVarJ.e(5);
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        this.f898k = typedArray.getResourceId(1, -1);
        this.f899m = typedArray.getBoolean(7, false);
        this.l = context;
        this.f900n = aVarJ.e(8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f901p = typedArrayObtainStyledAttributes.hasValue(0);
        aVarJ.r();
        typedArrayObtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f902q == null) {
            this.f902q = LayoutInflater.from(getContext());
        }
        return this.f902q;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f894g;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f895h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f895h.getLayoutParams();
        rect.top = this.f895h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    @Override // v.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(m mVar) {
        boolean z;
        int i10;
        String string;
        boolean z4;
        this.f888a = mVar;
        setVisibility(mVar.isVisible() ? 0 : 8);
        setTitle(mVar.f16261e);
        setCheckable(mVar.isCheckable());
        if (mVar.f16269n.o()) {
            if ((mVar.f16269n.n() ? mVar.f16266j : mVar.f16264h) != 0) {
                z = true;
            }
        } else {
            z = false;
        }
        mVar.f16269n.n();
        if (z) {
            m mVar2 = this.f888a;
            if (mVar2.f16269n.o()) {
                if ((mVar2.f16269n.n() ? mVar2.f16266j : mVar2.f16264h) != 0) {
                    z4 = true;
                }
                if (z4) {
                }
            } else {
                z4 = false;
                i10 = z4 ? 0 : 8;
            }
        }
        if (i10 == 0) {
            TextView textView = this.f893f;
            m mVar3 = this.f888a;
            char c7 = mVar3.f16269n.n() ? mVar3.f16266j : mVar3.f16264h;
            if (c7 == 0) {
                string = "";
            } else {
                k kVar = mVar3.f16269n;
                Resources resources = kVar.f16233a.getResources();
                StringBuilder sb2 = new StringBuilder();
                if (ViewConfiguration.get(kVar.f16233a).hasPermanentMenuKey()) {
                    sb2.append(resources.getString(R.string.abc_prepend_shortcut_label));
                }
                int i11 = kVar.n() ? mVar3.f16267k : mVar3.f16265i;
                m.c(i11, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label), sb2);
                m.c(i11, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label), sb2);
                m.c(i11, 2, resources.getString(R.string.abc_menu_alt_shortcut_label), sb2);
                m.c(i11, 1, resources.getString(R.string.abc_menu_shift_shortcut_label), sb2);
                m.c(i11, 4, resources.getString(R.string.abc_menu_sym_shortcut_label), sb2);
                m.c(i11, 8, resources.getString(R.string.abc_menu_function_shortcut_label), sb2);
                if (c7 == '\b') {
                    sb2.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                } else if (c7 == '\n') {
                    sb2.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                } else if (c7 != ' ') {
                    sb2.append(c7);
                } else {
                    sb2.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                }
                string = sb2.toString();
            }
            textView.setText(string);
        }
        if (this.f893f.getVisibility() != i10) {
            this.f893f.setVisibility(i10);
        }
        setIcon(mVar.getIcon());
        setEnabled(mVar.isEnabled());
        setSubMenuArrowVisible(mVar.hasSubMenu());
        setContentDescription(mVar.r);
    }

    @Override // v.y
    public m getItemData() {
        return this.f888a;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        WeakHashMap weakHashMap = b1.f17953a;
        j0.q(this, this.f897j);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f891d = textView;
        int i10 = this.f898k;
        if (i10 != -1) {
            textView.setTextAppearance(this.l, i10);
        }
        this.f893f = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f894g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f900n);
        }
        this.f895h = (ImageView) findViewById(R.id.group_divider);
        this.f896i = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        if (this.f889b != null && this.f899m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f889b.getLayoutParams();
            int i12 = layoutParams.height;
            if (i12 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i12;
            }
        }
        super.onMeasure(i10, i11);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        View view;
        if (!z && this.f890c == null && this.f892e == null) {
            return;
        }
        if ((this.f888a.z & 4) != 0) {
            if (this.f890c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f890c = radioButton;
                LinearLayout linearLayout = this.f896i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f890c;
            view = this.f892e;
        } else {
            if (this.f892e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f892e = checkBox;
                LinearLayout linearLayout2 = this.f896i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f892e;
            view = this.f890c;
        }
        if (z) {
            compoundButton.setChecked(this.f888a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f892e;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f890c;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if ((this.f888a.z & 4) != 0) {
            if (this.f890c == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f890c = radioButton;
                LinearLayout linearLayout = this.f896i;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f890c;
        } else {
            if (this.f892e == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f892e = checkBox;
                LinearLayout linearLayout2 = this.f896i;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f892e;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.r = z;
        this.f899m = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f895h;
        if (imageView != null) {
            imageView.setVisibility((this.f901p || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        this.f888a.f16269n.getClass();
        boolean z = this.r;
        if (z || this.f899m) {
            ImageView imageView = this.f889b;
            if (imageView == null && drawable == null && !this.f899m) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f889b = imageView2;
                LinearLayout linearLayout = this.f896i;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f899m) {
                this.f889b.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f889b;
            if (!z) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f889b.getVisibility() != 0) {
                this.f889b.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f891d.getVisibility() != 8) {
                this.f891d.setVisibility(8);
            }
        } else {
            this.f891d.setText(charSequence);
            if (this.f891d.getVisibility() != 0) {
                this.f891d.setVisibility(0);
            }
        }
    }
}

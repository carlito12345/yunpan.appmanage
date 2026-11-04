package i0;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public abstract class c extends View {

    /* renamed from: a, reason: collision with root package name */
    public int[] f8243a;

    /* renamed from: b, reason: collision with root package name */
    public int f8244b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f8245c;

    /* renamed from: d, reason: collision with root package name */
    public f0.i f8246d;

    /* renamed from: e, reason: collision with root package name */
    public String f8247e;

    /* renamed from: f, reason: collision with root package name */
    public String f8248f;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap f8249g;

    public c(Context context) {
        super(context);
        this.f8243a = new int[32];
        this.f8249g = new HashMap();
        this.f8245c = context;
        g(null);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(String str) throws IllegalAccessException, IllegalArgumentException {
        Context context;
        int identifier;
        HashMap map;
        if (str == null || str.length() == 0 || (context = this.f8245c) == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (!isInEditMode() || constraintLayout == null) {
            identifier = 0;
        } else {
            Object obj = ((strTrim instanceof String) && (map = constraintLayout.f1027m) != null && map.containsKey(strTrim)) ? constraintLayout.f1027m.get(strTrim) : null;
            if (obj instanceof Integer) {
                identifier = ((Integer) obj).intValue();
            }
        }
        if (identifier == 0 && constraintLayout != null) {
            identifier = f(constraintLayout, strTrim);
        }
        if (identifier == 0) {
            try {
                identifier = p.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
            }
        }
        if (identifier == 0) {
            identifier = context.getResources().getIdentifier(strTrim, Name.MARK, context.getPackageName());
        }
        if (identifier != 0) {
            this.f8249g.put(Integer.valueOf(identifier), strTrim);
            b(identifier);
        }
    }

    public final void b(int i10) {
        if (i10 == getId()) {
            return;
        }
        int i11 = this.f8244b + 1;
        int[] iArr = this.f8243a;
        if (i11 > iArr.length) {
            this.f8243a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f8243a;
        int i12 = this.f8244b;
        iArr2[i12] = i10;
        this.f8244b = i12 + 1;
    }

    public final void c(String str) {
        if (str == null || str.length() == 0 || this.f8245c == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof e) && strTrim.equals(((e) layoutParams).Y) && childAt.getId() != -1) {
                b(childAt.getId());
            }
        }
    }

    public final void d(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i10 = 0; i10 < this.f8244b; i10++) {
            View view = (View) constraintLayout.f1016a.get(this.f8243a[i10]);
            if (view != null) {
                view.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    view.setTranslationZ(view.getTranslationZ() + elevation);
                }
            }
        }
    }

    public final int f(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String resourceEntryName;
        if (str == null || constraintLayout == null || (resources = this.f8245c.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = constraintLayout.getChildAt(i10);
            if (childAt.getId() != -1) {
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = null;
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    public void g(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, q.f8393b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == 35) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f8247e = string;
                    setIds(string);
                } else if (index == 36) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.f8248f = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f8243a, this.f8244b);
    }

    public abstract void h(f0.d dVar, boolean z);

    public final void i() {
        if (this.f8246d == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof e) {
            ((e) layoutParams).f8281p0 = this.f8246d;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f8247e;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f8248f;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    public void setIds(String str) {
        this.f8247e = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f8244b = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                a(str.substring(i10));
                return;
            } else {
                a(str.substring(i10, iIndexOf));
                i10 = iIndexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.f8248f = str;
        if (str == null) {
            return;
        }
        int i10 = 0;
        this.f8244b = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i10);
            if (iIndexOf == -1) {
                c(str.substring(i10));
                return;
            } else {
                c(str.substring(i10, iIndexOf));
                i10 = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f8247e = null;
        this.f8244b = 0;
        for (int i10 : iArr) {
            b(i10);
        }
    }

    @Override // android.view.View
    public final void setTag(int i10, Object obj) {
        super.setTag(i10, obj);
        if (obj == null && this.f8247e == null) {
            b(i10);
        }
    }

    public c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8243a = new int[32];
        this.f8249g = new HashMap();
        this.f8245c = context;
        g(attributeSet);
    }

    public void e(ConstraintLayout constraintLayout) {
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }
}

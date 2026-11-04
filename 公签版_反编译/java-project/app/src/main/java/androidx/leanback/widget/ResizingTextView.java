package androidx.leanback.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.widget.TextView;

/* loaded from: classes.dex */
class ResizingTextView extends TextView {

    /* renamed from: a, reason: collision with root package name */
    public final int f1536a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1537b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1538c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1539d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1540e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1541f;

    /* renamed from: g, reason: collision with root package name */
    public int f1542g;

    /* renamed from: h, reason: collision with root package name */
    public float f1543h;

    /* renamed from: i, reason: collision with root package name */
    public int f1544i;

    /* renamed from: j, reason: collision with root package name */
    public int f1545j;

    public ResizingTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.textViewStyle);
        this.f1541f = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n1.a.f11249f, R.attr.textViewStyle, 0);
        try {
            this.f1536a = typedArrayObtainStyledAttributes.getInt(1, 1);
            this.f1537b = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, -1);
            this.f1538c = typedArrayObtainStyledAttributes.getBoolean(0, false);
            this.f1539d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0);
            this.f1540e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void a(int i10, int i11) {
        if (isPaddingRelative()) {
            setPaddingRelative(getPaddingStart(), i10, getPaddingEnd(), i11);
        } else {
            setPadding(getPaddingLeft(), i10, getPaddingRight(), i11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00cd A[PHI: r2
  0x00cd: PHI (r2v6 boolean) = (r2v2 boolean), (r2v8 boolean) binds: [B:40:0x00ca, B:27:0x0097] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i10, int i11) {
        boolean z;
        int i12;
        boolean z4 = true;
        if (!this.f1541f) {
            this.f1542g = (int) getTextSize();
            this.f1543h = getLineSpacingExtra();
            this.f1544i = getPaddingTop();
            this.f1545j = getPaddingBottom();
            this.f1541f = true;
        }
        boolean z10 = false;
        setTextSize(0, this.f1542g);
        setLineSpacing(this.f1543h, getLineSpacingMultiplier());
        a(this.f1544i, this.f1545j);
        super.onMeasure(i10, i11);
        Layout layout = getLayout();
        if (layout == null || (this.f1536a & 1) <= 0) {
            z = false;
        } else {
            int lineCount = layout.getLineCount();
            int maxLines = getMaxLines();
            if (maxLines > 1 && lineCount == maxLines) {
                z = true;
            }
        }
        int textSize = (int) getTextSize();
        boolean z11 = this.f1538c;
        int i13 = this.f1537b;
        if (z) {
            if (i13 != -1 && textSize != i13) {
                setTextSize(0, i13);
                z10 = true;
            }
            float f10 = (this.f1543h + this.f1542g) - i13;
            if (z11 && getLineSpacingExtra() != f10) {
                setLineSpacing(f10, getLineSpacingMultiplier());
                z10 = true;
            }
            int i14 = this.f1544i + this.f1539d;
            int i15 = this.f1545j + this.f1540e;
            if (getPaddingTop() == i14 && getPaddingBottom() == i15) {
                z4 = z10;
            } else {
                a(i14, i15);
            }
        } else {
            if (i13 != -1 && textSize != (i12 = this.f1542g)) {
                setTextSize(0, i12);
                z10 = true;
            }
            if (z11) {
                float lineSpacingExtra = getLineSpacingExtra();
                float f11 = this.f1543h;
                if (lineSpacingExtra != f11) {
                    setLineSpacing(f11, getLineSpacingMultiplier());
                    z10 = true;
                }
            }
            if (getPaddingTop() != this.f1544i || getPaddingBottom() != this.f1545j) {
                a(this.f1544i, this.f1545j);
            }
        }
        if (z4) {
            super.onMeasure(i10, i11);
        }
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.y0(callback, this));
    }
}

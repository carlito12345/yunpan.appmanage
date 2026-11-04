package i0;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public final class a extends c {

    /* renamed from: h, reason: collision with root package name */
    public int f8233h;

    /* renamed from: i, reason: collision with root package name */
    public int f8234i;

    /* renamed from: j, reason: collision with root package name */
    public f0.a f8235j;

    public a(Context context) {
        super(context);
        setVisibility(8);
    }

    @Override // i0.c
    public final void g(AttributeSet attributeSet) {
        super.g(attributeSet);
        this.f8235j = new f0.a();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, q.f8393b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == 26) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == 25) {
                    this.f8235j.f5047t0 = typedArrayObtainStyledAttributes.getBoolean(index, true);
                } else if (index == 27) {
                    this.f8235j.f5048u0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f8246d = this.f8235j;
        i();
    }

    public boolean getAllowsGoneWidget() {
        return this.f8235j.f5047t0;
    }

    public int getMargin() {
        return this.f8235j.f5048u0;
    }

    public int getType() {
        return this.f8233h;
    }

    @Override // i0.c
    public final void h(f0.d dVar, boolean z) {
        int i10 = this.f8233h;
        this.f8234i = i10;
        if (z) {
            if (i10 == 5) {
                this.f8234i = 1;
            } else if (i10 == 6) {
                this.f8234i = 0;
            }
        } else if (i10 == 5) {
            this.f8234i = 0;
        } else if (i10 == 6) {
            this.f8234i = 1;
        }
        if (dVar instanceof f0.a) {
            ((f0.a) dVar).s0 = this.f8234i;
        }
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f8235j.f5047t0 = z;
    }

    public void setDpMargin(int i10) {
        this.f8235j.f5048u0 = (int) ((i10 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i10) {
        this.f8235j.f5048u0 = i10;
    }

    public void setType(int i10) {
        this.f8233h = i10;
    }
}

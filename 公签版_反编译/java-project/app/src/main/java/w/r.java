package w;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public ColorStateList f17226a = null;

    /* renamed from: b, reason: collision with root package name */
    public PorterDuff.Mode f17227b = null;

    /* renamed from: c, reason: collision with root package name */
    public boolean f17228c = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f17229d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17230e;

    /* renamed from: f, reason: collision with root package name */
    public final TextView f17231f;

    public /* synthetic */ r(TextView textView) {
        this.f17231f = textView;
    }

    public void a() {
        CompoundButton compoundButton = (CompoundButton) this.f17231f;
        Drawable drawableI = android.support.v4.media.session.b.i(compoundButton);
        if (drawableI != null) {
            if (this.f17228c || this.f17229d) {
                Drawable drawableMutate = com.bumptech.glide.c.n0(drawableI).mutate();
                if (this.f17228c) {
                    com.bumptech.glide.c.f0(drawableMutate, this.f17226a);
                }
                if (this.f17229d) {
                    com.bumptech.glide.c.g0(drawableMutate, this.f17227b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(drawableMutate);
            }
        }
    }

    public void b() {
        q qVar = (q) this.f17231f;
        Drawable checkMarkDrawable = qVar.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.f17228c || this.f17229d) {
                Drawable drawableMutate = com.bumptech.glide.c.n0(checkMarkDrawable).mutate();
                if (this.f17228c) {
                    com.bumptech.glide.c.f0(drawableMutate, this.f17226a);
                }
                if (this.f17229d) {
                    com.bumptech.glide.c.g0(drawableMutate, this.f17227b);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(qVar.getDrawableState());
                }
                qVar.setCheckMarkDrawable(drawableMutate);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c(AttributeSet attributeSet, int i10) {
        int resourceId;
        int resourceId2;
        CompoundButton compoundButton = (CompoundButton) this.f17231f;
        Context context = compoundButton.getContext();
        int[] iArr = p.a.f12526m;
        s4.a aVarJ = s4.a.j(context, attributeSet, iArr, i10);
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        x0.b1.w(compoundButton, compoundButton.getContext(), iArr, attributeSet, (TypedArray) aVarJ.f14294c, i10);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    compoundButton.setButtonDrawable(com.bumptech.glide.d.x(compoundButton.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                compoundButton.setButtonDrawable(com.bumptech.glide.d.x(compoundButton.getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                android.support.v4.media.session.b.G(compoundButton, aVarJ.d(2));
            }
            if (typedArray.hasValue(3)) {
                PorterDuff.Mode modeB = n1.b(typedArray.getInt(3, -1), null);
                if (Build.VERSION.SDK_INT >= 21) {
                    b1.b.d(compoundButton, modeB);
                } else {
                    ((b1.w) compoundButton).setSupportButtonTintMode(modeB);
                }
            }
        } finally {
            aVarJ.r();
        }
    }
}

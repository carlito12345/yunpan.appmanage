package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final gf.g f3547a;

    /* renamed from: b, reason: collision with root package name */
    public final gf.g f3548b;

    public c(Context context) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(android.support.v4.media.session.b.F(context, k.class.getCanonicalName(), R.attr.materialCalendarStyle).data, q6.a.f13041m);
        gf.g.z(context, typedArrayObtainStyledAttributes.getResourceId(4, 0));
        gf.g.z(context, typedArrayObtainStyledAttributes.getResourceId(2, 0));
        gf.g.z(context, typedArrayObtainStyledAttributes.getResourceId(3, 0));
        gf.g.z(context, typedArrayObtainStyledAttributes.getResourceId(5, 0));
        ColorStateList colorStateListW = com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 7);
        this.f3547a = gf.g.z(context, typedArrayObtainStyledAttributes.getResourceId(9, 0));
        gf.g.z(context, typedArrayObtainStyledAttributes.getResourceId(8, 0));
        this.f3548b = gf.g.z(context, typedArrayObtainStyledAttributes.getResourceId(10, 0));
        new Paint().setColor(colorStateListW.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}

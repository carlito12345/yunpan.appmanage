package com.google.android.material.theme;

import a7.d;
import android.content.Context;
import android.util.AttributeSet;
import com.google.android.material.button.MaterialButton;
import i7.a;
import q.d0;
import q7.w;
import w.b1;
import w.c0;
import w.n;
import w.o;
import w.p;

/* loaded from: classes.dex */
public class MaterialComponentsViewInflater extends d0 {
    @Override // q.d0
    public final n a(Context context, AttributeSet attributeSet) {
        return new w(context, attributeSet);
    }

    @Override // q.d0
    public final o b(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // q.d0
    public final p c(Context context, AttributeSet attributeSet) {
        return new d(context, attributeSet);
    }

    @Override // q.d0
    public final c0 d(Context context, AttributeSet attributeSet) {
        return new a(context, attributeSet);
    }

    @Override // q.d0
    public final b1 e(Context context, AttributeSet attributeSet) {
        return new r7.a(context, attributeSet);
    }
}

package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import v.k;
import v.z;

/* loaded from: classes.dex */
public class NavigationMenuView extends RecyclerView implements z {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setLayoutManager(new LinearLayoutManager(1, false));
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // v.z
    public final void a(k kVar) {
    }
}

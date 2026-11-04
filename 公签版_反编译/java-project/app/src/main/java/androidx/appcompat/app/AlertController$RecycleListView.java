package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import p.a;

/* loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {

    /* renamed from: a, reason: collision with root package name */
    public final int f875a;

    /* renamed from: b, reason: collision with root package name */
    public final int f876b;

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f12532t);
        this.f876b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, -1);
        this.f875a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, -1);
    }
}

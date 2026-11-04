package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class s1 {

    /* renamed from: a, reason: collision with root package name */
    public int f2271a;

    /* renamed from: b, reason: collision with root package name */
    public int f2272b;

    public final void a(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        this.f2271a = view.getLeft();
        this.f2272b = view.getTop();
        view.getRight();
        view.getBottom();
    }
}

package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public abstract class u2 extends t1 {

    /* renamed from: g, reason: collision with root package name */
    public boolean f2316g = true;

    @Override // androidx.recyclerview.widget.t1
    public final boolean a(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, s1 s1Var, s1 s1Var2) {
        int i10;
        int i11;
        int i12 = s1Var.f2271a;
        int i13 = s1Var.f2272b;
        if (viewHolder2.shouldIgnore()) {
            int i14 = s1Var.f2271a;
            i11 = s1Var.f2272b;
            i10 = i14;
        } else {
            i10 = s1Var2.f2271a;
            i11 = s1Var2.f2272b;
        }
        s sVar = (s) this;
        if (viewHolder == viewHolder2) {
            return sVar.g(viewHolder, i12, i13, i10, i11);
        }
        float translationX = viewHolder.itemView.getTranslationX();
        float translationY = viewHolder.itemView.getTranslationY();
        float alpha = viewHolder.itemView.getAlpha();
        sVar.l(viewHolder);
        viewHolder.itemView.setTranslationX(translationX);
        viewHolder.itemView.setTranslationY(translationY);
        viewHolder.itemView.setAlpha(alpha);
        sVar.l(viewHolder2);
        viewHolder2.itemView.setTranslationX(-((int) ((i10 - i12) - translationX)));
        viewHolder2.itemView.setTranslationY(-((int) ((i11 - i13) - translationY)));
        viewHolder2.itemView.setAlpha(0.0f);
        sVar.f2253k.add(new q(viewHolder, viewHolder2, i12, i13, i10, i11));
        return true;
    }

    public abstract boolean g(RecyclerView.ViewHolder viewHolder, int i10, int i11, int i12, int i13);
}

package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public abstract class o1 {
    public abstract void onChanged();

    public void onItemRangeChanged(int i10, int i11) {
    }

    public void onItemRangeInserted(int i10, int i11) {
    }

    public void onItemRangeMoved(int i10, int i11, int i12) {
    }

    public void onItemRangeRemoved(int i10, int i11) {
    }

    public void onStateRestorationPolicyChanged() {
    }

    public void onItemRangeChanged(int i10, int i11, Object obj) {
        onItemRangeChanged(i10, i11);
    }
}

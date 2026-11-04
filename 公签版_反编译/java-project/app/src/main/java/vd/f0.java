package vd;

/* loaded from: classes.dex */
public final class f0 extends e0 {
    public f0(vc.b bVar) {
        super(bVar);
    }

    public final void finalize() {
        if (!l() || this.f16832e.get() == 0) {
            return;
        }
        e0.f16826f.warn("Tree connection was not properly released " + this);
    }
}

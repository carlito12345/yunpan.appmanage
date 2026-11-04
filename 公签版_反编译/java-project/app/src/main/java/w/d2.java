package w;

/* loaded from: classes.dex */
public final class d2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17045a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g2 f17046b;

    public /* synthetic */ d2(g2 g2Var, int i10) {
        this.f17045a = i10;
        this.f17046b = g2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17045a) {
            case 0:
                t1 t1Var = this.f17046b.f17070c;
                if (t1Var != null) {
                    t1Var.setListSelectionHidden(true);
                    t1Var.requestLayout();
                    break;
                }
                break;
            default:
                g2 g2Var = this.f17046b;
                t1 t1Var2 = g2Var.f17070c;
                if (t1Var2 != null && x0.b1.l(t1Var2) && g2Var.f17070c.getCount() > g2Var.f17070c.getChildCount() && g2Var.f17070c.getChildCount() <= g2Var.f17079m) {
                    g2Var.B.setInputMethodMode(2);
                    g2Var.show();
                    break;
                }
                break;
        }
    }
}

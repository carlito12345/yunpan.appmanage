package a2;

import ha.qa;
import ua.a5;

/* loaded from: classes.dex */
public final /* synthetic */ class f0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f158a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f159b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f160c;

    public /* synthetic */ f0(Object obj, boolean z, int i10) {
        this.f158a = i10;
        this.f160c = obj;
        this.f159b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z = this.f159b;
        Object obj = this.f160c;
        switch (this.f158a) {
            case 0:
                j0 j0Var = (j0) obj;
                j0Var.getClass();
                String str = u1.f0.f15206a;
                y1.x xVar = j0Var.f196c.f18808a;
                if (xVar.U0 != z) {
                    xVar.U0 = z;
                    xVar.f18861m.e(23, new qa(9, z));
                    break;
                }
                break;
            default:
                ((a5) obj).f15565a.D.setText("onReverseStateChanged：" + z);
                break;
        }
    }
}

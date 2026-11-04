package ha;

/* loaded from: classes.dex */
public final class x3 extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8037b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y3 f8038c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ x3(y3 y3Var, int i10) {
        super(28);
        this.f8037b = i10;
        this.f8038c = y3Var;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f8037b) {
            case 0:
                y3 y3Var = this.f8038c;
                y3Var.f8081j.setText(y3Var.f8078g.isEmpty() ? "确定导出" : "确定导入");
                y3Var.dismiss();
                break;
            default:
                this.f8038c.dismiss();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f8037b) {
            case 1:
                this.f8038c.l.q((x9.x0) obj);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f8037b) {
            case 0:
                y3 y3Var = this.f8038c;
                y3Var.f8081j.setText(y3Var.f8078g.isEmpty() ? "确定导出" : "确定导入");
                y3Var.dismiss();
                break;
        }
    }
}

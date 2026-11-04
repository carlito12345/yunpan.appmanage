package ha;

/* loaded from: classes.dex */
public final class p4 extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7568b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ q4 f7569c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p4(q4 q4Var, int i10) {
        super(28);
        this.f7568b = i10;
        this.f7569c = q4Var;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f7568b) {
            case 1:
                th2.printStackTrace();
                this.f7569c.a();
                fa.b0.f5652a.getClass();
                if (!a2.w0.N()) {
                    com.yunpan.appmanage.util.a0.v("清理完成", true);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.y("清理失败，请用其它模式");
                    break;
                }
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f7568b) {
            case 0:
                this.f7569c.f7609h.setText((String) obj);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f7568b) {
            case 1:
                q4 q4Var = this.f7569c;
                if (q4Var.f7610i != 4) {
                    com.yunpan.appmanage.util.a0.v("清理完成", true);
                    q4Var.a();
                    break;
                }
                break;
        }
    }
}

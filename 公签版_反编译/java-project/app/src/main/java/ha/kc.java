package ha;

/* loaded from: classes.dex */
public final class kc implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7330a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ lc f7331b;

    public /* synthetic */ kc(lc lcVar, int i10) {
        this.f7330a = i10;
        this.f7331b = lcVar;
    }

    @Override // ha.wd
    public final void D() {
        int i10 = this.f7330a;
    }

    @Override // ha.wd
    public final void t() {
        switch (this.f7330a) {
            case 0:
                lc lcVar = this.f7331b;
                lcVar.getClass();
                fa.h0 h0Var = fa.g0.f5682a;
                String strD = h0Var.d();
                if (strD.isEmpty()) {
                    strD = lcVar.f6725b.getFilesDir().getParentFile().getPath();
                }
                if (!com.yunpan.appmanage.util.a0.g(strD + "/快捷指令.txt")) {
                    lcVar.a();
                    break;
                } else {
                    StringBuilder sb2 = new StringBuilder("路径：");
                    if (!h0Var.d().isEmpty()) {
                        strD = "内部存储/快捷指令.txt";
                    }
                    sb2.append(strD);
                    new z6(lcVar.f6724a, lcVar.f6725b, "已存在文件：快捷指令.txt", sb2.toString(), "取消保存", "覆盖保存", new kc(lcVar, 1), 0).show();
                    break;
                }
            default:
                this.f7331b.a();
                break;
        }
    }

    private final void a() {
    }

    private final void b() {
    }
}

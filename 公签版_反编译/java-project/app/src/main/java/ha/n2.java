package ha;

import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class n2 extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7456b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7457c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ o2 f7458d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n2(o2 o2Var, int i10, int i11) {
        super(28);
        this.f7456b = i11;
        this.f7458d = o2Var;
        this.f7457c = i10;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f7456b) {
            case 0:
                com.yunpan.appmanage.util.a0.t("" + th2.getMessage());
                try {
                    o2 o2Var = this.f7458d;
                    o2Var.f7507m.D(this.f7457c, new x9.l3(R.drawable.tp_apk1, o2Var.f7503h.isUnInstall ? "提取应用" : "提取"));
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                o2 o2Var2 = this.f7458d;
                new z6(o2Var2.f6724a, o2Var2.f6725b, "此应用不是单独一个apk文件组成，由apk和odex文件组成\n\n就算提取了此应用，你也无法安装此应用！", "是否还要继续提取？", "继续提取", "取消提取", new h5.m(2, this)).show();
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f7456b) {
            case 0:
                com.yunpan.appmanage.util.a0.v("提取成功\n已将apk文件提取到【Download】目录中", false);
                this.f7458d.dismiss();
                break;
            default:
                this.f7458d.b(this.f7457c);
                break;
        }
    }
}

package ua;

import com.yunpan.appmanage.bean.FileCopyBean;

/* loaded from: classes.dex */
public final /* synthetic */ class f8 implements ea.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15677a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q8 f15678b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FileCopyBean f15679c;

    public /* synthetic */ f8(q8 q8Var, FileCopyBean fileCopyBean, int i10) {
        this.f15677a = i10;
        this.f15678b = q8Var;
        this.f15679c = fileCopyBean;
    }

    @Override // ea.b
    public final void f(boolean z) {
        switch (this.f15677a) {
            case 0:
                q8 q8Var = this.f15678b;
                q8Var.getClass();
                System.out.getClass();
                FileCopyBean fileCopyBean = this.f15679c;
                if (!z) {
                    q8Var.f15908g.a();
                    if (!fileCopyBean.isHasRepeatFile.get()) {
                        q8Var.s(fileCopyBean);
                        break;
                    } else {
                        new ha.y4(q8Var.f4530f, q8Var.f4529e, fileCopyBean, new n8(q8Var, fileCopyBean, 1)).show();
                        break;
                    }
                } else {
                    com.yunpan.appmanage.util.m mVar = new com.yunpan.appmanage.util.m(1);
                    mVar.f4081a.execute(new a2.e0(mVar, fileCopyBean, new f8(q8Var, fileCopyBean, 1), 7));
                    break;
                }
            default:
                q8 q8Var2 = this.f15678b;
                q8Var2.getClass();
                System.out.getClass();
                FileCopyBean fileCopyBean2 = this.f15679c;
                if (!z) {
                    q8Var2.f15908g.a();
                    if (!fileCopyBean2.isHasRepeatFile.get()) {
                        q8Var2.t(fileCopyBean2);
                        break;
                    } else {
                        new ha.y4(q8Var2.f4530f, q8Var2.f4529e, fileCopyBean2, new n8(q8Var2, fileCopyBean2, 0)).show();
                        break;
                    }
                } else {
                    q8Var2.f15908g.b("拷贝中");
                    new mc.c(0, new ph.j(3, fileCopyBean2)).d(rc.f.f13757b).a(fc.b.a()).b(new m8(q8Var2, 1));
                    break;
                }
        }
    }
}

package ua;

import com.yunpan.appmanage.bean.FileCopyBean;

/* loaded from: classes.dex */
public final class o8 implements com.yunpan.appmanage.util.o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ha.s5 f15869a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FileCopyBean f15870b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ q8 f15871c;

    public /* synthetic */ o8(q8 q8Var, ha.s5 s5Var, FileCopyBean fileCopyBean) {
        this.f15871c = q8Var;
        this.f15869a = s5Var;
        this.f15870b = fileCopyBean;
    }

    @Override // com.yunpan.appmanage.util.o
    public void f(ja.b bVar) {
        this.f15869a.a(bVar);
    }

    @Override // com.yunpan.appmanage.util.o
    public void j(com.yunpan.appmanage.util.q qVar, ja.b bVar) {
        this.f15869a.dismiss();
        boolean z = bVar.l;
        q8 q8Var = this.f15871c;
        if (z) {
            q8Var.f15912k.requestFocus();
            q8Var.v((x9.w3) g.b.d(q8Var.l, 1), true);
            return;
        }
        if (!qVar.f4094a.isEmpty()) {
            new ha.r5(q8Var.f4530f, q8Var.f4529e, qVar.f4094a).show();
        } else if (this.f15870b.isDelete && q8Var.I.getVisibility() == 0) {
            q8Var.I.setVisibility(8);
            q8Var.K.setVisibility(8);
        }
        q8Var.f15912k.requestFocus();
        q8Var.v((x9.w3) g.b.d(q8Var.l, 1), true);
    }
}

package ua;

import com.yunpan.appmanage.bean.FileCopyBean;

/* loaded from: classes.dex */
public final class n8 implements ha.x4 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15852a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FileCopyBean f15853b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ q8 f15854c;

    public /* synthetic */ n8(q8 q8Var, FileCopyBean fileCopyBean, int i10) {
        this.f15852a = i10;
        this.f15854c = q8Var;
        this.f15853b = fileCopyBean;
    }

    @Override // ha.x4
    public final void a() {
        switch (this.f15852a) {
            case 0:
                FileCopyBean fileCopyBean = this.f15853b;
                for (int size = fileCopyBean.files.size() - 1; size >= 0; size--) {
                    if (fileCopyBean.files.get(size).f18373j.equals("跳过")) {
                        fileCopyBean.files.remove(size);
                    }
                }
                this.f15854c.t(fileCopyBean);
                break;
            default:
                FileCopyBean fileCopyBean2 = this.f15853b;
                for (int size2 = fileCopyBean2.files.size() - 1; size2 >= 0; size2--) {
                    if (fileCopyBean2.files.get(size2).f18373j.equals("跳过")) {
                        fileCopyBean2.files.remove(size2);
                    }
                }
                this.f15854c.s(fileCopyBean2);
                break;
        }
    }

    @Override // ha.x4
    public final void c() {
        switch (this.f15852a) {
            case 0:
                q8 q8Var = this.f15854c;
                q8Var.I.setVisibility(0);
                q8Var.K.setVisibility(0);
                break;
            default:
                q8 q8Var2 = this.f15854c;
                q8Var2.I.setVisibility(0);
                q8Var2.K.setVisibility(0);
                break;
        }
    }
}

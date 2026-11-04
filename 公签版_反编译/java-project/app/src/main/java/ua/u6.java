package ua;

import com.yunpan.appmanage.bean.FileCopyBean;
import com.yunpan.appmanage.ui.ActivityStart;
import java.io.File;
import java.io.PrintStream;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class u6 implements fa.w, ha.g4 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15985a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f15986b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15987c;

    public /* synthetic */ u6(ActivityStart activityStart, boolean z, int i10) {
        this.f15987c = activityStart;
        this.f15986b = z;
        this.f15985a = i10;
    }

    @Override // fa.w
    public void c(String str, boolean z) {
        int i10 = ActivityStart.G;
        ActivityStart activityStart = (ActivityStart) this.f15987c;
        activityStart.getClass();
        if (!z) {
            com.yunpan.appmanage.util.a0.s("更改失败：" + str, false);
        } else {
            StringBuilder sb2 = new StringBuilder("shell：更改成功 (");
            sb2.append(this.f15986b ? "禁用" : "启用");
            sb2.append(")");
            com.yunpan.appmanage.util.a0.v(sb2.toString(), true);
            activityStart.D.e(this.f15985a);
        }
    }

    @Override // ha.g4
    public void k(x9.w3 w3Var) {
        i9 i9Var = (i9) this.f15987c;
        i9Var.getClass();
        x9.f0 f0Var = i9Var.z;
        int i10 = this.f15985a;
        if (new File(((x9.w3) f0Var.t(i10)).f18365b).getParent().equals(w3Var.f18365b)) {
            com.yunpan.appmanage.util.a0.s("文件本身就在当前目录", false);
            return;
        }
        boolean z = this.f15986b;
        if (z && ((x9.w3) i9Var.z.t(i10)).f18366c && w3Var.f18365b.startsWith(new File(((x9.w3) i9Var.z.t(i10)).f18365b).getParent())) {
            com.yunpan.appmanage.util.a0.s("暂不支持这样的骚操作", false);
            return;
        }
        PrintStream printStream = System.out;
        new File(((x9.w3) i9Var.z.t(i10)).f18365b).getParent();
        printStream.getClass();
        i9Var.f15744h.c("拷贝中");
        ArrayList arrayList = i9Var.Y;
        arrayList.clear();
        arrayList.add((x9.w3) i9Var.z.t(i10));
        FileCopyBean fileCopyBean = new FileCopyBean();
        fileCopyBean.isDelete = z;
        fileCopyBean.fromDir = new File(((x9.w3) arrayList.get(0)).f18365b).getParent();
        fileCopyBean.fromPaths = arrayList;
        String str = w3Var.f18365b;
        fileCopyBean.toDir = str;
        if (!str.endsWith("/")) {
            fileCopyBean.toDir = g.b.l(fileCopyBean.toDir, "/", new StringBuilder());
        }
        i9Var.f15744h.b("比对中");
        new com.yunpan.appmanage.util.m(0).a(fileCopyBean, new fa.c0(2, i9Var, fileCopyBean, z));
    }

    public /* synthetic */ u6(i9 i9Var, int i10, boolean z) {
        this.f15987c = i9Var;
        this.f15985a = i10;
        this.f15986b = z;
    }
}

package ua;

import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.ui.ActivityNezha;
import com.yunpan.appmanage.ui.ActivitySystemHasWrite;
import ha.qa;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class z3 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f16074b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f16075c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f16076d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f16077e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ z3(int i10, Object obj, Object obj2, boolean z) {
        super(28);
        this.f16074b = i10;
        this.f16077e = obj;
        this.f16075c = obj2;
        this.f16076d = z;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f16074b) {
            case 0:
                com.yunpan.appmanage.util.a0.t("无法获取本机apk文件");
                break;
            case 1:
                com.yunpan.appmanage.util.a0.t("无法获取本机apk文件");
                break;
            default:
                boolean z = this.f16076d;
                i9 i9Var = (i9) this.f16077e;
                if (!z) {
                    Toaster.show((CharSequence) ("读取失败：" + th2.getMessage()));
                    String message = th2.getMessage();
                    if (message == null || message.trim().isEmpty()) {
                        message = "读取目录失败";
                    }
                    i9Var.u(message, R.drawable.tp_noroot, true);
                    i9Var.I.setVisibility(8);
                    break;
                } else {
                    i9Var.G.setVisibility(8);
                    Toaster.show((CharSequence) ("加载失败：" + th2.getMessage()));
                    i9Var.f15750p.finishLoadMore();
                    break;
                }
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f16074b) {
            case 2:
                i9 i9Var = (i9) this.f16077e;
                i9Var.f15751q.r((List) obj);
                TvRecyclerView tvRecyclerView = i9Var.f15750p;
                WpPathBean wpPathBean = (WpPathBean) this.f16075c;
                tvRecyclerView.setHasMoreData(wpPathBean.hasMoreData);
                if (!this.f16076d) {
                    if (i9Var.f15751q.b() == 0) {
                        i9Var.u("没有文件/目录", R.drawable.tp_nofile, true);
                    }
                    i9Var.I.setVisibility(8);
                    break;
                } else {
                    i9Var.G.setVisibility(8);
                    i9Var.f15750p.finishLoadMore();
                    if (!wpPathBean.hasMoreData) {
                        i9Var.f15750p.finishLoadMoreWithNoMore();
                        break;
                    }
                }
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        Object obj = this.f16075c;
        int i10 = 6;
        boolean z = this.f16076d;
        Object obj2 = this.f16077e;
        switch (this.f16074b) {
            case 0:
                ArrayList arrayList = (ArrayList) obj;
                if (!arrayList.isEmpty()) {
                    ActivityNezha activityNezha = (ActivityNezha) obj2;
                    new ha.b6(activityNezha, activityNezha, arrayList, new qa(i10, z)).show();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.s("本机SD卡里面没有apk文件", false);
                    break;
                }
            case 1:
                int i11 = ActivitySystemHasWrite.F;
                ActivitySystemHasWrite activitySystemHasWrite = (ActivitySystemHasWrite) obj2;
                new ha.b6(activitySystemHasWrite, activitySystemHasWrite.A, (ArrayList) obj, new ha.h2(this, z, i10)).show();
                break;
        }
    }
}

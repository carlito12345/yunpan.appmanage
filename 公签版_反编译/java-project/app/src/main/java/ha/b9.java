package ha;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class b9 implements ea.e, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6807a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e9 f6808b;

    public /* synthetic */ b9(e9 e9Var, int i10) {
        this.f6807a = i10;
        this.f6808b = e9Var;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f6808b.f6978w.q(sVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        e9 e9Var = this.f6808b;
        int iC = 0;
        switch (this.f6807a) {
            case 1:
                ((x9.x0) e9Var.G.t(i10)).f18384b = !((x9.x0) e9Var.G.t(i10)).f18384b;
                e9Var.G.e(i10);
                if (i10 != 0) {
                    Context context = e9Var.f6725b;
                    Activity activity = e9Var.f6724a;
                    if (i10 != 1) {
                        if (i10 != 2) {
                            if (i10 != 3) {
                                if (i10 == 4 && ((x9.x0) e9Var.G.t(i10)).f18384b) {
                                    new z6(activity, context, "一般不要勾选这个！意思是：整条日志百分百一致方可触发！(注：不能删除和更改原本的日志)", "注：此功能仅相对于（单击操作）").show();
                                    break;
                                }
                            } else if (!((x9.x0) e9Var.G.t(i10)).f18384b) {
                                ((x9.x0) e9Var.G.t(i10)).f18383a = "N秒内仅触发一次";
                                e9Var.A.l("OutTimeOneMap", 0);
                                break;
                            } else {
                                ((x9.x0) e9Var.G.t(i10)).f18384b = !((x9.x0) e9Var.G.t(i10)).f18384b;
                                e9Var.G.e(i10);
                                new o1(activity, context, new c9(e9Var, i10), 10).show();
                                break;
                            }
                        } else if (((x9.x0) e9Var.G.t(i10)).f18384b) {
                            new z6(activity, context, "设置此映射：自动化任务开始后此日志映射仅触发一次", "特殊用途，一般不要勾选此功能").show();
                            break;
                        }
                    } else if (((x9.x0) e9Var.G.t(i10)).f18384b) {
                        new z6(activity, context, "等到松开日志：这个选项是干嘛的呢，有些方向盘按键按住时系统会一直发按下的日志，这就会产生多次按下(单击操作或双击操作)！除非换一条按下日志，又或者勾选这个，等到松开日志出现时再判断，如果不需要长按操作的话勾不勾都无所谓！", "预防没监听到松开日志，超过3秒时放弃等待").show();
                        break;
                    }
                }
                break;
            default:
                if (((z7.s) e9Var.f6978w.t(i10)).o("gnType").e() != 3) {
                    if (e9Var.f6978w.b() == 1) {
                        e9Var.f6972n.requestFocus();
                    }
                    e9Var.f6978w.C(i10);
                    break;
                } else {
                    String[] strArr = {"删除", "编辑"};
                    ArrayList arrayList = new ArrayList(2);
                    while (iC < 2) {
                        String str = strArr[iC];
                        iC = g.b.c(str, arrayList, str, iC, 1);
                    }
                    new fa(e9Var.f6724a, e9Var.f6725b, null, Collections.unmodifiableList(arrayList), new c9(e9Var, i10)).show();
                    break;
                }
        }
    }
}

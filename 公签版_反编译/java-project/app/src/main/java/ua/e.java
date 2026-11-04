package ua;

import android.content.Intent;
import com.yunpan.appmanage.ui.ActivityAdb;

/* loaded from: classes.dex */
public final class e extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15643b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityAdb f15644c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(ActivityAdb activityAdb, int i10) {
        super(28);
        this.f15643b = i10;
        this.f15644c = activityAdb;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f15643b) {
            case 0:
                this.f15644c.E.a();
                com.yunpan.appmanage.util.a0.y("修改失败，无权限");
                break;
            case 1:
                this.f15644c.E.a();
                break;
            case 2:
                com.yunpan.appmanage.util.a0.y("未开发");
                break;
            case 6:
                this.f15644c.E.a();
                break;
            case 7:
                StringBuilder sbR = l2.z.r(this.f15644c.E, "");
                sbR.append(th2.getMessage());
                com.yunpan.appmanage.util.a0.y(sbR.toString());
                break;
            case 8:
                this.f15644c.E.a();
                com.yunpan.appmanage.util.a0.y("修改失败，无权限");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        switch (this.f15643b) {
            case 2:
                try {
                    Intent intent = (Intent) obj;
                    intent.setFlags(872415232);
                    ActivityAdb activityAdb = this.f15644c;
                    int i10 = ActivityAdb.G;
                    activityAdb.A.startActivity(intent);
                    break;
                } catch (Exception e7) {
                    e7.printStackTrace();
                    com.yunpan.appmanage.util.a0.y("未开发");
                    return;
                }
        }
    }

    @Override // ha.l2, ec.e
    public void b(gc.b bVar) {
        switch (this.f15643b) {
            case 0:
                this.f15644c.E.c("修改中");
                break;
            case 1:
                this.f15644c.E.c("修改中");
                break;
            case 3:
                this.f15644c.E.c("设置中");
                break;
            case 4:
                this.f15644c.E.c("设置中");
                break;
            case 5:
                this.f15644c.E.c("设置中");
                break;
            case 6:
                this.f15644c.E.c("修改中");
                break;
            case 7:
                this.f15644c.E.c("修改中");
                break;
            case 8:
                this.f15644c.E.c("修改中");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        switch (this.f15643b) {
            case 0:
                ActivityAdb activityAdb = this.f15644c;
                activityAdb.E.a();
                da.g gVar = activityAdb.A;
                new ha.z6(gVar, gVar, "已修改，重启系统方可生效", "", "立即重启", "稍后再说", new s5.c(2)).show();
                break;
            case 1:
                this.f15644c.E.a();
                com.yunpan.appmanage.util.a0.w("修改完成");
                break;
            case 3:
                this.f15644c.E.a();
                break;
            case 4:
                this.f15644c.E.a();
                break;
            case 5:
                this.f15644c.E.a();
                break;
            case 6:
                this.f15644c.E.a();
                com.yunpan.appmanage.util.a0.w("修改完成");
                if (!fa.g0.f5682a.f()) {
                    fa.j jVar = fa.h.f5683a;
                    if (!jVar.i() && !fa.l.f5712a.isConnected()) {
                        jVar.h(null);
                        break;
                    }
                }
                break;
            case 7:
                this.f15644c.E.a();
                fa.b0.f5652a.getClass();
                if (!a2.w0.P()) {
                    com.yunpan.appmanage.util.a0.v("正在尝试连接adb", false);
                    com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                    if (wVar.f4127k != 5555) {
                        wVar.n(5555);
                    }
                    fa.h.f5683a.h(null);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.w("修改成功");
                    break;
                }
            case 8:
                this.f15644c.E.a();
                com.yunpan.appmanage.util.a0.w("修改完成");
                if (!fa.g0.f5682a.f()) {
                    fa.j jVar2 = fa.h.f5683a;
                    if (!jVar2.i() && !fa.l.f5712a.isConnected()) {
                        jVar2.h(null);
                        break;
                    }
                }
                break;
        }
    }
}

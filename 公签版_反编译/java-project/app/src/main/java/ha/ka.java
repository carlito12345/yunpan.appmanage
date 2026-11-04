package ha;

import android.view.View;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class ka implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ma f7326a;

    @Override // ec.d
    public void g(mc.b bVar) {
        ma maVar = this.f7326a;
        maVar.getClass();
        List<AppBean> list = MyDb.get().getAppDao().get_app_canStart();
        AppBean appBean = new AppBean();
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        appBean.name = kVar.f4039c;
        appBean.pack = kVar.f4041d;
        list.add(appBean);
        ArrayList arrayList = maVar.f7439i;
        if (arrayList == null) {
            AppBean appBean2 = new AppBean();
            appBean2.name = "小程序";
            appBean2.pack = "com.hozonauto.netahome.mini";
            list.add(appBean2);
        } else {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                list.add((AppBean) it.next());
            }
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            if (maVar.f7440j.contains(list.get(size).pack)) {
                list.remove(size);
            }
        }
        bVar.f(list);
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        ma maVar = this.f7326a;
        maVar.f7441k.c(((AppBean) maVar.f7438h.t(i10)).name, ((AppBean) maVar.f7438h.t(i10)).pack);
        maVar.dismiss();
    }
}

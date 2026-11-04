package ua;

import android.os.Build;
import android.view.View;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityAppStorage;
import java.io.PrintStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class a0 implements ec.d, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityAppStorage f15558a;

    public /* synthetic */ a0(ActivityAppStorage activityAppStorage) {
        this.f15558a = activityAppStorage;
    }

    @Override // ec.d
    public void g(mc.b bVar) throws InterruptedException {
        int i10 = ActivityAppStorage.H;
        ActivityAppStorage activityAppStorage = this.f15558a;
        activityAppStorage.getClass();
        List<AppBean> list = MyDb.get().getAppDao().get_app_storage();
        PrintStream printStream = System.out;
        list.size();
        printStream.getClass();
        Iterator<AppBean> it = list.iterator();
        while (it.hasNext()) {
            x9.y yVar = new x9.y(it.next());
            if (Build.VERSION.SDK_INT >= 26) {
                d.b.w(activityAppStorage.A, com.yunpan.appmanage.util.v.f4106a.f4115e, yVar);
            } else {
                d.b.G(activityAppStorage.A, yVar);
            }
            activityAppStorage.E.add(yVar);
        }
        if (Build.VERSION.SDK_INT < 26) {
            try {
                Thread.sleep(1666L);
            } catch (Exception unused) {
            }
        }
        Collections.sort(activityAppStorage.E, new qa.e(13));
        bVar.b();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        ActivityAppStorage activityAppStorage = this.f15558a;
        activityAppStorage.F.e(i10, ((x9.y) activityAppStorage.D.t(i10)).f18393a);
    }
}

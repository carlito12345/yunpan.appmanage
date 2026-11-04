package ua;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;
import com.yunpan.appmanage.ui.ActivityPs;
import com.yunpan.appmanage.ui.ActivitySidebarSet;
import com.yunpan.appmanage.ui.ActivityWindowInputAdbPair;
import ha.fa;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class i5 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15734a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ da.g f15735b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15736c;

    public /* synthetic */ i5(da.g gVar, Object obj, int i10) {
        this.f15734a = i10;
        this.f15735b = gVar;
        this.f15736c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i10 = 1;
        int i11 = 0;
        Object obj = this.f15736c;
        da.g gVar = this.f15735b;
        switch (this.f15734a) {
            case 0:
                int i12 = ActivityOuShangWhitelist.G;
                ActivityOuShangWhitelist activityOuShangWhitelist = (ActivityOuShangWhitelist) gVar;
                activityOuShangWhitelist.getClass();
                String strF = g.b.f((EditText) obj);
                if (!strF.isEmpty()) {
                    if (!strF.contains(".")) {
                        com.yunpan.appmanage.util.a0.u("请输入正确的包名");
                        break;
                    } else {
                        new mc.c(i11, new ma.b(activityOuShangWhitelist, 28, strF)).d(rc.f.f13757b).a(fc.b.a()).b(new k5(activityOuShangWhitelist, i11));
                        break;
                    }
                } else {
                    com.yunpan.appmanage.util.a0.u("请输入包名");
                    break;
                }
            case 1:
                ActivityPs activityPs = (ActivityPs) gVar;
                boolean z = activityPs.G;
                activityPs.G = true ^ z;
                ((ImageView) obj).setImageResource(!z ? R.drawable.tp_check1 : R.drawable.tp_check2);
                activityPs.C.stopScroll();
                activityPs.D.E(new ArrayList());
                activityPs.D.E(activityPs.G ? activityPs.E : activityPs.F);
                break;
            case 2:
                int i13 = ActivitySidebarSet.V0;
                ActivitySidebarSet activitySidebarSet = (ActivitySidebarSet) gVar;
                activitySidebarSet.getClass();
                ArrayList arrayList = (ArrayList) obj;
                new fa(activitySidebarSet, activitySidebarSet.A, null, arrayList, new g6(activitySidebarSet, i10, arrayList)).show();
                break;
            default:
                int i14 = ActivityWindowInputAdbPair.E;
                ActivityWindowInputAdbPair activityWindowInputAdbPair = (ActivityWindowInputAdbPair) gVar;
                activityWindowInputAdbPair.getClass();
                String strF2 = g.b.f((EditText) obj);
                if (!strF2.isEmpty()) {
                    if (activityWindowInputAdbPair.D.getText().toString().equals("确定")) {
                        activityWindowInputAdbPair.D.setText("连接中");
                        activityWindowInputAdbPair.C.setText("正在匹配中");
                        new mc.c(i11, new b8.a(strF2, 17)).d(rc.f.f13757b).a(fc.b.a()).b(new s7(2, activityWindowInputAdbPair));
                        break;
                    }
                } else {
                    com.yunpan.appmanage.util.a0.u("请输入配对码");
                    break;
                }
                break;
        }
    }
}

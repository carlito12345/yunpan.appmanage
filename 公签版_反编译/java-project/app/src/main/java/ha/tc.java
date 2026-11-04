package ha;

import android.graphics.Point;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatSeekBar;
import com.yunpan.appmanage.bean.StrIntBoolBean;
import com.yunpan.appmanage.ui.ActivityFloatButtonSet;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class tc implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7833a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7834b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7835c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7836d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7837e;

    public /* synthetic */ tc(Object obj, Object obj2, Object obj3, Object obj4, int i10) {
        this.f7833a = i10;
        this.f7834b = obj;
        this.f7835c = obj2;
        this.f7836d = obj3;
        this.f7837e = obj4;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object obj = this.f7836d;
        Object obj2 = this.f7837e;
        Object obj3 = this.f7835c;
        Object obj4 = this.f7834b;
        switch (this.f7833a) {
            case 0:
                vc vcVar = (vc) obj4;
                vcVar.getClass();
                new fa(vcVar.f6724a, vcVar.f6725b, "选择显示位置", (ArrayList) obj3, new a2.g1((EditText) obj, 22, (Point) obj2)).show();
                break;
            case 1:
                int i10 = ActivityFloatButtonSet.E;
                ActivityFloatButtonSet activityFloatButtonSet = (ActivityFloatButtonSet) obj4;
                activityFloatButtonSet.getClass();
                z7.s sVarN = q4.a.n(activityFloatButtonSet);
                sVarN.l("ico", Integer.valueOf(activityFloatButtonSet.D));
                sVarN.l("size", Integer.valueOf(((AppCompatSeekBar) obj3).getProgress() * 5));
                sVarN.l("trans", Integer.valueOf(((AppCompatSeekBar) obj).getProgress()));
                x9.w0 w0Var = (x9.w0) obj2;
                sVarN.k("auto_hide", Boolean.valueOf(((StrIntBoolBean) w0Var.t(0)).boolValue));
                sVarN.k("auto_trans", Boolean.valueOf(((StrIntBoolBean) w0Var.t(1)).boolValue));
                sVarN.k("antiBurnScreen", Boolean.valueOf(((StrIntBoolBean) w0Var.t(2)).boolValue));
                sVarN.k("allow_move_outer_edge", Boolean.valueOf(((StrIntBoolBean) w0Var.t(3)).boolValue));
                sVarN.k("lock", Boolean.valueOf(((StrIntBoolBean) w0Var.t(4)).boolValue));
                q4.a.O(activityFloatButtonSet, sVarN);
                activityFloatButtonSet.finish();
                break;
            default:
                v3.r rVar = (v3.r) obj4;
                rVar.getClass();
                a.b bVar = (a.b) ((r1.m0) obj3);
                if (bVar.i(29)) {
                    y1.x xVar = (y1.x) bVar;
                    h2.i iVar = (h2.i) xVar.M();
                    iVar.getClass();
                    h2.h hVar = new h2.h(iVar);
                    v3.q qVar = (v3.q) obj2;
                    hVar.e(new r1.s0((r1.r0) obj, u7.g0.r(Integer.valueOf(qVar.f16533b))));
                    hVar.i(qVar.f16532a.f13620b.f13555c, false);
                    xVar.a0(hVar.a());
                    rVar.r(qVar.f16534c);
                    rVar.f16542e.f16577s.dismiss();
                    break;
                }
                break;
        }
    }
}

package ua;

import android.view.View;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.ui.ActivityFloatButton;
import com.yunpan.appmanage.ui.ActivityFloatButtonSet;
import ha.fa;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class w1 implements c6.e, TvRecyclerView.OnInBorderKeyEventListener, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16010a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityFloatButton f16011b;

    public /* synthetic */ w1(ActivityFloatButton activityFloatButton, int i10) {
        this.f16010a = i10;
        this.f16011b = activityFloatButton;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        ActivityFloatButton activityFloatButton = this.f16011b;
        activityFloatButton.K.q(sVar);
        activityFloatButton.C.p(String.valueOf(activityFloatButton.D)).k(sVar);
        q4.a.O(activityFloatButton.A, activityFloatButton.C);
    }

    @Override // com.owen.tvrecyclerview.widget.TvRecyclerView.OnInBorderKeyEventListener
    public boolean onInBorderKeyEvent(int i10, View view) {
        ActivityFloatButton activityFloatButton = this.f16011b;
        switch (this.f16010a) {
            case 3:
                if (i10 != 130) {
                    int i11 = ActivityFloatButton.N;
                    activityFloatButton.getClass();
                    break;
                } else if (activityFloatButton.H.b() > 0) {
                    activityFloatButton.G.requestFocus();
                    break;
                }
                break;
            default:
                if (i10 != 66) {
                    int i12 = ActivityFloatButton.N;
                    activityFloatButton.getClass();
                    break;
                } else if (activityFloatButton.K.b() <= 0) {
                    activityFloatButton.E.setSelectionWithSmooth(2);
                    break;
                } else {
                    activityFloatButton.I.requestFocus();
                    break;
                }
        }
        return false;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        ActivityFloatButton activityFloatButton = this.f16011b;
        int iC = 0;
        switch (this.f16010a) {
            case 0:
                int i11 = ActivityFloatButton.N;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            activityFloatButton.getClass();
                            break;
                        } else {
                            ha.t8.a(activityFloatButton, activityFloatButton.A, -1, false, new w1(activityFloatButton, 5));
                            break;
                        }
                    } else {
                        activityFloatButton.w(ActivityFloatButtonSet.class);
                        break;
                    }
                } else {
                    activityFloatButton.finish();
                    break;
                }
            case 1:
                int i12 = ActivityFloatButton.N;
                activityFloatButton.y(i10);
                break;
            default:
                ActivityFloatButton activityFloatButton2 = this.f16011b;
                x9.t2 t2Var = activityFloatButton2.K;
                if (!((z7.s) t2Var.t(i10)).f19480a.containsKey("gnType") || ((z7.s) t2Var.t(i10)).o("gnType").e() != 3) {
                    activityFloatButton2.x(i10);
                    break;
                } else {
                    da.g gVar2 = activityFloatButton2.A;
                    String[] strArr = {"删除", "编辑"};
                    ArrayList arrayList = new ArrayList(2);
                    while (iC < 2) {
                        String str = strArr[iC];
                        iC = g.b.c(str, arrayList, str, iC, 1);
                    }
                    new fa(activityFloatButton2, gVar2, null, Collections.unmodifiableList(arrayList), new x1(activityFloatButton2, i10)).show();
                    break;
                }
                break;
        }
    }
}

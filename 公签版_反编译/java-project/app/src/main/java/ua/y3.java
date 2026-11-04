package ua;

import android.provider.Settings;
import com.yunpan.appmanage.ui.ActivityLaboratory;

/* loaded from: classes.dex */
public final /* synthetic */ class y3 implements ha.n7, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w3 f16052a;

    public /* synthetic */ y3(w3 w3Var) {
        this.f16052a = w3Var;
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        boolean zPutInt;
        ActivityLaboratory activityLaboratory = this.f16052a.f16014b;
        try {
            int i10 = ActivityLaboratory.I;
            zPutInt = Settings.System.putInt(activityLaboratory.A.getContentResolver(), "screen_off_timeout", -1);
        } catch (Exception unused) {
            zPutInt = false;
        }
        if (!zPutInt) {
            try {
                int i11 = ActivityLaboratory.I;
                zPutInt = Settings.System.putInt(activityLaboratory.A.getContentResolver(), "screen_off_timeout", Integer.MAX_VALUE);
            } catch (Exception unused2) {
            }
        }
        if (!zPutInt) {
            fa.b0.f5652a.getClass();
            if (a2.w0.h("settings put system screen_off_timeout 2147483647").f5648a != 0) {
                android.support.v4.media.session.a.B("修改失败", bVar);
                return;
            }
        }
        bVar.b();
    }

    @Override // ha.n7
    public void h(int i10) {
        w3 w3Var = this.f16052a;
        w3Var.getClass();
        new mc.c(0, new ha.o(i10, 12, w3Var)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(12));
    }
}

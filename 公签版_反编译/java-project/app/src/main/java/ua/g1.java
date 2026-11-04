package ua;

import android.view.View;
import android.widget.ImageView;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityDebugLogcat;
import com.yunpan.appmanage.ui.ActivityDesktopSelected;
import com.yunpan.appmanage.ui.ActivityDisplayStartApp;
import com.yunpan.appmanage.ui.ActivityFloatButtonSet;
import com.yunpan.appmanage.ui.ActivityHome;
import com.yunpan.appmanage.ui.ActivityImmersive;
import com.yunpan.appmanage.ui.ActivityJieTText;
import com.yunpan.appmanage.ui.ActivityJieTText2;
import com.yunpan.appmanage.ui.ActivityJiliE01;
import com.yunpan.appmanage.ui.ActivityJiliE02;
import com.yunpan.appmanage.ui.ActivityKeyMapAccSet;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcatHelp;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcatSet;
import com.yunpan.appmanage.ui.ActivityKeyMapNissanSet;
import com.yunpan.appmanage.ui.ActivityKeyMapXingyuanSet;
import com.yunpan.appmanage.ui.ActivityKeymapAiOnY;
import com.yunpan.appmanage.ui.ActivityKeymapFlyOS18;
import com.yunpan.appmanage.ui.ActivityKeymapJieT;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import com.yunpan.appmanage.ui.ActivityNezha;
import com.yunpan.appmanage.ui.ActivityNissan;
import com.yunpan.appmanage.ui.ActivityNissanTextGN;
import com.yunpan.appmanage.ui.ActivityNissanTextReverse;
import com.yunpan.appmanage.ui.ActivityNissanTextVehicle;
import com.yunpan.appmanage.ui.ActivityOuShang;
import com.yunpan.appmanage.ui.ActivityOuShangStatusBar;
import com.yunpan.appmanage.ui.ActivityOuShangStatusBarNoRoot;
import com.yunpan.appmanage.ui.ActivitySeccompRoot;
import com.yunpan.appmanage.ui.ActivityStart;
import com.yunpan.appmanage.ui.ActivityStudy;

/* loaded from: classes.dex */
public final /* synthetic */ class g1 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15686a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ da.g f15687b;

    public /* synthetic */ g1(da.g gVar, int i10) {
        this.f15686a = i10;
        this.f15687b = gVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws NumberFormatException {
        int i10 = R.drawable.tp_check2;
        da.g gVar = this.f15687b;
        switch (this.f15686a) {
            case 0:
                int i11 = ActivityDebugLogcat.E;
                ((ActivityDebugLogcat) gVar).finish();
                break;
            case 1:
                int i12 = ActivityDesktopSelected.E;
                ((ActivityDesktopSelected) gVar).finish();
                break;
            case 2:
                int i13 = ActivityDisplayStartApp.F;
                ((ActivityDisplayStartApp) gVar).finish();
                break;
            case 3:
                int i14 = ActivityFloatButtonSet.E;
                ((ActivityFloatButtonSet) gVar).finish();
                break;
            case 4:
                int i15 = ActivityHome.O;
                ((ActivityHome) gVar).finish();
                break;
            case 5:
                int i16 = ActivityImmersive.N;
                ((ActivityImmersive) gVar).finish();
                break;
            case 6:
                int i17 = ActivityJieTText.f3978t0;
                ((ActivityJieTText) gVar).finish();
                break;
            case 7:
                int i18 = ActivityJieTText2.f3980a1;
                ((ActivityJieTText2) gVar).finish();
                break;
            case 8:
                int i19 = ActivityJiliE01.F;
                ((ActivityJiliE01) gVar).finish();
                break;
            case 9:
                int i20 = ActivityJiliE02.E;
                ((ActivityJiliE02) gVar).finish();
                break;
            case 10:
                int i21 = ActivityKeyMapAccSet.E;
                ((ActivityKeyMapAccSet) gVar).finish();
                break;
            case 11:
                int i22 = ActivityKeyMapLogcatHelp.C;
                ((ActivityKeyMapLogcatHelp) gVar).finish();
                break;
            case 12:
                int i23 = ActivityKeyMapLogcatSet.H;
                ((ActivityKeyMapLogcatSet) gVar).finish();
                break;
            case 13:
                int i24 = ActivityKeyMapNissanSet.E;
                ((ActivityKeyMapNissanSet) gVar).finish();
                break;
            case 14:
                int i25 = ActivityKeyMapXingyuanSet.H;
                ActivityKeyMapXingyuanSet activityKeyMapXingyuanSet = (ActivityKeyMapXingyuanSet) gVar;
                activityKeyMapXingyuanSet.getClass();
                try {
                    int i26 = Integer.parseInt(activityKeyMapXingyuanSet.E.getText().toString());
                    int i27 = Integer.parseInt(activityKeyMapXingyuanSet.F.getText().toString());
                    if (i26 < 100 || i26 > 10000) {
                        i26 = 500;
                    }
                    if (i27 < 100 || i27 > 10000) {
                        i27 = NoConst.RECORDING_TIME_INTERVAL;
                    }
                    if (i26 != activityKeyMapXingyuanSet.C || i27 != activityKeyMapXingyuanSet.D) {
                        activityKeyMapXingyuanSet.G.l("triggerTime_double", Integer.valueOf(i26));
                        activityKeyMapXingyuanSet.G.l("triggerTime_long", Integer.valueOf(i27));
                        q4.a.T(activityKeyMapXingyuanSet.A, activityKeyMapXingyuanSet.G);
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
                activityKeyMapXingyuanSet.finish();
                break;
            case 15:
                ActivityKeymapAiOnY activityKeymapAiOnY = (ActivityKeymapAiOnY) gVar;
                activityKeymapAiOnY.H.k("isOn", Boolean.valueOf(!r3.o("isOn").b()));
                q4.a.R(activityKeymapAiOnY.A, activityKeymapAiOnY.H);
                ta.m.c(activityKeymapAiOnY.A, "UP_INIT_AIONY");
                ImageView imageView = activityKeymapAiOnY.G;
                if (activityKeymapAiOnY.H.o("isOn").b()) {
                    i10 = R.drawable.tp_check1;
                }
                imageView.setImageResource(i10);
                break;
            case 16:
                ActivityKeymapFlyOS18 activityKeymapFlyOS18 = (ActivityKeymapFlyOS18) gVar;
                activityKeymapFlyOS18.H.k("isOn", Boolean.valueOf(!r3.o("isOn").b()));
                q4.a.T(activityKeymapFlyOS18.A, activityKeymapFlyOS18.H);
                ImageView imageView2 = activityKeymapFlyOS18.G;
                if (activityKeymapFlyOS18.H.o("isOn").b()) {
                    i10 = R.drawable.tp_check1;
                }
                imageView2.setImageResource(i10);
                break;
            case 17:
                ActivityKeymapJieT activityKeymapJieT = (ActivityKeymapJieT) gVar;
                activityKeymapJieT.H.k("isOn", Boolean.valueOf(!r3.o("isOn").b()));
                q4.a.U(activityKeymapJieT.A, activityKeymapJieT.H);
                ta.m.f(activityKeymapJieT.A);
                ImageView imageView3 = activityKeymapJieT.G;
                if (activityKeymapJieT.H.o("isOn").b()) {
                    i10 = R.drawable.tp_check1;
                }
                imageView3.setImageResource(i10);
                break;
            case 18:
                int i28 = ActivityLaboratory.I;
                ((ActivityLaboratory) gVar).finish();
                break;
            case 19:
                int i29 = ActivityNezha.F;
                ((ActivityNezha) gVar).finish();
                break;
            case 20:
                int i30 = ActivityNissan.I;
                ((ActivityNissan) gVar).finish();
                break;
            case 21:
                int i31 = ActivityNissanTextGN.F;
                ((ActivityNissanTextGN) gVar).finish();
                break;
            case 22:
                int i32 = ActivityNissanTextReverse.S0;
                ((ActivityNissanTextReverse) gVar).finish();
                break;
            case 23:
                int i33 = ActivityNissanTextVehicle.f3985a1;
                ((ActivityNissanTextVehicle) gVar).finish();
                break;
            case 24:
                int i34 = ActivityOuShang.E;
                ((ActivityOuShang) gVar).finish();
                break;
            case 25:
                int i35 = ActivityOuShangStatusBar.E;
                ((ActivityOuShangStatusBar) gVar).finish();
                break;
            case 26:
                int i36 = ActivityOuShangStatusBarNoRoot.F;
                ((ActivityOuShangStatusBarNoRoot) gVar).finish();
                break;
            case 27:
                int i37 = ActivitySeccompRoot.G;
                ((ActivitySeccompRoot) gVar).finish();
                break;
            case 28:
                int i38 = ActivityStart.G;
                ((ActivityStart) gVar).finish();
                break;
            default:
                int i39 = ActivityStudy.I;
                ((ActivityStudy) gVar).finish();
                break;
        }
    }
}

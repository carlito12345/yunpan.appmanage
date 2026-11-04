package ua;

import android.view.View;
import com.desay_svautomotive.libsvcarinfo.AiOnYType;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.ui.ActivityKeymapAiOnY;
import ha.ga;
import ha.ha;
import ha.n9;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class o3 implements c6.e, c6.f, ga {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15861a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityKeymapAiOnY f15862b;

    public /* synthetic */ o3(ActivityKeymapAiOnY activityKeymapAiOnY, int i10) {
        this.f15861a = i10;
        this.f15862b = activityKeymapAiOnY;
    }

    @Override // ha.ga
    public void b(int i10) {
        ActivityKeymapAiOnY activityKeymapAiOnY = this.f15862b;
        KeyCodeBean keyCodeBean = (KeyCodeBean) activityKeymapAiOnY.I.get(i10);
        z7.o oVarP = activityKeymapAiOnY.H.p("maps");
        for (int i11 = 0; i11 < oVarP.f19478a.size(); i11++) {
            if (android.support.v4.media.session.a.j(oVarP, i11, "type") == keyCodeBean.keyCode) {
                com.yunpan.appmanage.util.a0.u("已存在此映射");
                return;
            }
        }
        z7.s sVar = new z7.s();
        sVar.l("type", Integer.valueOf(keyCodeBean.keyCode));
        sVar.m("name", keyCodeBean.keyName);
        sVar.m("eventName", keyCodeBean.keyName);
        sVar.j("click", new z7.o());
        new ha.x7(activityKeymapAiOnY, activityKeymapAiOnY, sVar, new d3.g(-1, 14, activityKeymapAiOnY)).show();
    }

    @Override // c6.f
    public boolean c(int i10, View view) {
        x9.m0 m0Var = this.f15862b.D;
        if (i10 != m0Var.b() - 1 || ((String) m0Var.t(3)).equals("特殊")) {
            return false;
        }
        m0Var.p(3, "特殊");
        return true;
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        switch (this.f15861a) {
            case 0:
                ActivityKeymapAiOnY activityKeymapAiOnY = this.f15862b;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            x9.m0 m0Var = activityKeymapAiOnY.D;
                            if (!((String) m0Var.t(i10)).equals("特殊")) {
                                if (i10 == m0Var.b() - 1) {
                                    new ha.z6(activityKeymapAiOnY, activityKeymapAiOnY.A, "此功能是基于埃安Y的车机系统开发的，如果你的车机系统和埃安Y系统是一样的话，那么可以使用此功能", "").show();
                                    break;
                                }
                            } else {
                                new n9(activityKeymapAiOnY, activityKeymapAiOnY.A).show();
                                break;
                            }
                        } else if (activityKeymapAiOnY.F.b() != 0) {
                            new ha.z6(activityKeymapAiOnY, activityKeymapAiOnY.A, "确定要清空所有映射吗？", "", "确定", "取消", new i1(10, activityKeymapAiOnY)).show();
                            break;
                        }
                    } else {
                        ArrayList arrayList = activityKeymapAiOnY.I;
                        if (arrayList.isEmpty()) {
                            AiOnYType aiOnYType = AiOnYType.GEAR_P;
                            arrayList.add(new KeyCodeBean(aiOnYType.getValue(), aiOnYType.getDesc()));
                            AiOnYType aiOnYType2 = AiOnYType.GEAR_R;
                            arrayList.add(new KeyCodeBean(aiOnYType2.getValue(), aiOnYType2.getDesc()));
                            AiOnYType aiOnYType3 = AiOnYType.GEAR_N;
                            arrayList.add(new KeyCodeBean(aiOnYType3.getValue(), aiOnYType3.getDesc()));
                            AiOnYType aiOnYType4 = AiOnYType.GEAR_D;
                            arrayList.add(new KeyCodeBean(aiOnYType4.getValue(), aiOnYType4.getDesc()));
                            AiOnYType aiOnYType5 = AiOnYType.SPEED_START;
                            arrayList.add(new KeyCodeBean(aiOnYType5.getValue(), aiOnYType5.getDesc()));
                            AiOnYType aiOnYType6 = AiOnYType.SPEED_STOP;
                            arrayList.add(new KeyCodeBean(aiOnYType6.getValue(), aiOnYType6.getDesc()));
                            AiOnYType aiOnYType7 = AiOnYType.LAMP_OPEN;
                            arrayList.add(new KeyCodeBean(aiOnYType7.getValue(), aiOnYType7.getDesc()));
                            AiOnYType aiOnYType8 = AiOnYType.LAMP_CLOSE;
                            arrayList.add(new KeyCodeBean(aiOnYType8.getValue(), aiOnYType8.getDesc()));
                            AiOnYType aiOnYType9 = AiOnYType.DOOR_OPEN;
                            arrayList.add(new KeyCodeBean(aiOnYType9.getValue(), aiOnYType9.getDesc()));
                            AiOnYType aiOnYType10 = AiOnYType.DOOR_FL_OPEN;
                            arrayList.add(new KeyCodeBean(aiOnYType10.getValue(), aiOnYType10.getDesc()));
                            AiOnYType aiOnYType11 = AiOnYType.DOOR_FL_CLOSE;
                            arrayList.add(new KeyCodeBean(aiOnYType11.getValue(), aiOnYType11.getDesc()));
                            AiOnYType aiOnYType12 = AiOnYType.DOOR_FR_OPEN;
                            arrayList.add(new KeyCodeBean(aiOnYType12.getValue(), aiOnYType12.getDesc()));
                            AiOnYType aiOnYType13 = AiOnYType.DOOR_FR_CLOSE;
                            arrayList.add(new KeyCodeBean(aiOnYType13.getValue(), aiOnYType13.getDesc()));
                            AiOnYType aiOnYType14 = AiOnYType.DOOR_RL_OPEN;
                            arrayList.add(new KeyCodeBean(aiOnYType14.getValue(), aiOnYType14.getDesc()));
                            AiOnYType aiOnYType15 = AiOnYType.DOOR_RL_CLOSE;
                            arrayList.add(new KeyCodeBean(aiOnYType15.getValue(), aiOnYType15.getDesc()));
                            AiOnYType aiOnYType16 = AiOnYType.DOOR_RR_OPEN;
                            arrayList.add(new KeyCodeBean(aiOnYType16.getValue(), aiOnYType16.getDesc()));
                            AiOnYType aiOnYType17 = AiOnYType.DOOR_RR_CLOSE;
                            arrayList.add(new KeyCodeBean(aiOnYType17.getValue(), aiOnYType17.getDesc()));
                            AiOnYType aiOnYType18 = AiOnYType.DOOR_HATCH_OPEN;
                            arrayList.add(new KeyCodeBean(aiOnYType18.getValue(), aiOnYType18.getDesc()));
                            AiOnYType aiOnYType19 = AiOnYType.DOOR_HATCH_CLOSE;
                            arrayList.add(new KeyCodeBean(aiOnYType19.getValue(), aiOnYType19.getDesc()));
                            AiOnYType aiOnYType20 = AiOnYType.MODE_ECO;
                            arrayList.add(new KeyCodeBean(aiOnYType20.getValue(), aiOnYType20.getDesc()));
                            AiOnYType aiOnYType21 = AiOnYType.MODE_NORMAL;
                            arrayList.add(new KeyCodeBean(aiOnYType21.getValue(), aiOnYType21.getDesc()));
                            AiOnYType aiOnYType22 = AiOnYType.MODE_SPORT;
                            arrayList.add(new KeyCodeBean(aiOnYType22.getValue(), aiOnYType22.getDesc()));
                            AiOnYType aiOnYType23 = AiOnYType.MODE_I_PEDAL;
                            arrayList.add(new KeyCodeBean(aiOnYType23.getValue(), aiOnYType23.getDesc()));
                        }
                        new ha(activityKeymapAiOnY, activityKeymapAiOnY, null, arrayList, new o3(activityKeymapAiOnY, 3)).show();
                        break;
                    }
                } else {
                    int i11 = ActivityKeymapAiOnY.K;
                    activityKeymapAiOnY.finish();
                    break;
                }
                break;
            default:
                ActivityKeymapAiOnY activityKeymapAiOnY2 = this.f15862b;
                new ha.x7(activityKeymapAiOnY2, activityKeymapAiOnY2, (z7.s) activityKeymapAiOnY2.F.t(i10), new d3.g(i10, 14, activityKeymapAiOnY2)).show();
                break;
        }
    }
}

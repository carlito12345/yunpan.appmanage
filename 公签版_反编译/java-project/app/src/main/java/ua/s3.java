package ua;

import android.view.View;
import com.autolink.app.vehiclemanager.data.JieTKeymapType;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.ui.ActivityKeymapJieT;
import ha.ga;
import ha.ha;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class s3 implements c6.e, ga, ea.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15946a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityKeymapJieT f15947b;

    public /* synthetic */ s3(ActivityKeymapJieT activityKeymapJieT, int i10) {
        this.f15946a = i10;
        this.f15947b = activityKeymapJieT;
    }

    @Override // ha.ga
    public void b(final int i10) {
        ActivityKeymapJieT activityKeymapJieT = this.f15947b;
        final int i11 = 1;
        final int i12 = 0;
        switch (this.f15946a) {
            case 2:
                ActivityKeymapJieT activityKeymapJieT2 = this.f15947b;
                int i13 = ((KeyCodeBean) activityKeymapJieT2.I.get(i10)).keyCode;
                if (i13 != JieTKeymapType.MAP_TYPE_KEY.getValue()) {
                    if (i13 != JieTKeymapType.MAP_TYPE_GEAR.getValue()) {
                        int value = JieTKeymapType.MAP_TYPE_DOOR.getValue();
                        ArrayList arrayList = activityKeymapJieT2.M;
                        if (i13 != value) {
                            if (i13 == JieTKeymapType.MAP_TYPE_LAMP.getValue()) {
                                ArrayList arrayList2 = activityKeymapJieT2.K;
                                if (arrayList2.isEmpty()) {
                                    JieTKeymapType jieTKeymapType = JieTKeymapType.LAMP_TYPE_DA;
                                    arrayList2.add(new KeyCodeBean(jieTKeymapType.getValue(), jieTKeymapType.getDesc()));
                                    JieTKeymapType jieTKeymapType2 = JieTKeymapType.LAMP_TYPE_TURN_LEFT;
                                    arrayList2.add(new KeyCodeBean(jieTKeymapType2.getValue(), jieTKeymapType2.getDesc()));
                                    JieTKeymapType jieTKeymapType3 = JieTKeymapType.LAMP_TYPE_TURN_RIGHT;
                                    arrayList2.add(new KeyCodeBean(jieTKeymapType3.getValue(), jieTKeymapType3.getDesc()));
                                }
                                arrayList.clear();
                                JieTKeymapType jieTKeymapType4 = JieTKeymapType.LAMP_ON;
                                arrayList.add(new KeyCodeBean(jieTKeymapType4.getValue(), jieTKeymapType4.getDesc()));
                                JieTKeymapType jieTKeymapType5 = JieTKeymapType.LAMP_OFF;
                                arrayList.add(new KeyCodeBean(jieTKeymapType5.getValue(), jieTKeymapType5.getDesc()));
                                new ha(activityKeymapJieT2, activityKeymapJieT2, null, arrayList2, new s3(activityKeymapJieT2, 4)).show();
                                break;
                            }
                        } else {
                            ArrayList arrayList3 = activityKeymapJieT2.L;
                            if (arrayList3.isEmpty()) {
                                arrayList3.add(new KeyCodeBean(-1, "第一个开门时"));
                                JieTKeymapType jieTKeymapType6 = JieTKeymapType.DOOR_FL;
                                arrayList3.add(new KeyCodeBean(jieTKeymapType6.getValue(), jieTKeymapType6.getDesc()));
                                JieTKeymapType jieTKeymapType7 = JieTKeymapType.DOOR_FR;
                                arrayList3.add(new KeyCodeBean(jieTKeymapType7.getValue(), jieTKeymapType7.getDesc()));
                                JieTKeymapType jieTKeymapType8 = JieTKeymapType.DOOR_RL;
                                arrayList3.add(new KeyCodeBean(jieTKeymapType8.getValue(), jieTKeymapType8.getDesc()));
                                JieTKeymapType jieTKeymapType9 = JieTKeymapType.DOOR_RR;
                                arrayList3.add(new KeyCodeBean(jieTKeymapType9.getValue(), jieTKeymapType9.getDesc()));
                                JieTKeymapType jieTKeymapType10 = JieTKeymapType.DOOR_HATCH;
                                arrayList3.add(new KeyCodeBean(jieTKeymapType10.getValue(), jieTKeymapType10.getDesc()));
                            }
                            arrayList.clear();
                            JieTKeymapType jieTKeymapType11 = JieTKeymapType.DOOR_OPEN;
                            arrayList.add(new KeyCodeBean(jieTKeymapType11.getValue(), jieTKeymapType11.getDesc()));
                            JieTKeymapType jieTKeymapType12 = JieTKeymapType.DOOR_CLOSE;
                            arrayList.add(new KeyCodeBean(jieTKeymapType12.getValue(), jieTKeymapType12.getDesc()));
                            new ha(activityKeymapJieT2, activityKeymapJieT2, null, arrayList3, new s3(activityKeymapJieT2, 5)).show();
                            break;
                        }
                    } else {
                        ArrayList arrayList4 = activityKeymapJieT2.N;
                        if (arrayList4.isEmpty()) {
                            JieTKeymapType jieTKeymapType13 = JieTKeymapType.GEAR_D;
                            arrayList4.add(new KeyCodeBean(jieTKeymapType13.getValue(), jieTKeymapType13.getDesc()));
                            JieTKeymapType jieTKeymapType14 = JieTKeymapType.GEAR_N;
                            arrayList4.add(new KeyCodeBean(jieTKeymapType14.getValue(), jieTKeymapType14.getDesc()));
                            JieTKeymapType jieTKeymapType15 = JieTKeymapType.GEAR_P;
                            arrayList4.add(new KeyCodeBean(jieTKeymapType15.getValue(), jieTKeymapType15.getDesc()));
                            JieTKeymapType jieTKeymapType16 = JieTKeymapType.GEAR_R;
                            arrayList4.add(new KeyCodeBean(jieTKeymapType16.getValue(), jieTKeymapType16.getDesc()));
                        }
                        new ha(activityKeymapJieT2, activityKeymapJieT2, null, arrayList4, new s3(activityKeymapJieT2, 3)).show();
                        break;
                    }
                } else {
                    ArrayList arrayList5 = activityKeymapJieT2.O;
                    if (arrayList5.isEmpty()) {
                        JieTKeymapType jieTKeymapType17 = JieTKeymapType.KEYCODE_L_UP;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType17.getValue(), jieTKeymapType17.getDesc()));
                        JieTKeymapType jieTKeymapType18 = JieTKeymapType.KEYCODE_L_DOWN;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType18.getValue(), jieTKeymapType18.getDesc()));
                        JieTKeymapType jieTKeymapType19 = JieTKeymapType.KEYCODE_L_LEFT;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType19.getValue(), jieTKeymapType19.getDesc()));
                        JieTKeymapType jieTKeymapType20 = JieTKeymapType.KEYCODE_L_RIGHT;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType20.getValue(), jieTKeymapType20.getDesc()));
                        JieTKeymapType jieTKeymapType21 = JieTKeymapType.KEYCODE_R_MODE;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType21.getValue(), jieTKeymapType21.getDesc()));
                        JieTKeymapType jieTKeymapType22 = JieTKeymapType.KEYCODE_R_VOICE;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType22.getValue(), jieTKeymapType22.getDesc()));
                        JieTKeymapType jieTKeymapType23 = JieTKeymapType.KEYCODE_R_PREVIOUS;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType23.getValue(), jieTKeymapType23.getDesc()));
                        JieTKeymapType jieTKeymapType24 = JieTKeymapType.KEYCODE_R_NEXT;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType24.getValue(), jieTKeymapType24.getDesc()));
                        JieTKeymapType jieTKeymapType25 = JieTKeymapType.KEYCODE_R_UP;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType25.getValue(), jieTKeymapType25.getDesc()));
                        JieTKeymapType jieTKeymapType26 = JieTKeymapType.KEYCODE_R_DOWN;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType26.getValue(), jieTKeymapType26.getDesc()));
                        JieTKeymapType jieTKeymapType27 = JieTKeymapType.KEYCODE_R_MUTE;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType27.getValue(), jieTKeymapType27.getDesc()));
                        JieTKeymapType jieTKeymapType28 = JieTKeymapType.KEYCODE_R_STAR;
                        arrayList5.add(new KeyCodeBean(jieTKeymapType28.getValue(), jieTKeymapType28.getDesc()));
                        arrayList5.add(new KeyCodeBean(-1, "手动抓取键码"));
                    }
                    new ha(activityKeymapJieT2, activityKeymapJieT2, null, arrayList5, new s3(activityKeymapJieT2, 6)).show();
                    break;
                }
                break;
            case 3:
                z7.o oVarP = activityKeymapJieT.H.p("maps");
                while (true) {
                    int size = oVarP.f19478a.size();
                    ArrayList arrayList6 = activityKeymapJieT.N;
                    if (i12 >= size) {
                        z7.s sVar = new z7.s();
                        sVar.l("type", Integer.valueOf(JieTKeymapType.MAP_TYPE_GEAR.getValue()));
                        sVar.m("name", ((KeyCodeBean) arrayList6.get(i10)).keyName);
                        sVar.m("eventName", ((KeyCodeBean) arrayList6.get(i10)).keyName);
                        sVar.l("gear", Integer.valueOf(((KeyCodeBean) arrayList6.get(i10)).keyCode));
                        sVar.j("click", new z7.o());
                        activityKeymapJieT.y(sVar, -1);
                        break;
                    } else if (android.support.v4.media.session.a.j(oVarP, i12, "type") == JieTKeymapType.MAP_TYPE_GEAR.getValue() && oVarP.l(i12).g().f19480a.containsKey("gear") && android.support.v4.media.session.a.j(oVarP, i12, "gear") == ((KeyCodeBean) arrayList6.get(i10)).keyCode) {
                        com.yunpan.appmanage.util.a0.u("已存在此档位映射");
                        break;
                    } else {
                        i12++;
                    }
                }
                break;
            case 4:
                int i14 = ActivityKeymapJieT.P;
                final ActivityKeymapJieT activityKeymapJieT3 = this.f15947b;
                activityKeymapJieT3.getClass();
                new ha(activityKeymapJieT3, activityKeymapJieT3, null, activityKeymapJieT3.M, new ga() { // from class: ua.r3
                    @Override // ha.ga
                    public final void b(int i15) {
                        switch (i12) {
                            case 0:
                                ActivityKeymapJieT activityKeymapJieT4 = activityKeymapJieT3;
                                z7.o oVarP2 = activityKeymapJieT4.H.p("maps");
                                int i16 = 0;
                                while (true) {
                                    int size2 = oVarP2.f19478a.size();
                                    ArrayList arrayList7 = activityKeymapJieT4.M;
                                    ArrayList arrayList8 = activityKeymapJieT4.K;
                                    int i17 = i10;
                                    if (i16 >= size2) {
                                        String str = ((KeyCodeBean) arrayList8.get(i17)).keyName + " - " + ((KeyCodeBean) arrayList7.get(i15)).keyName;
                                        z7.s sVar2 = new z7.s();
                                        sVar2.l("type", Integer.valueOf(JieTKeymapType.MAP_TYPE_LAMP.getValue()));
                                        sVar2.m("name", str);
                                        sVar2.m("eventName", str);
                                        sVar2.l("lamp", Integer.valueOf(((KeyCodeBean) arrayList8.get(i17)).keyCode));
                                        sVar2.l("switch", Integer.valueOf(((KeyCodeBean) arrayList7.get(i15)).keyCode));
                                        sVar2.j("click", new z7.o());
                                        activityKeymapJieT4.y(sVar2, -1);
                                        break;
                                    } else if (android.support.v4.media.session.a.j(oVarP2, i16, "type") == JieTKeymapType.MAP_TYPE_LAMP.getValue() && oVarP2.l(i16).g().f19480a.containsKey("lamp") && android.support.v4.media.session.a.j(oVarP2, i16, "lamp") == ((KeyCodeBean) arrayList8.get(i17)).keyCode && android.support.v4.media.session.a.j(oVarP2, i16, "switch") == ((KeyCodeBean) arrayList7.get(i15)).keyCode) {
                                        com.yunpan.appmanage.util.a0.u("已存在此车灯映射");
                                        break;
                                    } else {
                                        i16++;
                                    }
                                }
                                break;
                            default:
                                ActivityKeymapJieT activityKeymapJieT5 = activityKeymapJieT3;
                                z7.o oVarP3 = activityKeymapJieT5.H.p("maps");
                                int i18 = 0;
                                while (true) {
                                    int size3 = oVarP3.f19478a.size();
                                    ArrayList arrayList9 = activityKeymapJieT5.M;
                                    ArrayList arrayList10 = activityKeymapJieT5.L;
                                    int i19 = i10;
                                    if (i18 >= size3) {
                                        String str2 = ((KeyCodeBean) arrayList10.get(i19)).keyName + " - " + ((KeyCodeBean) arrayList9.get(i15)).keyName;
                                        z7.s sVar3 = new z7.s();
                                        sVar3.l("type", Integer.valueOf(JieTKeymapType.MAP_TYPE_DOOR.getValue()));
                                        sVar3.m("name", str2);
                                        sVar3.m("eventName", str2);
                                        sVar3.l("door", Integer.valueOf(((KeyCodeBean) arrayList10.get(i19)).keyCode));
                                        sVar3.l("switch", Integer.valueOf(((KeyCodeBean) arrayList9.get(i15)).keyCode));
                                        sVar3.j("click", new z7.o());
                                        activityKeymapJieT5.y(sVar3, -1);
                                        break;
                                    } else if (android.support.v4.media.session.a.j(oVarP3, i18, "type") == JieTKeymapType.MAP_TYPE_DOOR.getValue() && oVarP3.l(i18).g().f19480a.containsKey("door") && android.support.v4.media.session.a.j(oVarP3, i18, "door") == ((KeyCodeBean) arrayList10.get(i19)).keyCode && android.support.v4.media.session.a.j(oVarP3, i18, "switch") == ((KeyCodeBean) arrayList9.get(i15)).keyCode) {
                                        com.yunpan.appmanage.util.a0.u("已存在此车门映射");
                                        break;
                                    } else {
                                        i18++;
                                    }
                                }
                                break;
                        }
                    }
                }).show();
                break;
            case 5:
                final ActivityKeymapJieT activityKeymapJieT4 = this.f15947b;
                if (i10 != 0) {
                    int i15 = ActivityKeymapJieT.P;
                    activityKeymapJieT4.getClass();
                    new ha(activityKeymapJieT4, activityKeymapJieT4, null, activityKeymapJieT4.M, new ga() { // from class: ua.r3
                        @Override // ha.ga
                        public final void b(int i152) {
                            switch (i11) {
                                case 0:
                                    ActivityKeymapJieT activityKeymapJieT42 = activityKeymapJieT4;
                                    z7.o oVarP2 = activityKeymapJieT42.H.p("maps");
                                    int i16 = 0;
                                    while (true) {
                                        int size2 = oVarP2.f19478a.size();
                                        ArrayList arrayList7 = activityKeymapJieT42.M;
                                        ArrayList arrayList8 = activityKeymapJieT42.K;
                                        int i17 = i10;
                                        if (i16 >= size2) {
                                            String str = ((KeyCodeBean) arrayList8.get(i17)).keyName + " - " + ((KeyCodeBean) arrayList7.get(i152)).keyName;
                                            z7.s sVar2 = new z7.s();
                                            sVar2.l("type", Integer.valueOf(JieTKeymapType.MAP_TYPE_LAMP.getValue()));
                                            sVar2.m("name", str);
                                            sVar2.m("eventName", str);
                                            sVar2.l("lamp", Integer.valueOf(((KeyCodeBean) arrayList8.get(i17)).keyCode));
                                            sVar2.l("switch", Integer.valueOf(((KeyCodeBean) arrayList7.get(i152)).keyCode));
                                            sVar2.j("click", new z7.o());
                                            activityKeymapJieT42.y(sVar2, -1);
                                            break;
                                        } else if (android.support.v4.media.session.a.j(oVarP2, i16, "type") == JieTKeymapType.MAP_TYPE_LAMP.getValue() && oVarP2.l(i16).g().f19480a.containsKey("lamp") && android.support.v4.media.session.a.j(oVarP2, i16, "lamp") == ((KeyCodeBean) arrayList8.get(i17)).keyCode && android.support.v4.media.session.a.j(oVarP2, i16, "switch") == ((KeyCodeBean) arrayList7.get(i152)).keyCode) {
                                            com.yunpan.appmanage.util.a0.u("已存在此车灯映射");
                                            break;
                                        } else {
                                            i16++;
                                        }
                                    }
                                    break;
                                default:
                                    ActivityKeymapJieT activityKeymapJieT5 = activityKeymapJieT4;
                                    z7.o oVarP3 = activityKeymapJieT5.H.p("maps");
                                    int i18 = 0;
                                    while (true) {
                                        int size3 = oVarP3.f19478a.size();
                                        ArrayList arrayList9 = activityKeymapJieT5.M;
                                        ArrayList arrayList10 = activityKeymapJieT5.L;
                                        int i19 = i10;
                                        if (i18 >= size3) {
                                            String str2 = ((KeyCodeBean) arrayList10.get(i19)).keyName + " - " + ((KeyCodeBean) arrayList9.get(i152)).keyName;
                                            z7.s sVar3 = new z7.s();
                                            sVar3.l("type", Integer.valueOf(JieTKeymapType.MAP_TYPE_DOOR.getValue()));
                                            sVar3.m("name", str2);
                                            sVar3.m("eventName", str2);
                                            sVar3.l("door", Integer.valueOf(((KeyCodeBean) arrayList10.get(i19)).keyCode));
                                            sVar3.l("switch", Integer.valueOf(((KeyCodeBean) arrayList9.get(i152)).keyCode));
                                            sVar3.j("click", new z7.o());
                                            activityKeymapJieT5.y(sVar3, -1);
                                            break;
                                        } else if (android.support.v4.media.session.a.j(oVarP3, i18, "type") == JieTKeymapType.MAP_TYPE_DOOR.getValue() && oVarP3.l(i18).g().f19480a.containsKey("door") && android.support.v4.media.session.a.j(oVarP3, i18, "door") == ((KeyCodeBean) arrayList10.get(i19)).keyCode && android.support.v4.media.session.a.j(oVarP3, i18, "switch") == ((KeyCodeBean) arrayList9.get(i152)).keyCode) {
                                            com.yunpan.appmanage.util.a0.u("已存在此车门映射");
                                            break;
                                        } else {
                                            i18++;
                                        }
                                    }
                                    break;
                            }
                        }
                    }).show();
                    break;
                } else {
                    z7.o oVarP2 = activityKeymapJieT4.H.p("maps");
                    while (true) {
                        int size2 = oVarP2.f19478a.size();
                        ArrayList arrayList7 = activityKeymapJieT4.L;
                        if (i12 >= size2) {
                            String str = ((KeyCodeBean) arrayList7.get(i10)).keyName;
                            z7.s sVar2 = new z7.s();
                            sVar2.l("type", Integer.valueOf(JieTKeymapType.MAP_TYPE_DOOR.getValue()));
                            sVar2.m("name", str);
                            sVar2.m("eventName", str);
                            sVar2.l("door", Integer.valueOf(((KeyCodeBean) arrayList7.get(i10)).keyCode));
                            sVar2.j("click", new z7.o());
                            activityKeymapJieT4.y(sVar2, -1);
                            break;
                        } else if (android.support.v4.media.session.a.j(oVarP2, i12, "type") == JieTKeymapType.MAP_TYPE_DOOR.getValue() && oVarP2.l(i12).g().f19480a.containsKey("door") && android.support.v4.media.session.a.j(oVarP2, i12, "door") == ((KeyCodeBean) arrayList7.get(i10)).keyCode) {
                            com.yunpan.appmanage.util.a0.u("已存在此事件映射");
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
                break;
            default:
                ArrayList arrayList8 = activityKeymapJieT.O;
                if (((KeyCodeBean) arrayList8.get(i10)).keyCode == -1) {
                    new ha.z7(activityKeymapJieT, activityKeymapJieT).a(new s3(activityKeymapJieT, 7));
                    break;
                } else if (!activityKeymapJieT.x(((KeyCodeBean) arrayList8.get(i10)).keyCode)) {
                    new ha.d8(activityKeymapJieT, activityKeymapJieT, (KeyCodeBean) arrayList8.get(i10), new t3(activityKeymapJieT)).show();
                    break;
                }
                break;
        }
    }

    @Override // ea.c
    public void e(int i10) {
        int i11 = ActivityKeymapJieT.P;
        ActivityKeymapJieT activityKeymapJieT = this.f15947b;
        if (activityKeymapJieT.x(i10)) {
            return;
        }
        new ha.d8(activityKeymapJieT, activityKeymapJieT, new KeyCodeBean(i10, ""), new t3(activityKeymapJieT)).show();
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = 2;
        switch (this.f15946a) {
            case 0:
                int i12 = ActivityKeymapJieT.P;
                ActivityKeymapJieT activityKeymapJieT = this.f15947b;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 != 2) {
                            activityKeymapJieT.getClass();
                            if (i10 == 3) {
                                new ha.z6(activityKeymapJieT, activityKeymapJieT.A, "直接与系统服务对接，比日志映射好一百倍", "ps：无法拦截车机按键原操作的，如果需要拦截车机自带的操作 你只能去修改系统的app，所以不要来问我 该怎么拦截原操作！").show();
                                break;
                            }
                        } else if (activityKeymapJieT.F.b() != 0) {
                            new ha.z6(activityKeymapJieT, activityKeymapJieT.A, "确定要清空所有映射吗？", "", "确定", "取消", new t3(activityKeymapJieT)).show();
                            break;
                        }
                    } else {
                        ArrayList arrayList = activityKeymapJieT.I;
                        if (arrayList.isEmpty()) {
                            JieTKeymapType jieTKeymapType = JieTKeymapType.MAP_TYPE_KEY;
                            arrayList.add(new KeyCodeBean(jieTKeymapType.getValue(), jieTKeymapType.getDesc()));
                            JieTKeymapType jieTKeymapType2 = JieTKeymapType.MAP_TYPE_GEAR;
                            arrayList.add(new KeyCodeBean(jieTKeymapType2.getValue(), jieTKeymapType2.getDesc()));
                            JieTKeymapType jieTKeymapType3 = JieTKeymapType.MAP_TYPE_DOOR;
                            arrayList.add(new KeyCodeBean(jieTKeymapType3.getValue(), jieTKeymapType3.getDesc()));
                            JieTKeymapType jieTKeymapType4 = JieTKeymapType.MAP_TYPE_LAMP;
                            arrayList.add(new KeyCodeBean(jieTKeymapType4.getValue(), jieTKeymapType4.getDesc()));
                        }
                        new ha(activityKeymapJieT, activityKeymapJieT, null, arrayList, new s3(activityKeymapJieT, i11)).show();
                        break;
                    }
                } else {
                    activityKeymapJieT.finish();
                    break;
                }
                break;
            default:
                ActivityKeymapJieT activityKeymapJieT2 = this.f15947b;
                z7.s sVar = (z7.s) activityKeymapJieT2.F.t(i10);
                if (sVar.o("type").e() != JieTKeymapType.MAP_TYPE_KEY.getValue()) {
                    activityKeymapJieT2.y(sVar, i10);
                    break;
                } else {
                    new ha.d8(activityKeymapJieT2, activityKeymapJieT2, sVar, new u3(activityKeymapJieT2, i10, 0)).show();
                    break;
                }
        }
    }
}

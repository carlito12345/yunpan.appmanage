package ua;

import android.view.View;
import com.yunpan.appmanage.ui.ActivityNissanTextGN;

/* loaded from: classes.dex */
public final /* synthetic */ class y4 implements c6.e, ea.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16053a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityNissanTextGN f16054b;

    public /* synthetic */ y4(ActivityNissanTextGN activityNissanTextGN, int i10) {
        this.f16053a = i10;
        this.f16054b = activityNissanTextGN;
    }

    @Override // ea.c
    public void e(int i10) {
        ActivityNissanTextGN activityNissanTextGN = this.f16054b;
        switch (this.f16053a) {
            case 1:
                int i11 = ActivityNissanTextGN.F;
                activityNissanTextGN.getClass();
                try {
                    activityNissanTextGN.E.setLowpitch(i10 - 5);
                    break;
                } catch (Exception unused) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                    return;
                }
            case 2:
                int i12 = ActivityNissanTextGN.F;
                activityNissanTextGN.getClass();
                try {
                    activityNissanTextGN.E.setHighpitch(i10 - 5);
                    break;
                } catch (Exception unused2) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                    return;
                }
            case 3:
                int i13 = ActivityNissanTextGN.F;
                activityNissanTextGN.getClass();
                try {
                    activityNissanTextGN.E.changeBossForTest(i10 - 5);
                    break;
                } catch (Exception unused3) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                    return;
                }
            case 4:
                int i14 = ActivityNissanTextGN.F;
                activityNissanTextGN.getClass();
                try {
                    activityNissanTextGN.E.changeHighForTest(i10 - 5);
                    break;
                } catch (Exception unused4) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                    return;
                }
            case 5:
                int i15 = ActivityNissanTextGN.F;
                activityNissanTextGN.getClass();
                try {
                    activityNissanTextGN.E.setSystemVolume(3, i10);
                    break;
                } catch (Exception unused5) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                    return;
                }
            case 6:
                int i16 = ActivityNissanTextGN.F;
                activityNissanTextGN.getClass();
                try {
                    activityNissanTextGN.E.setSystemVolume(9, i10);
                    break;
                } catch (Exception unused6) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                    return;
                }
            case 7:
                int i17 = ActivityNissanTextGN.F;
                activityNissanTextGN.getClass();
                try {
                    activityNissanTextGN.E.setBtPhoneVolume(i10);
                    break;
                } catch (Exception unused7) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                    return;
                }
            default:
                int i18 = ActivityNissanTextGN.F;
                activityNissanTextGN.getClass();
                try {
                    activityNissanTextGN.E.setHighpitch(i10);
                    break;
                } catch (Exception unused8) {
                    com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int systemVolume;
        int systemVolume2;
        int btPhoneVolume;
        int i11 = 8;
        int i12 = 7;
        int i13 = 6;
        int i14 = 5;
        int i15 = 0;
        int i16 = 4;
        int i17 = 3;
        int i18 = 2;
        int i19 = 1;
        int i20 = ActivityNissanTextGN.F;
        ActivityNissanTextGN activityNissanTextGN = this.f16054b;
        activityNissanTextGN.getClass();
        if (i10 == 0) {
            new ha.h1(activityNissanTextGN, activityNissanTextGN, "低音调节", 10, 5, new y4(activityNissanTextGN, i19), 1).show();
            return;
        }
        if (i10 == 1) {
            new ha.h1(activityNissanTextGN, activityNissanTextGN, "高音调节", 10, 5, new y4(activityNissanTextGN, i18), 1).show();
            return;
        }
        if (i10 == 2) {
            new ha.h1(activityNissanTextGN, activityNissanTextGN, "低音调节", 10, 5, new y4(activityNissanTextGN, i17), 1).show();
            return;
        }
        if (i10 == 3) {
            new ha.h1(activityNissanTextGN, activityNissanTextGN, "高音调节", 10, 5, new y4(activityNissanTextGN, i16), 1).show();
            return;
        }
        if (i10 == 4) {
            new ha.z6(activityNissanTextGN, activityNissanTextGN, "音响增强", "", "开启", "关闭", new z4(activityNissanTextGN, i15)).show();
            return;
        }
        if (i10 == 5) {
            try {
                systemVolume = activityNissanTextGN.E.getSystemVolume(3);
            } catch (Exception unused) {
                systemVolume = 10;
            }
            new ha.h1(activityNissanTextGN, activityNissanTextGN, "修改系统音量", 40, systemVolume, new y4(activityNissanTextGN, i14), 1).show();
            return;
        }
        if (i10 == 6) {
            try {
                systemVolume2 = activityNissanTextGN.E.getSystemVolume(9);
            } catch (Exception unused2) {
                systemVolume2 = 7;
            }
            new ha.h1(activityNissanTextGN, activityNissanTextGN, "修改导航音量", 12, systemVolume2, new y4(activityNissanTextGN, i13), 1).show();
            return;
        }
        if (i10 == 7) {
            try {
                btPhoneVolume = activityNissanTextGN.E.getBtPhoneVolume();
            } catch (Exception unused3) {
                btPhoneVolume = 7;
            }
            new ha.h1(activityNissanTextGN, activityNissanTextGN, "蓝牙电话音量", 16, btPhoneVolume, new y4(activityNissanTextGN, i12), 1).show();
            return;
        }
        if (i10 == 8) {
            try {
                activityNissanTextGN.E.setScreenState(false);
            } catch (Exception unused4) {
                com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
            }
        } else if (i10 == 9) {
            try {
                activityNissanTextGN.E.setPowerState(false);
            } catch (Exception unused5) {
                com.yunpan.appmanage.util.a0.t("此功能不适合您的设备");
            }
        } else if (i10 == 10) {
            new ha.z6(activityNissanTextGN, activityNissanTextGN, "静音(系统)", "", "静音", "解除", new z4(activityNissanTextGN, i19)).show();
        } else if (i10 == 11) {
            new ha.z6(activityNissanTextGN, activityNissanTextGN, "静音(导航)", "", "静音", "解除", new z4(activityNissanTextGN, i18)).show();
        } else if (i10 == 12) {
            new ha.h1(activityNissanTextGN, activityNissanTextGN, "车速感应级别", 5, 5, new y4(activityNissanTextGN, i11), 1).show();
        }
    }
}

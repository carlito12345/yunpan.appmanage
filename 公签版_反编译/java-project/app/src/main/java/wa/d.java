package wa;

import android.app.UiModeManager;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Parcel;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.provider.Settings;
import com.desay_svautomotive.libsvcarinfo.CarInfoProxy;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.desay_svautomotive.p023a.C0526b;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.service.AccService;
import com.yunpan.appmanage.util.a0;

/* loaded from: classes.dex */
public abstract class d {
    /* JADX WARN: Removed duplicated region for block: B:156:0x0325  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(AccService accService, z7.s sVar, int i10) {
        IInterface aVar;
        int i11;
        int i12;
        int i13;
        try {
            CarInfoProxy.getInstance().init(accService);
            if (CarInfoProxy.getInstance().isServiceConnnected()) {
                try {
                    C0526b.m218a().m230a(accService);
                } catch (Throwable unused) {
                }
                int i14 = 3;
                if (i10 == 5000) {
                    int iE = sVar.o("type").e();
                    UiModeManager uiModeManager = (UiModeManager) accService.getSystemService("uimode");
                    if (iE == 0) {
                        iE = uiModeManager.getNightMode() == 2 ? 1 : 2;
                    } else if (iE == 3) {
                        Settings.System.putInt(accService.getContentResolver(), "com.desay.setting.theme_auto_switch", 1);
                        return;
                    }
                    try {
                        Settings.System.putInt(accService.getContentResolver(), "com.desay.setting.theme_auto_switch", 0);
                        uiModeManager.enableCarMode(0);
                        uiModeManager.setNightMode(iE);
                        CarInfoProxy.getInstance().sendCarSettingValue(146, iE - 1);
                        return;
                    } catch (Throwable th2) {
                        a0.t("" + th2.getMessage());
                        return;
                    }
                }
                if (i10 == 5001) {
                    int iE2 = sVar.o("type").e();
                    if (k.a.a(10075) == 0) {
                        a0.u("您的爱车暂不支持用电保持模式");
                        return;
                    }
                    if (C0526b.m218a().m225a(167) == 0) {
                        a0.u("当前车机未准备好");
                        return;
                    }
                    int[] iArrM237b = C0526b.m218a().m237b(1, 28);
                    if (((iArrM237b == null || iArrM237b.length < 2) ? 100.0f : ((iArrM237b[0] * 256) + iArrM237b[1]) * 0.1f) < 20.0f) {
                        a0.u("电量过低，禁止用电保持");
                        return;
                    }
                    try {
                        boolean z = C0526b.m218a().m225a(168) == 1;
                        if (iE2 == 0) {
                            if (!z) {
                                i = 2;
                            }
                            iE2 = i;
                        }
                        C0526b.m218a().m238c(126, iE2);
                        if (iE2 == 2) {
                            a0.w("用电保持：开");
                        } else {
                            a0.w("用电保持：关");
                        }
                        return;
                    } catch (Exception e7) {
                        g.b.s(e7, new StringBuilder(""));
                        return;
                    }
                }
                if (i10 != 5002) {
                    if (i10 == 5004) {
                        int iE3 = sVar.o("type").e();
                        if (iE3 == -1) {
                            int itemValue = CarInfoProxy.getInstance().getItemValue(1, 22);
                            iE3 = itemValue == 2 ? 3 : itemValue == 3 ? 5 : itemValue == 5 ? 6 : 2;
                        }
                        CarInfoProxy.getInstance().sendNewEnergyValue(15, iE3);
                        String str = iE3 == 2 ? "ECO 模式" : iE3 == 3 ? "NORMAL 模式" : iE3 == 5 ? "SPORT 模式" : iE3 == 6 ? "I-PEDAL 模式" : "未知模式";
                        Message messageObtain = Message.obtain();
                        messageObtain.what = -4;
                        messageObtain.arg1 = R.drawable.tp_qh1;
                        messageObtain.obj = str;
                        s.c().f17709e.G.sendMessage(messageObtain);
                        return;
                    }
                    if (i10 == 5005) {
                        if (CarInfoProxy.getInstance().getItemValue(4, 1) == 1) {
                            Intent intent = new Intent();
                            intent.setAction("AUTONAVI_STANDARD_BROADCAST_RECV");
                            intent.putExtra("KEY_TYPE", 10048);
                            intent.putExtra("EXTRA_DAY_NIGHT_MODE", 2);
                            intent.setFlags(32);
                            accService.sendBroadcast(intent);
                            return;
                        }
                        Intent intent2 = new Intent();
                        intent2.setAction("AUTONAVI_STANDARD_BROADCAST_RECV");
                        intent2.putExtra("KEY_TYPE", 10048);
                        intent2.putExtra("EXTRA_DAY_NIGHT_MODE", 1);
                        intent2.setFlags(32);
                        accService.sendBroadcast(intent2);
                        return;
                    }
                    if (i10 == 5006) {
                        int iE4 = sVar.o("type").e();
                        if (iE4 != 0) {
                            if (iE4 == 2) {
                                CarInfoProxy.getInstance().sendItemValue(0, 247, 2);
                                a0.w("尾门：开");
                                return;
                            } else {
                                CarInfoProxy.getInstance().sendItemValue(0, 247, 3);
                                a0.w("尾门：关");
                                return;
                            }
                        }
                        int carSettingValue = CarInfoProxy.getInstance().getCarSettingValue(254);
                        int carSettingValue2 = CarInfoProxy.getInstance().getCarSettingValue(253);
                        if (carSettingValue2 == 0) {
                            a0.u("尾门暂不可控制");
                            return;
                        }
                        if (carSettingValue2 == 2) {
                            CarInfoProxy.getInstance().sendItemValue(0, 247, 2);
                            a0.w("尾门：开");
                            return;
                        }
                        if (carSettingValue2 == 5 || carSettingValue2 == 1) {
                            if (carSettingValue < 20) {
                                a0.w("尾门开度大于20%，方可关闭尾门");
                                return;
                            } else {
                                CarInfoProxy.getInstance().sendItemValue(0, 247, 3);
                                a0.w("尾门：关");
                                return;
                            }
                        }
                        if (carSettingValue2 == 3 || carSettingValue2 == 4) {
                            CarInfoProxy.getInstance().sendItemValue(0, 247, 1);
                            a0.w("尾门：停止");
                            return;
                        }
                        return;
                    }
                    if (i10 == 5007) {
                        int iE5 = sVar.o("type").e();
                        int clusterValue = CarInfoProxy.getInstance().getClusterValue(20);
                        int i15 = clusterValue + 1;
                        if (iE5 == 0) {
                            int iE6 = sVar.o("value").e();
                            if (i15 == iE6) {
                                return;
                            }
                            CarInfoProxy.getInstance().sendItemValue(3, 32, iE6);
                            return;
                        }
                        if (iE5 == 1) {
                            if (i15 == 8) {
                                a0.u("已是最大亮度");
                                return;
                            } else {
                                CarInfoProxy.getInstance().sendItemValue(3, 32, clusterValue + 2);
                                return;
                            }
                        }
                        if (iE5 == 2) {
                            if (i15 == 1) {
                                a0.u("已是最低亮度");
                                return;
                            } else {
                                CarInfoProxy.getInstance().sendItemValue(3, 32, clusterValue);
                                return;
                            }
                        }
                        return;
                    }
                    if (i10 == 5010) {
                        if (C0526b.m218a().m225a(CarSettingID.Recv.PEPS_POWER_OFF_ENABLE) != 1) {
                            a0.u("当前不可关闭整车电源");
                            return;
                        } else {
                            CarInfoProxy.getInstance().sendItemValue(0, 125, 1);
                            return;
                        }
                    }
                    if (i10 == 5009) {
                        IBinder service = ServiceManager.getService("dsv_car_power");
                        int i16 = bb.b.f2763e;
                        if (service == null) {
                            aVar = null;
                        } else {
                            IInterface iInterfaceQueryLocalInterface = service.queryLocalInterface("dsv.platformadapter.app.ICarStateManager");
                            aVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof bb.c)) ? new bb.a(service) : (bb.c) iInterfaceQueryLocalInterface;
                        }
                        bb.a aVar2 = (bb.a) aVar;
                        aVar2.getClass();
                        Parcel parcelObtain = Parcel.obtain();
                        Parcel parcelObtain2 = Parcel.obtain();
                        try {
                            parcelObtain.writeInterfaceToken("dsv.platformadapter.app.ICarStateManager");
                            parcelObtain.writeInt(1);
                            parcelObtain.writeInt(1);
                            aVar2.f2762e.transact(20, parcelObtain, parcelObtain2, 0);
                            parcelObtain2.readException();
                            return;
                        } finally {
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    }
                    if (i10 == 5011) {
                        Intent intent3 = new Intent("com.desay_svautomotive.action.SET_SCREENSAVER_STATUS");
                        intent3.putExtra("value", 0);
                        accService.sendBroadcast(intent3);
                        return;
                    }
                    if (i10 == 5008) {
                        if (C0526b.m218a().m226a(4, 14) != 2) {
                            a0.u("请启动车辆后方可进入休息模式");
                            return;
                        }
                        int iM225a = C0526b.m218a().m225a(179);
                        int iE7 = sVar.o("type").e();
                        if (iE7 == 0) {
                            if (iM225a != 2) {
                                i = 3;
                            }
                        } else if (iE7 == 1) {
                            if (iM225a != 2) {
                                return;
                            }
                        } else if (iE7 == 2) {
                            if (iM225a == 2) {
                                return;
                            }
                            i = 3;
                        } else {
                            i = iE7;
                        }
                        CarInfoProxy.getInstance().sendItemValue(0, 77, i);
                        if (i == 3) {
                            a0.w("开启休息模式");
                            return;
                        } else {
                            a0.w("关闭休息模式");
                            return;
                        }
                    }
                    if (i10 == 5012) {
                        if (SystemProperties.getInt("sys.vehicle.gac.system_status3", 0) != 1 && SystemProperties.getInt("sys.vehicle.gac.system_status5", 0) == 1) {
                            CarInfoProxy.getInstance().sendItemValues(10, 0, new int[]{15});
                            return;
                        }
                        try {
                            int itemValue2 = CarInfoProxy.getInstance().getItemValue(4, 14);
                            if (itemValue2 == 2 || itemValue2 == 3) {
                                CarInfoProxy.getInstance().sendCarSettingValue(86, 1);
                                return;
                            }
                        } catch (Exception unused2) {
                        }
                        a0.u("请启动车辆后操作");
                        return;
                    }
                    if (i10 != 5013) {
                        if (i10 == 5014) {
                            int iE8 = sVar.o("type").e();
                            int itemValue3 = CarInfoProxy.getInstance().getItemValue(0, 143);
                            if (iE8 == 2) {
                                if (itemValue3 == 1 || com.yunpan.appmanage.carsdk.e.c().f3797e > 0) {
                                    return;
                                }
                            } else if (itemValue3 == 0) {
                                return;
                            }
                            CarInfoProxy.getInstance().sendItemValue(0, 111, iE8);
                            return;
                        }
                        return;
                    }
                    if (k.a.a(106) == 0) {
                        a0.u("此车机不存在此功能");
                        return;
                    }
                    int iE9 = sVar.o("type").e();
                    if (iE9 == -1) {
                        int itemValue4 = CarInfoProxy.getInstance().getItemValue(0, 53);
                        if (itemValue4 != 1) {
                            i14 = itemValue4 == 2 ? 1 : 2;
                        }
                    } else if (iE9 == CarInfoProxy.getInstance().getItemValue(0, 53)) {
                        return;
                    } else {
                        i14 = iE9;
                    }
                    a0.w("切换为：".concat(i14 == 2 ? "轻盈模式" : i14 == 1 ? "舒适模式" : "运动模式"));
                    CarInfoProxy.getInstance().sendCarSettingValue(56, i14);
                    return;
                }
                int iE10 = sVar.o("type1").e();
                int iE11 = sVar.o("type2").e();
                if (iE10 == 0) {
                    if (iE11 == -1) {
                        iE11 = CarInfoProxy.getInstance().getItemValue(16, 12) == 0 ? 2 : 1;
                    }
                    CarInfoProxy.getInstance().sendItemValue(3, 0, iE11);
                    if (iE11 == 2) {
                        a0.w("空调：开");
                        return;
                    } else {
                        a0.w("空调：关");
                        return;
                    }
                }
                if (iE10 == 1) {
                    if (!b()) {
                        a0.u("请先打开空调");
                        return;
                    }
                    int itemValue5 = CarInfoProxy.getInstance().getItemValue(16, 1);
                    if (iE11 != -1) {
                        if (iE11 == 1) {
                            if (itemValue5 != 1) {
                                return;
                            }
                        } else if (iE11 == 2 && itemValue5 == 1) {
                            return;
                        }
                    }
                    CarInfoProxy.getInstance().sendItemValue(16, 10, 1);
                    CarInfoProxy.getInstance().sendItemValue(16, 10, 0);
                    if (itemValue5 == 1) {
                        a0.w("AC制冷：关");
                        return;
                    } else {
                        a0.w("AC制冷：开");
                        return;
                    }
                }
                if (iE10 == 2) {
                    if (!b()) {
                        a0.u("请先打开空调");
                        return;
                    }
                    int itemValue6 = CarInfoProxy.getInstance().getItemValue(16, 3);
                    if (iE11 != -1) {
                        if (iE11 == 1) {
                            if (itemValue6 != 1) {
                                return;
                            }
                        } else if (iE11 == 2 && itemValue6 == 1) {
                            return;
                        }
                    }
                    CarInfoProxy.getInstance().sendItemValue(16, 30, 1);
                    CarInfoProxy.getInstance().sendItemValue(16, 30, 0);
                    if (itemValue6 == 1) {
                        a0.w("主副同步：关");
                        return;
                    } else {
                        a0.w("主副同步：开");
                        return;
                    }
                }
                if (iE10 == 3) {
                    if (!b()) {
                        a0.u("请先打开空调");
                        return;
                    }
                    int itemValue7 = CarInfoProxy.getInstance().getItemValue(16, 12);
                    if (iE11 == 1) {
                        if (itemValue7 >= 7) {
                            a0.u("已经是最大风速了");
                            return;
                        } else {
                            i13 = itemValue7 + 1;
                            CarInfoProxy.getInstance().sendItemValue(16, 24, i13);
                        }
                    } else if (itemValue7 <= 1) {
                        a0.u("已经是最低风速了");
                        return;
                    } else {
                        i13 = itemValue7 - 1;
                        CarInfoProxy.getInstance().sendItemValue(16, 24, i13);
                    }
                    Message messageObtain2 = Message.obtain();
                    messageObtain2.what = -4;
                    messageObtain2.arg1 = R.drawable.tp_fs1;
                    messageObtain2.obj = g.b.i("风速：", i13, " 档");
                    s.c().f17709e.G.sendMessage(messageObtain2);
                    return;
                }
                if (iE10 == 4) {
                    if (!b()) {
                        a0.u("请先打开空调");
                        return;
                    }
                    int itemValue8 = CarInfoProxy.getInstance().getItemValue(16, 10);
                    if (iE11 == 1) {
                        if (itemValue8 >= 28) {
                            a0.u("已经是最高温度了");
                            return;
                        } else {
                            i12 = itemValue8 + 1;
                            CarInfoProxy.getInstance().sendItemValue(16, 22, i12);
                            CarInfoProxy.getInstance().sendItemValue(16, 23, i12);
                        }
                    } else if (itemValue8 <= 0) {
                        a0.u("已经是最低温度了");
                        return;
                    } else {
                        i12 = itemValue8 - 1;
                        CarInfoProxy.getInstance().sendItemValue(16, 22, i12);
                        CarInfoProxy.getInstance().sendItemValue(16, 23, i12);
                    }
                    Message messageObtain3 = Message.obtain();
                    messageObtain3.what = -4;
                    messageObtain3.arg1 = R.drawable.tp_wd1;
                    messageObtain3.obj = ((i12 * 0.5f) + 18.0f) + "°c";
                    s.c().f17709e.G.sendMessage(messageObtain3);
                    return;
                }
                if (iE10 == 5) {
                    if (!b()) {
                        a0.u("请先打开空调");
                        return;
                    }
                    int itemValue9 = CarInfoProxy.getInstance().getItemValue(16, 8);
                    if (iE11 == -1) {
                        iE11 = itemValue9 != 1 ? 1 : 2;
                    } else if (iE11 == itemValue9) {
                        return;
                    }
                    CarInfoProxy.getInstance().sendItemValue(3, 3, iE11);
                    if (itemValue9 == 1) {
                        a0.w("外循环");
                        return;
                    } else {
                        a0.w("内循环");
                        return;
                    }
                }
                if (iE10 == 6) {
                    if (!b()) {
                        a0.u("空调未开启");
                        return;
                    }
                    int itemValue10 = CarInfoProxy.getInstance().getItemValue(16, 6);
                    if (iE11 == -1) {
                        if (itemValue10 != 1) {
                            iE11 = itemValue10 == 2 ? 28 : itemValue10 == 3 ? 29 : itemValue10 == 4 ? 25 : itemValue10 == 5 ? 26 : 27;
                        }
                    }
                    if (itemValue10 == iE11) {
                        return;
                    }
                    CarInfoProxy.getInstance().sendItemValue(16, iE11, 1);
                    CarInfoProxy.getInstance().sendItemValue(16, iE11, 0);
                    String str2 = iE11 == 27 ? "出风模式：吹脸" : iE11 == 28 ? "出风模式：吹脸、吹脚" : iE11 == 29 ? "出风模式：吹脚" : iE11 == 25 ? "出风模式：吹脚、除霜" : iE11 == 26 ? "出风模式：除霜" : "切换出风模式";
                    Message messageObtain4 = Message.obtain();
                    messageObtain4.what = -4;
                    messageObtain4.arg1 = R.drawable.tp_qh2;
                    messageObtain4.obj = str2;
                    s.c().f17709e.G.sendMessage(messageObtain4);
                    return;
                }
                if (iE10 == 7) {
                    int itemValue11 = CarInfoProxy.getInstance().getItemValue(16, 0);
                    if (iE11 != -1) {
                        if (iE11 == 1) {
                            if (itemValue11 != 1) {
                                return;
                            }
                        } else if (iE11 == 2 && itemValue11 == 1) {
                            return;
                        }
                    }
                    CarInfoProxy.getInstance().sendItemValue(16, 4, 1);
                    CarInfoProxy.getInstance().sendItemValue(16, 4, 0);
                    if (itemValue11 == 1) {
                        a0.w("后视镜加热：关");
                        return;
                    } else {
                        a0.w("后视镜加热：开");
                        return;
                    }
                }
                if (iE10 == 8 || iE10 == 9) {
                    int carSettingValue3 = CarInfoProxy.getInstance().getCarSettingValue(iE10 == 8 ? 7 : 8);
                    if (iE11 == -1) {
                        if (carSettingValue3 != 0) {
                            i = carSettingValue3 == 1 ? 2 : carSettingValue3 == 2 ? 3 : 0;
                        }
                    } else if (iE11 == 1) {
                        if (carSettingValue3 != 0) {
                            return;
                        }
                    } else if (iE11 == 2) {
                        if (carSettingValue3 == 3) {
                            return;
                        }
                    } else {
                        i = iE11;
                    }
                    if (iE10 == 9 && i == 0) {
                        CarInfoProxy.getInstance().sendCarSettingValue(9, i);
                        i11 = 8;
                    } else {
                        i11 = 8;
                        CarInfoProxy.getInstance().sendCarSettingValue(iE10 != 8 ? 8 : 7, i);
                    }
                    if (i == 0) {
                        StringBuilder sb2 = new StringBuilder("主驾");
                        sb2.append(iE10 == i11 ? "通风" : "加热");
                        sb2.append("：关闭");
                        a0.w(sb2.toString());
                        return;
                    }
                    StringBuilder sb3 = new StringBuilder("主驾");
                    sb3.append(iE10 == i11 ? "通风" : "加热");
                    sb3.append("：");
                    sb3.append(i);
                    a0.w(sb3.toString());
                    return;
                }
                if (iE10 == 10 || iE10 == 11) {
                    int carSettingValue4 = CarInfoProxy.getInstance().getCarSettingValue(iE10 == 10 ? 10 : 11);
                    if (iE11 == -1) {
                        if (carSettingValue4 != 0) {
                            i = carSettingValue4 == 1 ? 2 : carSettingValue4 == 2 ? 3 : 0;
                        }
                    } else if (iE11 == 1) {
                        if (carSettingValue4 != 0) {
                            return;
                        }
                    } else if (iE11 == 2) {
                        if (carSettingValue4 == 3) {
                            return;
                        }
                    } else {
                        i = iE11;
                    }
                    if (iE10 == 11 && i == 0) {
                        CarInfoProxy.getInstance().sendCarSettingValue(12, i);
                    } else {
                        CarInfoProxy.getInstance().sendCarSettingValue(iE10 == 10 ? 10 : 11, i);
                    }
                    if (i == 0) {
                        StringBuilder sb4 = new StringBuilder("副驾");
                        sb4.append(iE10 == 10 ? "通风" : "加热");
                        sb4.append("：关闭");
                        a0.w(sb4.toString());
                        return;
                    }
                    StringBuilder sb5 = new StringBuilder("副驾");
                    sb5.append(iE10 == 10 ? "通风" : "加热");
                    sb5.append("：");
                    sb5.append(i);
                    a0.w(sb5.toString());
                }
            }
        } catch (Throwable unused3) {
        }
    }

    public static boolean b() {
        return CarInfoProxy.getInstance().getItemValue(16, 12) != 0;
    }
}

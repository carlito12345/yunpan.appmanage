package ua;

import android.content.Intent;
import android.os.Build;
import android.provider.Settings;
import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityLaboratory;
import com.yunpan.appmanage.ui.ActivityNissan;
import com.yunpan.appmanage.ui.ActivityNissanTextGN;
import com.yunpan.appmanage.ui.ActivityNissanTextReverse;
import com.yunpan.appmanage.ui.ActivityNissanTextVehicle;
import ha.qa;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.DecimalFormat;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* loaded from: classes.dex */
public final /* synthetic */ class u4 implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15981a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivityNissan f15982b;

    public /* synthetic */ u4(ActivityNissan activityNissan, int i10) {
        this.f15981a = i10;
        this.f15982b = activityNissan;
    }

    @Override // ec.d
    public void g(mc.b bVar) throws Exception {
        boolean zPutInt;
        Intent launchIntentForPackage;
        ActivityNissan activityNissan = this.f15982b;
        boolean zPutInt2 = false;
        switch (this.f15981a) {
            case 1:
                int i10 = ActivityNissan.I;
                activityNissan.getClass();
                try {
                    zPutInt = Settings.Global.putInt(activityNissan.E, "adb_enabled", 1);
                } catch (Exception unused) {
                    zPutInt = false;
                }
                if (!zPutInt) {
                    u9.d.r("settings put global adb_enabled 1").l0();
                }
                if (u9.d.r("setprop service.adb.tcp.port 5555").l0().f2426b == 0) {
                    u9.d.r("setprop ctl.restart adbd").l0();
                    try {
                        Thread.sleep(4000L);
                    } catch (Exception unused2) {
                    }
                    bVar.b();
                    return;
                }
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (com.yunpan.appmanage.util.j.f4033a.f4053j) {
                    android.support.v4.media.session.a.B("修改失败，不适合您的系统", bVar);
                    return;
                }
                bVar.d(new Exception("失败，日产车机请使用 " + activityNissan.A.getResources().getString(R.string.app_name) + "-公签版(飞思卡尔)"));
                return;
            case 2:
                int i11 = ActivityNissan.I;
                activityNissan.getClass();
                try {
                    Settings.Global.putInt(activityNissan.E, "adb_enabled", 1);
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
                androidx.room.s sVarL0 = u9.d.r("setprop service.adb.tcp.port 5555").l0();
                u9.d.r("setprop persist.adb.tcp.port 5555").l0();
                if (sVarL0.f2426b != 0) {
                    android.support.v4.media.session.a.B("修改失败", bVar);
                    return;
                }
                fa.b0.f5652a.getClass();
                if (!a2.w0.P()) {
                    try {
                        Thread.sleep(366L);
                    } catch (Exception unused3) {
                    }
                    u9.d.r("setprop ctl.restart adbd").l0();
                    com.yunpan.appmanage.util.a0.w("正在重启adb服务");
                    try {
                        Thread.sleep(4000L);
                    } catch (Exception unused4) {
                    }
                }
                bVar.b();
                return;
            case 3:
                int i12 = ActivityNissan.I;
                activityNissan.getClass();
                try {
                    zPutInt2 = Settings.System.putInt(activityNissan.A.getContentResolver(), "screen_off_timeout", -1);
                } catch (Exception unused5) {
                }
                if (!zPutInt2) {
                    try {
                        zPutInt2 = Settings.System.putInt(activityNissan.A.getContentResolver(), "screen_off_timeout", Integer.MAX_VALUE);
                    } catch (Exception unused6) {
                    }
                }
                fa.b0.f5652a.getClass();
                fa.a0 a0VarH = a2.w0.h("settings put system screen_off_timeout 2147483647");
                if (zPutInt2 || a0VarH.f5648a == 0) {
                    bVar.b();
                    return;
                } else {
                    android.support.v4.media.session.a.B("修改失败", bVar);
                    return;
                }
            default:
                int i13 = ActivityNissan.I;
                activityNissan.getClass();
                Response responseA = null;
                try {
                    launchIntentForPackage = activityNissan.getPackageManager().getLaunchIntentForPackage("com.yunpan.appmanage");
                } catch (Exception unused7) {
                    launchIntentForPackage = null;
                }
                if (launchIntentForPackage == null) {
                    com.yunpan.appmanage.util.a0.s("未安装应用管家(com.yunpan.appmanage)", false);
                    bVar.b();
                    return;
                }
                if (android.support.v4.media.session.a.k("com.hsae.voice.adapter") == null) {
                    com.yunpan.appmanage.util.a0.s("检测到你系统没有安装语音适配，确定是日产车机吗？", false);
                    bVar.b();
                    return;
                }
                String str = Build.ID;
                int iIndexOf = str.indexOf("_P");
                if (iIndexOf == -1) {
                    com.yunpan.appmanage.util.a0.s("无法分辨您的系统版本", false);
                    bVar.b();
                    return;
                }
                String strSubstring = str.substring(iIndexOf + 2);
                int iIndexOf2 = strSubstring.indexOf("_");
                if (iIndexOf2 != -1) {
                    strSubstring = strSubstring.substring(0, iIndexOf2);
                }
                int iIntValue = Integer.valueOf(strSubstring).intValue();
                if (iIntValue > 670) {
                    com.yunpan.appmanage.util.a0.s("暂未适配的你的系统，请反馈", false);
                    bVar.b();
                    return;
                }
                try {
                    l9.a aVar = new l9.a(iIntValue > 510 ? "https://yunupdata-1318501551.cos.ap-guangzhou.myqcloud.com/VoiceAdapter/VoiceAdapter_660.apk" : iIntValue >= 450 ? "https://yunupdata-1318501551.cos.ap-guangzhou.myqcloud.com/VoiceAdapter/VoiceAdapter_510.apk" : iIntValue >= 240 ? "https://yunupdata-1318501551.cos.ap-guangzhou.myqcloud.com/VoiceAdapter/VoiceAdapter_280.apk" : "https://yunupdata-1318501551.cos.ap-guangzhou.myqcloud.com/VoiceAdapter/VoiceAdapter_170.apk");
                    aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                    responseA = aVar.a();
                } catch (Exception unused8) {
                }
                if (responseA == null) {
                    com.yunpan.appmanage.util.a0.t("下载升级包失败");
                    bVar.b();
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(fa.g0.f5682a.d());
                sb2.append("/.");
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                File file = new File(g.b.l(com.yunpan.appmanage.util.j.f4033a.f4041d, "/cache/VoiceAdapter.apk", sb2));
                file.getParentFile().mkdirs();
                try {
                    ResponseBody responseBodyBody = responseA.body();
                    if (responseBodyBody == null) {
                        throw new Exception();
                    }
                    InputStream inputStreamByteStream = responseBodyBody.byteStream();
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamByteStream);
                            try {
                                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
                                try {
                                    byte[] bArr = new byte[1048576];
                                    while (true) {
                                        int i14 = bufferedInputStream.read(bArr);
                                        if (i14 == -1) {
                                            bufferedOutputStream.close();
                                            bufferedInputStream.close();
                                            fileOutputStream.close();
                                            if (inputStreamByteStream != null) {
                                                inputStreamByteStream.close();
                                            }
                                            fa.b0.f5652a.getClass();
                                            if (a2.w0.Q()) {
                                                fa.x xVarY = a2.w0.Y(com.yunpan.appmanage.util.j.f4033a.f4060n, file.getPath());
                                                if (xVarY.f5762a) {
                                                    com.yunpan.appmanage.util.a0.w("升级完成");
                                                } else {
                                                    com.yunpan.appmanage.util.a0.s("升级失败：" + xVarY.f5764c, false);
                                                }
                                            } else if (com.yunpan.appmanage.util.v.f4106a.f4112c0 == 0) {
                                                String strD = ma.h.f11033a.d(file.getPath());
                                                if (strD.isEmpty()) {
                                                    com.yunpan.appmanage.util.a0.w("升级完成");
                                                } else {
                                                    com.yunpan.appmanage.util.a0.s("升级失败：".concat(strD), false);
                                                }
                                            } else {
                                                com.bumptech.glide.c.I(activityNissan.A, file.getPath());
                                            }
                                            bVar.b();
                                            return;
                                        }
                                        bufferedOutputStream.write(bArr, 0, i14);
                                        bufferedOutputStream.flush();
                                    }
                                } catch (Throwable th2) {
                                    try {
                                        bufferedOutputStream.close();
                                    } catch (Throwable th3) {
                                        try {
                                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                                        } catch (Exception unused9) {
                                        }
                                    }
                                    throw th2;
                                }
                            } catch (Throwable th4) {
                                try {
                                    bufferedInputStream.close();
                                } catch (Throwable th5) {
                                    try {
                                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                                    } catch (Exception unused10) {
                                    }
                                }
                                throw th4;
                            }
                        } catch (Throwable th6) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th7) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th6, th7);
                                } catch (Exception unused11) {
                                }
                            }
                            throw th6;
                        }
                    } catch (Throwable th8) {
                        if (inputStreamByteStream != null) {
                            try {
                                inputStreamByteStream.close();
                            } catch (Throwable th9) {
                                try {
                                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th8, th9);
                                } catch (Exception unused12) {
                                }
                            }
                        }
                        throw th8;
                    }
                } catch (Exception unused13) {
                    com.yunpan.appmanage.util.a0.t("下载升级包失败");
                    bVar.b();
                    return;
                }
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        int i11 = 3;
        int i12 = 2;
        int i13 = 1;
        int i14 = 0;
        int i15 = ActivityNissan.I;
        ActivityNissan activityNissan = this.f15982b;
        activityNissan.getClass();
        if (i10 == 0) {
            if (fa.g0.f5682a.f()) {
                com.yunpan.appmanage.util.a0.v("系统本身已root，无需多此一举", false);
                return;
            }
            fa.b0.f5652a.getClass();
            if (a2.w0.P()) {
                com.yunpan.appmanage.util.a0.v("本身已连接adb，无需多此一举", false);
                return;
            } else {
                new mc.c(0, new u4(activityNissan, i13)).d(rc.f.f13757b).a(fc.b.a()).b(new v4(activityNissan, 0));
                return;
            }
        }
        if (i10 == 1) {
            new mc.c(0, new u4(activityNissan, i12)).d(rc.f.f13757b).a(fc.b.a()).b(new v4(activityNissan, 2));
            return;
        }
        if (i10 == 2) {
            new ha.z6(activityNissan, activityNissan.A, "常识：开启USB调试后，车机将不能读取U盘\n\n每次开机后车机都会关闭usb调试\nUSB调试仅在需要usb连接adb时需要，无线adb则不需要开", "", "确定", "取消", new w4(activityNissan, i14)).show();
            return;
        }
        if (i10 == 3) {
            new mc.c(0, new v0(24)).d(rc.f.f13757b).a(fc.b.a()).b(new v4(activityNissan, 1));
            return;
        }
        if (i10 == 4) {
            if (fa.g0.f5682a.f()) {
                Toaster.showLong((CharSequence) "您已是root权限，无需提权");
                return;
            }
            fa.b0.f5652a.getClass();
            if (!a2.w0.P()) {
                Toaster.show((CharSequence) "请先连接adb");
                return;
            }
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4058m) {
                com.yunpan.appmanage.util.a0.w("已拥有系统写入权，无需再提权");
                return;
            } else {
                int i16 = ActivityLaboratory.I;
                new mc.c(0, new qa(5, false)).d(rc.f.f13757b).a(fc.b.a()).b(new v4(activityNissan, 3));
                return;
            }
        }
        if (i10 == 5) {
            return;
        }
        if (i10 == 6) {
            new ha.z6(activityNissan, activityNissan.A, "如果您的方向盘能正常控制导航音量(高德)，则不需要点修复", "注：如果无效，请考虑换一个高德官方版本看看", "取消", "我需要修复", new w4(activityNissan, i13)).show();
            return;
        }
        if (i10 == 7) {
            new ha.z6(activityNissan, activityNissan.A, "一般用第一种方法即可修复，如果不行才用第二种方法！", "警告：第一种方法有效的话，切勿再点第二种方法！\n注：如果无效，请考虑换一个高德官方版本看看", "取消", "我需要修复", new w4(activityNissan, i12)).show();
            return;
        }
        if (i10 == 8) {
            fa.b0.f5652a.getClass();
            if (!a2.w0.M()) {
                new ha.z6(activityNissan, activityNissan.A, "请先连接adb 或者 日产车机请安装公签版(飞思卡尔)", "", "好的", "", new s9.a(10, false)).show();
                return;
            }
            try {
                if (Settings.System.getInt(activityNissan.A.getContentResolver(), "screen_off_timeout") == -1) {
                    com.yunpan.appmanage.util.a0.w("您的系统没有问题");
                    return;
                }
            } catch (Exception unused) {
            }
            new mc.c(0, new u4(activityNissan, i11)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.m6(14));
            return;
        }
        if (i10 == 9) {
            new ha.z6(activityNissan, activityNissan.A, "这个有何用？ 比如：当你误删系统文件，或者禁用系统桌面等情况导致开机进不了系统的时候，用语音打开" + activityNissan.A.getString(R.string.app_name) + "，这种救急预案就显得尤为重要", "仅增加了语音：打开" + activityNissan.A.getString(R.string.app_name) + "\n\n现在有映射功能了，可以映射屏幕某个按键为打开" + activityNissan.A.getString(R.string.app_name) + "，这样就无需升级语音", "升级语音", "取消", new w4(activityNissan, i11)).show();
            return;
        }
        if (i10 == 10) {
            if (ActivityNissan.y() < 300) {
                com.yunpan.appmanage.util.a0.u("不适合旧版系统");
                return;
            } else {
                activityNissan.w(ActivityNissanTextGN.class);
                return;
            }
        }
        if (i10 == 11) {
            if (ActivityNissan.y() < 300) {
                com.yunpan.appmanage.util.a0.u("不适合旧版系统");
                return;
            } else {
                activityNissan.w(ActivityNissanTextVehicle.class);
                return;
            }
        }
        if (i10 == 12) {
            if (ActivityNissan.y() < 300) {
                com.yunpan.appmanage.util.a0.u("不适合旧版系统");
                return;
            } else {
                activityNissan.w(ActivityNissanTextReverse.class);
                return;
            }
        }
        if (i10 != 13) {
            Toaster.show((CharSequence) "此功能暂未开放");
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setClassName("com.szlanyou.otaupdate", "com.szlanyou.otaupdate.service.AppStoreUpdateService");
            if (activityNissan.A.bindService(intent, activityNissan.G, 1)) {
                return;
            }
            com.yunpan.appmanage.util.a0.u("绑定服务失败");
        } catch (Exception unused2) {
            com.yunpan.appmanage.util.a0.u("不适合您的设备");
        }
    }
}

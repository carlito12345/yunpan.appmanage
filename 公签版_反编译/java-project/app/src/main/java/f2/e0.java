package f2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.Display;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.bean.KeyCodeBean;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.bean.PresentationBean;
import com.yunpan.appmanage.bean.StackBean;
import com.yunpan.appmanage.ui.ActivityPresentation;
import com.yunpan.appmanage.ui.ActivityPresentation2;
import ha.d2;
import ha.e5;
import ha.e8;
import ha.f8;
import ha.fa;
import ha.g8;
import ha.ga;
import ha.ge;
import ha.h7;
import ha.h8;
import ha.ha;
import ha.he;
import ha.ie;
import ha.j3;
import ha.j8;
import ha.k7;
import ha.m8;
import ha.n1;
import ha.o1;
import ha.q9;
import ha.r3;
import ha.vc;
import ha.w6;
import ha.z6;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class e0 implements u1.f, ea.c, ec.d, mb.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5249a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5250b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5251c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f5252d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f5253e;

    public /* synthetic */ e0(ActivityPresentation2 activityPresentation2, int i10, StackBean stackBean, ArrayList arrayList) {
        this.f5249a = 4;
        this.f5251c = activityPresentation2;
        this.f5250b = i10;
        this.f5252d = stackBean;
        this.f5253e = arrayList;
    }

    public void a(KeyMapSelectBean keyMapSelectBean) {
        String str;
        int i10;
        int i11 = 5;
        int i12 = 4;
        int i13 = 0;
        int i14 = 1;
        final String str2 = keyMapSelectBean.gn_name;
        final int i15 = keyMapSelectBean.gn_type;
        final ea.e eVar = (ea.e) this.f5253e;
        final Activity activity = (Activity) this.f5251c;
        final Context context = (Context) this.f5252d;
        final int i16 = this.f5250b;
        if (i15 == 1 || i15 == 54 || i15 == 55) {
            new ha.r0(activity, context, str2.startsWith("打开应用") ? 1 : 2, new h8(i16, i15, str2, eVar, 10)).show();
            return;
        }
        if (i15 == 3008 || i15 == 945 || i15 == 2) {
            new ha.r0(activity, context, 4, new h8(i16, i15, str2, eVar, 0)).show();
            return;
        }
        if (i15 == 640) {
            new d2(activity, context, new h8(i16, i15, str2, eVar, 2)).show();
            return;
        }
        if (i15 == 641) {
            new vc(activity, context, new h8(i16, i15, str2, eVar, 5), 0).show();
            return;
        }
        if (i15 == 4000) {
            new q9(activity, context, new h8(i16, i15, str2, eVar, 7)).show();
            return;
        }
        if (i15 == 73 || i15 == 942 || i15 == 3002) {
            new ha.r0(activity, context, 3, new h8(i16, i15, str2, eVar, 8)).show();
            return;
        }
        if (i15 == 3) {
            new ha.i0(activity, context, null, new e8(i16, i15, eVar, i12)).show();
            return;
        }
        if (i15 == 4 || i15 == 410) {
            new j3(activity, context, new h8(i16, i15, str2, eVar, 9)).show();
            return;
        }
        if (i15 == 413) {
            new r3(activity, context, new h8(i16, i15, str2, eVar, 5)).show();
            return;
        }
        if (i15 == 418) {
            new ha.x0(activity, context, new e8(i16, i15, eVar, i11)).show();
            return;
        }
        if (i15 == 421) {
            new ha.l(activity, context, new h8(str2, i16, i15, eVar)).show();
            return;
        }
        if (i15 == 490) {
            new ha.b0(activity, context, new e8(i16, i15, eVar, i13)).show();
            return;
        }
        if (i15 == 416) {
            if (Build.VERSION.SDK_INT >= 21) {
                new ge(activity, context, new f8(i16, eVar)).show();
                return;
            }
            return;
        }
        if (i15 == 417) {
            if (Build.VERSION.SDK_INT >= 21) {
                new ha.g1(activity, context, new f8(i16, eVar)).show();
                return;
            }
            return;
        }
        if (i15 == 412) {
            ArrayList arrayList = new ArrayList();
            arrayList.add("超级静音(开/关)");
            arrayList.add("超级静音(开)");
            arrayList.add("超级静音(关)");
            new fa(activity, context, null, arrayList, new g8(i16, i15, arrayList, eVar, 0)).show();
            return;
        }
        if (i15 == 414) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add("切换日间/夜晚(原生)");
            arrayList2.add("改为日间模式(原生)");
            arrayList2.add("改为夜晚模式(原生)");
            new fa(activity, context, null, arrayList2, new g8(i16, i15, arrayList2, eVar, 1)).show();
            return;
        }
        if (i15 == 415) {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.add("切换日间/夜晚(公签)");
            arrayList3.add("改为日间模式(公签)");
            arrayList3.add("改为夜晚模式(公签)");
            new fa(activity, context, null, arrayList3, new g8(i16, i15, arrayList3, eVar, 2)).show();
            return;
        }
        if (i15 == 5000) {
            ArrayList arrayList4 = new ArrayList();
            arrayList4.add("切换日间/夜晚(广汽)");
            arrayList4.add("改为日间模式(广汽)");
            arrayList4.add("改为夜晚模式(广汽)");
            arrayList4.add("改为自动模式(广汽)");
            new fa(activity, context, null, arrayList4, new g8(i16, i15, arrayList4, eVar, 3)).show();
            return;
        }
        if (i15 == 5001) {
            ArrayList arrayList5 = new ArrayList();
            arrayList5.add("用电保持-切换");
            arrayList5.add("用电保持-关闭");
            arrayList5.add("用电保持-开启");
            new fa(activity, context, null, arrayList5, new g8(i16, i15, arrayList5, eVar, 4)).show();
            return;
        }
        if (i15 == 5008) {
            ArrayList arrayList6 = new ArrayList();
            arrayList6.add("休息模式-切换");
            arrayList6.add("休息模式-关闭");
            arrayList6.add("休息模式-开启");
            new fa(activity, context, null, arrayList6, new g8(i16, i15, arrayList6, eVar, 5)).show();
            return;
        }
        if (i15 == 5006) {
            ArrayList arrayList7 = new ArrayList();
            arrayList7.add("电尾门-切换");
            arrayList7.add("电尾门-关闭");
            arrayList7.add("电尾门-开启");
            new fa(activity, context, null, arrayList7, new g8(i16, i15, arrayList7, eVar, 6)).show();
            return;
        }
        if (i15 == 5007) {
            ArrayList arrayList8 = new ArrayList();
            arrayList8.add("指定亮度");
            arrayList8.add("增加亮度");
            arrayList8.add("减少亮度");
            new fa(activity, context, null, arrayList8, new g8(i16, i15, arrayList8, eVar, 7)).show();
            return;
        }
        if (i15 == 5004) {
            ArrayList arrayList9 = new ArrayList();
            arrayList9.add(new KeyCodeBean(-1, "切换运动模式"));
            arrayList9.add(new KeyCodeBean(2, "切换到 ECO"));
            arrayList9.add(new KeyCodeBean(3, "切换到 NORMAL"));
            arrayList9.add(new KeyCodeBean(5, "切换到 SPORT"));
            arrayList9.add(new KeyCodeBean(6, "切换到 I-PEDAL"));
            new ha(activity, context, "运动模式", arrayList9, new g8(i16, i15, arrayList9, eVar, 8)).show();
            return;
        }
        if (i15 == 5013) {
            ArrayList arrayList10 = new ArrayList();
            arrayList10.add(new KeyCodeBean(-1, "切换转向模式"));
            arrayList10.add(new KeyCodeBean(2, "切换到 轻盈"));
            arrayList10.add(new KeyCodeBean(1, "切换到 舒适"));
            arrayList10.add(new KeyCodeBean(3, "切换到 运动"));
            new ha(activity, context, "转向模式", arrayList10, new g8(i16, i15, arrayList10, eVar, 9)).show();
            return;
        }
        if (i15 == 5014) {
            ArrayList arrayList11 = new ArrayList();
            arrayList11.add(new KeyCodeBean(2, "开启"));
            arrayList11.add(new KeyCodeBean(1, "解除"));
            new ha(activity, context, "电子驻车", arrayList11, new g8(i16, i15, arrayList11, eVar, 10)).show();
            return;
        }
        if (i15 == 5002) {
            ArrayList arrayList12 = new ArrayList();
            arrayList12.add("空调开关");
            arrayList12.add("AC开关");
            arrayList12.add("双区同步");
            arrayList12.add("风速调节");
            arrayList12.add("温度调节");
            arrayList12.add("内外循环");
            arrayList12.add("出风模式");
            arrayList12.add("后视镜加热");
            arrayList12.add("主座椅通风");
            arrayList12.add("主座椅加热");
            arrayList12.add("副座椅通风");
            arrayList12.add("副座椅加热");
            new fa(activity, context, null, arrayList12, new j8(activity, context, i16, i15, arrayList12, eVar)).show();
            return;
        }
        if (i15 == 4001) {
            new e5(activity, context, new h8(i16, i15, str2, eVar, 1)).show();
            return;
        }
        if (i15 == 2002 || i15 == 2003 || i15 == 2004) {
            String strSubstring = str2.substring(0, 2);
            if (i15 == 2004) {
                strSubstring = "本机热点";
            }
            ArrayList arrayList13 = new ArrayList();
            arrayList13.add(strSubstring + "-切换");
            arrayList13.add(strSubstring + "-关闭");
            arrayList13.add(strSubstring + "-开启");
            new fa(activity, context, null, arrayList13, new g8(i16, i15, arrayList13, eVar, 11)).show();
            return;
        }
        if (i15 == 5500) {
            ArrayList arrayList14 = new ArrayList();
            arrayList14.add("外后视镜-切换");
            arrayList14.add("外后视镜-折叠");
            arrayList14.add("外后视镜-展开");
            new fa(activity, context, null, arrayList14, new g8(i16, i15, arrayList14, eVar, 12)).show();
            return;
        }
        if (i15 == 5501) {
            ArrayList arrayList15 = new ArrayList();
            arrayList15.add("电尾门-开/关");
            arrayList15.add("电尾门-开");
            arrayList15.add("电尾门-关");
            new fa(activity, context, null, arrayList15, new g8(i16, i15, arrayList15, eVar, 13)).show();
            return;
        }
        if (i15 == 703) {
            new k7(activity, context, "在当前窗口/页面中，查找此关键字的按钮，点击", new h8(i16, i15, str2, eVar, 3)).show();
            return;
        }
        if (i15 == 704) {
            new k7(activity, context, "在当前窗口/页面中，查找此ID的按钮，点击", new h8(i16, i15, str2, eVar, 4)).show();
            return;
        }
        if (i15 == 49) {
            List<InputMethodInfo> inputMethodList = ((InputMethodManager) context.getSystemService("input_method")).getInputMethodList();
            if (inputMethodList.isEmpty()) {
                com.yunpan.appmanage.util.a0.u("没有安装输入法");
                return;
            }
            ArrayList arrayList16 = new ArrayList();
            Iterator<InputMethodInfo> it = inputMethodList.iterator();
            while (it.hasNext()) {
                arrayList16.add(it.next().loadLabel(context.getPackageManager()).toString());
            }
            new fa(activity, context, null, arrayList16, new j8(i16, i15, str2, arrayList16, inputMethodList, eVar)).show();
            return;
        }
        if (i15 == 753) {
            new vc(activity, context, new h8(i16, i15, str2, eVar, 5), 1).show();
            return;
        }
        if (i15 == 750) {
            new o1(activity, context, (n1) new e8(i16, i15, eVar, i14)).show();
            return;
        }
        if (i15 == 751) {
            new o1(activity, context, new e8(i16, i15, eVar, i)).show();
            return;
        }
        if (i15 == 622) {
            new ha.i(activity, context, new h8(i16, i15, str2, eVar, 6)).show();
            return;
        }
        if (i15 == 7000 || i15 == 7001) {
            new ha.f0(activity, context, i15, new e8(i16, i15, eVar, 3)).show();
            return;
        }
        if (i15 == 631 || i15 == 632) {
            final ArrayList arrayList17 = new ArrayList();
            arrayList17.add(new KeyMapSelectBean("媒体音量(原生)", 3));
            arrayList17.add(new KeyMapSelectBean("系统音量(原生)", 1));
            arrayList17.add(new KeyMapSelectBean("铃声音量(原生)", 2));
            arrayList17.add(new KeyMapSelectBean("通知音量(原生)", 5));
            arrayList17.add(new KeyMapSelectBean("MF音量(原生)", 8));
            arrayList17.add(new KeyMapSelectBean("电话音量(原生)", 0));
            g.b.u("闹钟音量(原生)", 4, arrayList17);
            if (Build.VERSION.SDK_INT >= 26) {
                g.b.u("辅助音(原生)", 10, arrayList17);
            }
            new ie(activity, context, arrayList17, new he() { // from class: ha.k8
                @Override // ha.he, ha.ea
                public final void b(int i17) {
                    KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList17.get(i17);
                    z7.s sVar = new z7.s();
                    sVar.l("keyType", Integer.valueOf(i16));
                    sVar.l("gnType", Integer.valueOf(i15));
                    sVar.m("name", str2 + "（" + keyMapSelectBean2.gn_name + "）");
                    sVar.l("streamType", Integer.valueOf(keyMapSelectBean2.gn_type));
                    eVar.k(sVar);
                }
            }).show();
            return;
        }
        if (i15 == 630) {
            ArrayList arrayList18 = new ArrayList();
            arrayList18.add(new KeyMapSelectBean("媒体音量(原生)", 3));
            arrayList18.add(new KeyMapSelectBean("系统音量(原生)", 1));
            arrayList18.add(new KeyMapSelectBean("铃声音量(原生)", 2));
            arrayList18.add(new KeyMapSelectBean("通知音量(原生)", 5));
            arrayList18.add(new KeyMapSelectBean("MF音量(原生)", 8));
            arrayList18.add(new KeyMapSelectBean("电话音量(原生)", 0));
            g.b.u("闹钟音量(原生)", 4, arrayList18);
            if (Build.VERSION.SDK_INT >= 26) {
                g.b.u("辅助音(原生)", 10, arrayList18);
            }
            new ie(activity, context, arrayList18, new j8(arrayList18, activity, context, i16, i15, eVar)).show();
            return;
        }
        if (i15 == 633) {
            if (com.yunpan.appmanage.carsdk.j0.f3843a.f3848d == null) {
                com.yunpan.appmanage.util.a0.u("当前设备不支持car音量");
                return;
            }
            ArrayList arrayList19 = new ArrayList();
            for (int i17 = 0; i17 < 32; i17++) {
                if (com.yunpan.appmanage.carsdk.j0.f3843a.d(i17) > 0) {
                    arrayList19.add(new KeyMapSelectBean(da.b.a(i17, "通道"), i17));
                }
            }
            if (arrayList19.isEmpty()) {
                com.yunpan.appmanage.util.a0.u("无法获取car音量通道");
                return;
            }
            Object[] objArr = {"设置音量", "音量+", "音量-"};
            ArrayList arrayList20 = new ArrayList(3);
            int i18 = 0;
            for (int i19 = 3; i18 < i19; i19 = 3) {
                Object obj = objArr[i18];
                Objects.requireNonNull(obj);
                arrayList20.add(obj);
                i18++;
            }
            new fa(activity, context, "选择功能", Collections.unmodifiableList(arrayList20), new j8(activity, context, arrayList19, i16, i15, eVar)).show();
            return;
        }
        if (i15 == 605) {
            final ArrayList arrayList21 = new ArrayList();
            arrayList21.add(new KeyMapSelectBean("向上滑动", 100));
            arrayList21.add(new KeyMapSelectBean("向下滑动", 101));
            arrayList21.add(new KeyMapSelectBean("向左滑动", 102));
            arrayList21.add(new KeyMapSelectBean("向右滑动", 103));
            arrayList21.add(new KeyMapSelectBean("点击中间", 10));
            arrayList21.add(new KeyMapSelectBean("双击中间", 11));
            g.b.u("长按中间", 12, arrayList21);
            if (Build.VERSION.SDK_INT >= 28) {
                arrayList21.add(new KeyMapSelectBean("双指上滑", 200));
                arrayList21.add(new KeyMapSelectBean("双指下滑", CarSettingID.Recv.IGM_INPUT_OVER_VOLT));
                arrayList21.add(new KeyMapSelectBean("双指左滑", CarSettingID.Recv.IGM_OVER_TEMP));
                arrayList21.add(new KeyMapSelectBean("双指右滑", CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE));
                arrayList21.add(new KeyMapSelectBean("三指上滑", NoConst.RECORDING_TIME_INTERVAL));
                arrayList21.add(new KeyMapSelectBean("三指下滑", 301));
                arrayList21.add(new KeyMapSelectBean("三指左滑", 302));
                arrayList21.add(new KeyMapSelectBean("三指右滑", 303));
            }
            arrayList21.add(new KeyMapSelectBean("顶部左边下拉", 400));
            arrayList21.add(new KeyMapSelectBean("顶部中间下拉", 401));
            arrayList21.add(new KeyMapSelectBean("顶部右边下拉", 402));
            arrayList21.add(new KeyMapSelectBean("底部左边上拉", 403));
            arrayList21.add(new KeyMapSelectBean("底部中间上拉", 404));
            arrayList21.add(new KeyMapSelectBean("底部右边上拉", 405));
            arrayList21.add(new KeyMapSelectBean("左上侧边右滑", 406));
            arrayList21.add(new KeyMapSelectBean("左中侧边右滑", 407));
            arrayList21.add(new KeyMapSelectBean("左下侧边右滑", 408));
            arrayList21.add(new KeyMapSelectBean("单指滑动(指定)", -1));
            new ie(activity, context, arrayList21, new he() { // from class: ha.l8
                @Override // ha.he, ha.ea
                public final void b(int i20) {
                    String str3 = str2;
                    KeyMapSelectBean keyMapSelectBean2 = (KeyMapSelectBean) arrayList21.get(i20);
                    int i21 = keyMapSelectBean2.gn_type;
                    ea.e eVar2 = eVar;
                    int i22 = i16;
                    int i23 = i15;
                    if (i21 == -1) {
                        new m7(activity, context, new p8(i22, i23, keyMapSelectBean2, eVar2)).show();
                        return;
                    }
                    try {
                        z7.s sVar = new z7.s();
                        sVar.l("keyType", Integer.valueOf(i22));
                        sVar.l("gnType", Integer.valueOf(i23));
                        sVar.m("name", str3 + "：" + keyMapSelectBean2.gn_name);
                        sVar.l("int1", Integer.valueOf(keyMapSelectBean2.gn_type));
                        eVar2.k(sVar);
                    } catch (Exception unused) {
                    }
                }
            }).show();
            return;
        }
        try {
            final z7.s sVar = new z7.s();
            sVar.l("keyType", Integer.valueOf(i16));
            sVar.l("gnType", Integer.valueOf(i15));
            if (i15 != 7 && i15 != 8) {
                if (i15 == 32 || i15 == 33 || i15 == 22 || i15 == 23 || i15 == 30 || i15 == 31 || i15 == 34 || i15 == 35) {
                    new ha.r0(activity, context, 1, new m8(sVar, str2, eVar, 0)).show();
                    return;
                }
                if (i15 == 70 || i15 == 920 || i15 == 924 || i15 == 71 || i15 == 72) {
                    new o1(activity, context, (h7) new m8(sVar, str2, eVar, 1)).show();
                    return;
                }
                if (i15 == 601 || i15 == 602) {
                    new z6(activity, context, "请输入提示内容", new m8(sVar, str2, eVar, 2)).show();
                    return;
                }
                if (i15 == 607) {
                    new o1(activity, context, new m8(sVar, str2, eVar, 3)).show();
                    return;
                }
                if (i15 == 603) {
                    new o1(activity, context, new d2.w(sVar, 15, eVar), 9).show();
                    return;
                }
                if (i15 == 80 || i15 == 800 || i15 == 801) {
                    new ha.i(activity, context, new m8(sVar, str2, eVar, 4)).show();
                    return;
                }
                if (i15 == 806 || i15 == 921 || i15 == 3000) {
                    new d2(activity, context, new m8(sVar, str2, eVar, 5)).show();
                    return;
                }
                if (i15 == 807 || i15 == 922 || i15 == 3001) {
                    new w6(activity, context, false, false, new m8(sVar, str2, eVar, 6)).show();
                    return;
                }
                if (i15 == 75) {
                    new w6(activity, context, true, true, new m8(sVar, str2, eVar, 7)).show();
                    return;
                }
                if (i15 == 606) {
                    new w6(activity, context, false, true, new m8(sVar, str2, eVar, 8)).show();
                    return;
                }
                if (i15 != 808 && i15 != 3010 && i15 != 923) {
                    if (i15 >= 100 && i15 < 200) {
                        switch (i15) {
                            case 100:
                                i10 = 85;
                                break;
                            case 101:
                                i10 = 87;
                                break;
                            case 102:
                                i10 = 88;
                                break;
                            case 103:
                                i10 = 86;
                                break;
                            case 104:
                                i10 = 164;
                                break;
                            case 105:
                                i10 = 27;
                                break;
                            default:
                                i10 = 0;
                                break;
                        }
                        sVar.l("int1", Integer.valueOf(i10));
                    }
                    str = str2;
                }
                final ArrayList arrayList22 = new ArrayList();
                arrayList22.add(new KeyCodeBean(100, "左键点击"));
                arrayList22.add(new KeyCodeBean(101, "右键点击"));
                arrayList22.add(new KeyCodeBean(200, "滚轮下滚"));
                arrayList22.add(new KeyCodeBean(CarSettingID.Recv.IGM_INPUT_OVER_VOLT, "滚轮上滚"));
                arrayList22.add(new KeyCodeBean(NoConst.RECORDING_TIME_INTERVAL, "按住左键往下移动"));
                arrayList22.add(new KeyCodeBean(301, "按住左键往上移动"));
                new ha(activity, context, null, arrayList22, new ga() { // from class: ha.o8
                    @Override // ha.ga
                    public final void b(final int i20) {
                        final ArrayList arrayList23 = arrayList22;
                        Integer numValueOf = Integer.valueOf(((KeyCodeBean) arrayList23.get(i20)).keyCode);
                        final z7.s sVar2 = sVar;
                        sVar2.l("mouseType", numValueOf);
                        final ea.e eVar2 = eVar;
                        final String str3 = str2;
                        if (i20 == 0 || i20 == 1) {
                            new w6(activity, context, false, true, new v6() { // from class: ha.r8
                                @Override // ha.v6
                                public final void b(KeyMapSelectBean keyMapSelectBean2, KeyMapSelectBean keyMapSelectBean3, int i21, int i22) {
                                    z7.s sVar3 = sVar2;
                                    String str4 = str3;
                                    ArrayList arrayList24 = arrayList23;
                                    int i23 = i20;
                                    ea.e eVar3 = eVar2;
                                    try {
                                        sVar3.m("name", str4 + "-" + ((KeyCodeBean) arrayList24.get(i23)).keyName + "：" + keyMapSelectBean3.gn_name + "(" + i21 + "," + i22 + ")");
                                        sVar3.l("action", Integer.valueOf(keyMapSelectBean3.gn_type));
                                        sVar3.l("x", Integer.valueOf(i21));
                                        sVar3.l("y", Integer.valueOf(i22));
                                        eVar3.k(sVar3);
                                    } catch (Exception unused) {
                                    }
                                }
                            }).show();
                            return;
                        }
                        try {
                            sVar2.m("name", str3 + "：" + ((KeyCodeBean) arrayList23.get(i20)).keyName);
                            eVar2.k(sVar2);
                        } catch (Exception unused) {
                        }
                    }
                }).show();
                return;
            }
            str = str2;
            if (!p000if.a.d0(context, new Intent().setClassName("com.android.systemui", "com.android.systemui.recents.RecentsActivity"))) {
                com.yunpan.appmanage.util.a0.t("您的系统可能不支持此功能");
            }
            sVar.m("name", str);
            eVar.k(sVar);
        } catch (Exception unused) {
        }
    }

    @Override // u1.f
    public void accept(Object obj) {
        i0 i0Var = (i0) obj;
        b2.d dVar = (b2.d) this.f5251c;
        i0Var.G(dVar.f2528a, dVar.f2529b, (t) this.f5252d, (y) this.f5253e, this.f5250b);
    }

    @Override // ea.c
    public void e(int i10) {
        StringBuilder sb2 = new StringBuilder("设置音量（car");
        ArrayList arrayList = (ArrayList) this.f5252d;
        int i11 = this.f5250b;
        sb2.append(((KeyMapSelectBean) arrayList.get(i11)).gn_name);
        sb2.append("）：");
        sb2.append(i10);
        String string = sb2.toString();
        z7.s sVar = (z7.s) this.f5251c;
        sVar.m("name", string);
        sVar.l("streamType", Integer.valueOf(((KeyMapSelectBean) arrayList.get(i11)).gn_type));
        sVar.l("volume", Integer.valueOf(i10));
        ((ea.e) this.f5253e).k(sVar);
    }

    @Override // mb.f
    public void f(int i10, mb.h hVar, nb.b bVar) {
        int iCeil = (int) Math.ceil(((u1.p) this.f5251c).d(hVar, 0, hVar.f11076c, (eb.c) this.f5252d));
        androidx.leanback.widget.i iVar = (androidx.leanback.widget.i) this.f5253e;
        double d10 = iVar.f1647b;
        double d11 = iCeil;
        Double.isNaN(d11);
        double d12 = this.f5250b;
        Double.isNaN(d12);
        double dMax = Math.max(1.0d, Math.ceil((d11 * 1.0d) / d12));
        Double.isNaN(d10);
        iVar.f1647b = (int) (dMax + d10);
    }

    @Override // ec.d
    public void g(mc.b bVar) throws InterruptedException {
        Intent leanbackLaunchIntentForPackage;
        Object obj = this.f5253e;
        int i10 = this.f5250b;
        Object obj2 = this.f5252d;
        Object obj3 = this.f5251c;
        switch (this.f5249a) {
            case 3:
                int i11 = ActivityPresentation.H;
                ActivityPresentation activityPresentation = (ActivityPresentation) obj3;
                activityPresentation.getClass();
                String str = (String) ((ArrayList) obj2).get(i10);
                PresentationBean presentationBean = (PresentationBean) obj;
                if (str.equals("温柔关闭")) {
                    a2.w0 w0Var = fa.b0.f5652a;
                    String str2 = "am kill '" + presentationBean.packageName + "'";
                    w0Var.getClass();
                    a2.w0.h(str2);
                } else if (str.equals("强制关闭")) {
                    a2.w0 w0Var2 = fa.b0.f5652a;
                    String str3 = "am force-stop '" + presentationBean.packageName + "'";
                    w0Var2.getClass();
                    a2.w0.h(str3);
                } else if (str.startsWith("在")) {
                    int i12 = str.equals("在主屏显示") ? 0 : Integer.parseInt(str.substring(str.lastIndexOf("=") + 1));
                    a2.w0 w0Var3 = fa.b0.f5652a;
                    String str4 = "am start -n '" + presentationBean.className + "' --display " + i12;
                    w0Var3.getClass();
                    fa.a0 a0VarH = a2.w0.h(str4);
                    if (a0VarH.f5648a != 0) {
                        leanbackLaunchIntentForPackage = Build.VERSION.SDK_INT >= 21 ? activityPresentation.A.getPackageManager().getLeanbackLaunchIntentForPackage(presentationBean.packageName) : null;
                        if (leanbackLaunchIntentForPackage == null) {
                            leanbackLaunchIntentForPackage = activityPresentation.A.getPackageManager().getLaunchIntentForPackage(presentationBean.packageName);
                        }
                        if (leanbackLaunchIntentForPackage != null) {
                            a0VarH = a2.w0.h("am start -n '" + leanbackLaunchIntentForPackage.getComponent().flattenToString() + "' --display " + i12);
                        }
                    }
                    if (a0VarH.f5648a != 0) {
                        com.yunpan.appmanage.util.a0.t("操作失败，可能此应用不适合");
                    }
                }
                Thread.sleep(300L);
                bVar.b();
                break;
            default:
                int i13 = ActivityPresentation2.H;
                ActivityPresentation2 activityPresentation2 = (ActivityPresentation2) obj3;
                activityPresentation2.getClass();
                StackBean stackBean = (StackBean) obj2;
                if (i10 != 0) {
                    leanbackLaunchIntentForPackage = Build.VERSION.SDK_INT >= 21 ? activityPresentation2.A.getPackageManager().getLeanbackLaunchIntentForPackage(stackBean.packageName) : null;
                    if (leanbackLaunchIntentForPackage == null) {
                        leanbackLaunchIntentForPackage = activityPresentation2.A.getPackageManager().getLaunchIntentForPackage(stackBean.packageName);
                    }
                    if (leanbackLaunchIntentForPackage != null) {
                        a2.w0 w0Var4 = fa.b0.f5652a;
                        String str5 = "am start -n '" + leanbackLaunchIntentForPackage.getComponent().flattenToString() + "' --display " + ((Display) ((ArrayList) obj).get(i10 - 1)).getDisplayId();
                        w0Var4.getClass();
                        if (a2.w0.h(str5).f5648a != 0) {
                            com.yunpan.appmanage.util.a0.u("启动失败");
                        }
                        bVar.b();
                        break;
                    } else {
                        com.yunpan.appmanage.util.a0.u("此应用无法启动");
                        bVar.b();
                        break;
                    }
                } else {
                    a2.w0 w0Var5 = fa.b0.f5652a;
                    String str6 = "am force-stop '" + stackBean.packageName + "'";
                    w0Var5.getClass();
                    a2.w0.h(str6);
                    bVar.b();
                    break;
                }
        }
    }

    public /* synthetic */ e0(Object obj, Object obj2, int i10, Object obj3, int i11) {
        this.f5249a = i11;
        this.f5251c = obj;
        this.f5252d = obj2;
        this.f5250b = i10;
        this.f5253e = obj3;
    }

    public /* synthetic */ e0(Object obj, Object obj2, Object obj3, int i10, int i11) {
        this.f5249a = i11;
        this.f5251c = obj;
        this.f5252d = obj2;
        this.f5253e = obj3;
        this.f5250b = i10;
    }
}

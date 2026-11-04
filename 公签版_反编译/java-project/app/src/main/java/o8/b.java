package o8;

import android.os.Build;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.bumptech.glide.d;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f11661a;

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f11662b;

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f11663c;

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f11664d = {"ro.flyme.published", "ro.flyme.version.id"};

    /* renamed from: e, reason: collision with root package name */
    public static final String[] f11665e = {"ro.smartisan.sa", "ro.smartisan.version"};

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f11666f = {"ro.letv.release.version", "ro.letv.release.version_date", "ro.product.letv_model", "ro.product.letv_name", "sys.letv.fmodelaid", "persist.sys.leui.bootreason", "ro.config.leui_ringtone_slot2", "ro.leui_oem_unlock_enable"};

    /* renamed from: g, reason: collision with root package name */
    public static final String[] f11667g = {"ro.config.lgsi.fp.incremental", "ro.config.lgsi.os.version"};

    /* renamed from: h, reason: collision with root package name */
    public static final String[] f11668h = {"ro.com.zui.version", "ro.zui.version.status", "ro.zui.hardware.displayid", "persist.radio.zui.feature", "ro.config.zuisdk.enabled"};

    /* renamed from: i, reason: collision with root package name */
    public static final String[] f11669i = {"ro.os.ota.version", "ro.system_ext.ota.version", "persist.sys.monitor.ota"};

    /* renamed from: j, reason: collision with root package name */
    public static final int f11670j;

    /* renamed from: k, reason: collision with root package name */
    public static final String f11671k;
    public static final String l;

    static {
        String[] strArr = {"ro.miui.build.region", "ro.miui.region", "ro.vendor.miui.region"};
        String[] strArr2 = {"ro.mi.os.version.name", "ro.mi.os.version.code", "ro.mi.os.version.incremental"};
        f11661a = strArr;
        String[] strArr3 = {"ro.miui.ui.version.name", "ro.miui.ui.version.code"};
        f11662b = strArr;
        String[] strArr4 = {"ro.build.display.id", "ro.build.display.id.show", "persist.sys.oplus.ota_ver_display", "ro.build.version.oplusrom", "ro.build.version.oplusrom.confidential"};
        String[] strArr5 = {"ro.vivo.product.version", "ro.vivo.default.version", "ro.vivo.build.version.incremental", "ro.vivo.product.version.incremental", "ro.vivo.build.version", "ro.vivo.system.product.version", "ro.build.software.version"};
        String[] strArr6 = {"msc.config.magic.version", "ro.build.version.magic"};
        String[] strArr7 = {"ro.product.anco.devicetype", "ro.sys.anco.product.software.version", "ro.product.os.dist.anco.apiversion", "ro.product.os.dist.anco.releasetype"};
        String[] strArr8 = {"ro.honor.build.display.id", "persist.sys.hiview.base_version", "ro.comp.hl.product_base_version", "ro.build.display.id"};
        String[] strArr9 = {"ro.huawei.build.display.id", "ro.comp.hl.product_base_version", "persist.sys.hiview.base_version", "hw_sc.build.platform.version"};
        f11663c = strArr9;
        String[] strArr10 = {"ro.build.ohos.devicetype", "persist.sys.ohos.osd.cloud.switch"};
        if (d.J(strArr2)) {
            f11670j = -1248529104;
            f11671k = "HyperOS";
            l = d("ro.mi.os.version.incremental");
        } else if (d.J(strArr3)) {
            f11670j = 2366768;
            f11671k = "MIUI";
            l = d("ro.build.version.incremental");
        }
        if (f11671k == null) {
            String strC = d.C("ro.build.version.realmeui");
            if (!TextUtils.isEmpty(strC)) {
                f11670j = -859411254;
                f11671k = "realmeUI";
                l = e(strC);
            } else if (TextUtils.isEmpty(d.C("ro.build.version.oplusrom"))) {
                String strC2 = d.C("ro.build.version.opporom");
                if (!TextUtils.isEmpty(strC2)) {
                    f11670j = -1680767897;
                    f11671k = "ColorOS";
                    l = e(strC2);
                }
            } else {
                f11670j = -1680767897;
                f11671k = "ColorOS";
                l = d(strArr4);
            }
        }
        if (f11671k == null) {
            String strC3 = d.C("ro.vivo.os.build.display.id");
            if (!TextUtils.isEmpty(strC3)) {
                if (strC3.toLowerCase().contains(OSSHeaders.ORIGIN)) {
                    f11670j = 1443687338;
                    f11671k = "OriginOS";
                    l = d(strArr5);
                } else if (strC3.toLowerCase().contains("funtouch")) {
                    f11670j = -294058204;
                    f11671k = "FuntouchOS";
                    l = d("ro.vivo.os.build.display.id");
                }
            }
        }
        if (f11671k == null && d.J(strArr6)) {
            f11670j = -1801284559;
            f11671k = "MagicOS";
            l = d(strArr8);
        }
        if (f11671k == null && d.J(strArr7)) {
            f11670j = -182666708;
            f11671k = "HarmonyOS NEXT AndroidCompatible";
            l = d("ro.sys.anco.product.software.version");
        }
        if (f11671k == null && d.J(strArr10)) {
            f11670j = 1583864138;
            f11671k = "HarmonyOS";
            l = d(strArr9);
        }
        if (f11671k == null) {
            String strC4 = d.C("ro.build.version.emui");
            if (!TextUtils.isEmpty(strC4) && strC4.toLowerCase().contains("emotionui")) {
                f11670j = 2132284;
                f11671k = "EMUI";
                l = e(strC4);
            }
        }
        if (f11671k == null) {
            String strC5 = d.C("ro.build.version.oneui");
            if (!TextUtils.isEmpty(strC5)) {
                f11670j = 76334938;
                f11671k = "OneUI";
                if (strC5.matches("\\d+")) {
                    try {
                        l = f(Integer.parseInt(strC5));
                    } catch (Exception unused) {
                    }
                } else if (strC5.matches("\\d+(?:\\.\\d+)+")) {
                    l = strC5;
                }
            }
            if (f11671k == null || TextUtils.isEmpty(l)) {
                try {
                    Field declaredField = Build.VERSION.class.getDeclaredField("SEM_PLATFORM_INT");
                    declaredField.setAccessible(true);
                    int i10 = declaredField.getInt(null);
                    f11670j = 76334938;
                    f11671k = "OneUI";
                    if (i10 >= 90000) {
                        l = f(i10 - 90000);
                    }
                } catch (Exception unused2) {
                }
            }
        }
        if (f11671k == null) {
            String strC6 = d.C("ro.oxygen.version");
            if (!TextUtils.isEmpty(strC6)) {
                f11670j = -1363277916;
                f11671k = "OxygenOS";
                l = e(strC6);
            }
        }
        if (f11671k == null) {
            String strC7 = d.C("ro.rom.version");
            if (!TextUtils.isEmpty(strC7)) {
                f11670j = 2195534;
                f11671k = "H2OS";
                l = e(strC7);
            }
        }
        if (f11671k == null && d.J(f11664d)) {
            f11670j = 67983659;
            f11671k = "Flyme";
            l = d("ro.build.display.id");
        }
        if (f11671k == null && !TextUtils.isEmpty(d.C("ro.build.MiFavor_version"))) {
            String strC8 = d.C("ro.build.display.id");
            if (!TextUtils.isEmpty(strC8)) {
                String lowerCase = strC8.toLowerCase();
                if (lowerCase.contains("nebulaaios")) {
                    f11670j = -1668450325;
                    f11671k = "NebulaAIOS";
                    l = e(strC8);
                } else if (lowerCase.contains("redmagicos")) {
                    f11670j = -417455456;
                    f11671k = "RedMagicOS";
                    l = e(strC8);
                } else if (lowerCase.contains("myos")) {
                    f11670j = 2412720;
                    f11671k = "MyOS";
                    l = e(strC8);
                } else if (lowerCase.contains("zte")) {
                    f11670j = -203064298;
                    f11671k = "MifavorUI";
                    l = d("ro.build.MiFavor_version");
                }
            }
        }
        if (f11671k == null) {
            String strC9 = d.C("ro.build.nubia.rom.name");
            if (!TextUtils.isEmpty(strC9) && strC9.toLowerCase().contains("nubiaui")) {
                f11670j = -2010470489;
                f11671k = "nubiaUI";
                l = d("ro.build.nubia.rom.code");
                if (Build.VERSION.SDK_INT >= 27) {
                    int iA = a(Build.VERSION.RELEASE);
                    String str = l;
                    if (str == null) {
                        str = "";
                    }
                    if (iA - a(str) >= 5) {
                        f11670j = -417455456;
                        f11671k = "RedMagicOS";
                    }
                }
            }
        }
        if (f11671k == null) {
            String strC10 = d.C("ro.config.lgsi.os.name");
            if (!TextUtils.isEmpty(strC10) && strC10.toLowerCase().contains("zuxos")) {
                f11670j = 85736225;
                f11671k = "ZUXOS";
                l = d(f11667g);
            } else if (d.J(f11668h)) {
                f11670j = 89198;
                f11671k = "ZUI";
                l = d("ro.com.zui.version");
            }
        }
        if (f11671k == null && !TextUtils.isEmpty(d.C("init.svc.bytecellular"))) {
            f11670j = 12510861;
            f11671k = "ObricUI";
            l = d(f11669i);
        }
        if (f11671k == null && !TextUtils.isEmpty(d.C("ro.asus.rog"))) {
            f11670j = 78153150;
            f11671k = "ROGUI";
            l = d("ro.build.version.incremental");
        }
        if (f11671k == null && d.J(f11665e)) {
            f11670j = 1805724132;
            f11671k = "SmartisanOS";
            l = d("ro.smartisan.version");
        }
        if (f11671k == null && d.J(f11666f)) {
            f11670j = 69017;
            f11671k = "EUI";
            l = d("ro.letv.release.version");
        }
        if (f11671k == null) {
            String strC11 = d.C("ro.build.uiversion");
            if (!TextUtils.isEmpty(strC11) && strC11.toLowerCase().contains("360ui")) {
                f11670j = 48757121;
                f11671k = "360UI";
                l = e(strC11);
            }
        }
        if (f11671k == null) {
            try {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                Method method = cls.getMethod("getOsBrand", null);
                method.setAccessible(true);
                Object objInvoke = method.invoke(cls, null);
                if (objInvoke != null && String.valueOf(objInvoke).toLowerCase().contains("harmony")) {
                    f11670j = 1583864138;
                    f11671k = "HarmonyOS";
                    l = d(f11663c);
                }
            } catch (Exception unused3) {
            }
        }
        if (f11671k == null) {
            f11671k = "";
        }
        if (l == null) {
            l = "";
        }
    }

    public static int a(String str) {
        if (str != null && !str.isEmpty()) {
            String[] strArrSplit = str.split("\\.");
            if (strArrSplit.length == 0) {
                return -1;
            }
            try {
                return Integer.parseInt(strArrSplit[0]);
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public static int b(String str) {
        String strGroup;
        Matcher matcher = Pattern.compile("(\\d+)").matcher(str);
        if (!matcher.find() || matcher.groupCount() <= 0 || (strGroup = matcher.group(1)) == null) {
            return 0;
        }
        try {
            return Integer.parseInt(strGroup);
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String c(String str) {
        String strGroup;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        Matcher matcher = Pattern.compile("(\\d+(?:\\.\\d+)+)").matcher(str);
        return (!matcher.find() || matcher.groupCount() <= 0 || (strGroup = matcher.group(1)) == null) ? "" : strGroup;
    }

    public static String d(String... strArr) {
        for (String str : strArr) {
            String strC = c(d.C(str));
            if (!TextUtils.isEmpty(strC)) {
                return strC;
            }
        }
        for (String str2 : strArr) {
            int iB = b(d.C(str2));
            if (iB > 0) {
                return iB + ".0";
            }
        }
        return "";
    }

    public static String e(String str) {
        String strC = c(str);
        if (!TextUtils.isEmpty(strC)) {
            return strC;
        }
        int iB = b(str);
        if (iB <= 0) {
            return "";
        }
        return iB + ".0";
    }

    public static String f(int i10) {
        int i11 = i10 / 10000;
        int i12 = i10 % 10000;
        int i13 = i10 % 100;
        if (i13 <= 0) {
            return i11 + "." + (i12 / 100);
        }
        return i11 + "." + (i12 / 100) + "." + i13;
    }

    public static boolean g() {
        return f11670j == 2132284;
    }

    public static boolean h() {
        return f11670j == 67983659;
    }

    public static boolean i() {
        return f11670j == -1248529104;
    }

    public static boolean j() {
        if (!i()) {
            return false;
        }
        String[] strArr = f11661a;
        String[] strArr2 = new String[3];
        for (int i10 = 0; i10 < 3; i10++) {
            strArr2[i10] = d.C(strArr[i10]);
        }
        for (int i11 = 0; i11 < 3; i11++) {
            if (strArr2[i11].equalsIgnoreCase("cn")) {
                return true;
            }
        }
        return false;
    }

    public static boolean k() {
        return f11670j == 2366768;
    }

    public static boolean l() {
        if (!k()) {
            return false;
        }
        String[] strArr = f11662b;
        String[] strArr2 = new String[3];
        for (int i10 = 0; i10 < 3; i10++) {
            strArr2[i10] = d.C(strArr[i10]);
        }
        for (int i11 = 0; i11 < 3; i11++) {
            if (strArr2[i11].equalsIgnoreCase("cn")) {
                return true;
            }
        }
        return false;
    }

    public static boolean m() throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return Boolean.parseBoolean(String.valueOf(cls.getMethod("getBoolean", String.class, Boolean.TYPE).invoke(cls, "persist.sys.miui_optimization", Boolean.valueOf(!"1".equals(String.valueOf(cls.getMethod("get", String.class, String.class).invoke(cls, "ro.miui.cts", "")))))));
        } catch (Exception unused) {
            return true;
        }
    }
}

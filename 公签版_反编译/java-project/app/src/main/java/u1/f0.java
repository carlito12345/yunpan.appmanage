package u1;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.AudioFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Display;
import android.view.WindowManager;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import j$.nio.charset.StandardCharsets;
import java.math.RoundingMode;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.simpleframework.xml.strategy.Name;
import r1.m0;

/* loaded from: classes.dex */
public abstract class f0 {

    /* renamed from: a, reason: collision with root package name */
    public static final String f15206a;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f15207b;

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f15208c;

    /* renamed from: d, reason: collision with root package name */
    public static HashMap f15209d;

    /* renamed from: e, reason: collision with root package name */
    public static final String[] f15210e;

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f15211f;

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f15212g;

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f15213h;

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f15214i;

    static {
        int i10 = Build.VERSION.SDK_INT;
        String str = Build.DEVICE;
        String str2 = Build.MANUFACTURER;
        f15206a = str + ", " + Build.MODEL + ", " + str2 + ", " + i10;
        f15207b = new byte[0];
        Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt ](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)?))?");
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
        f15208c = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        f15210e = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", Name.MARK, "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f15211f = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f15212g = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f15213h = new int[]{0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
        f15214i = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, CarSettingID.Recv.SUNROOF_STATUS, 238, CarSettingID.Recv.LF_DOOR_STATUS, 252, 251, CarSettingID.Recv.RF_WIN_POSITION, 245, CarSettingID.Recv.IFC_HMA_AVAIL, CarSettingID.Recv.PAA_DVR_TRIGGER, CarSettingID.Recv.IFC_TCP_ST, CarSettingID.Recv.IFC_TLR_ACOUSTIC_WARN, 196, CarSettingID.Recv.THEME_MODE_DAY_AND_NIGHT, CarSettingID.Recv.IGM_OVER_TEMP, 205, 144, 151, CarSettingID.Recv.BCS_TCS_OFF, CarSettingID.Recv.EMS_BRK_REGEN_MOD, 140, 139, 130, 133, 168, CarSettingID.Recv.PCS_EVENT_RECORDST, CarSettingID.Recv.PEPS_POWER_OFF_ENABLE, 161, 180, 179, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_TIMES, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_YEAR, CarSettingID.Recv.IGM_OUTPUT_OVER_VOLT, 192, CarSettingID.Recv.IGM_INPUT_OVER_VOLT, CarSettingID.Recv.IGM_OUTPUT_SCB, 219, CarSettingID.Recv.IFC_TCPSESSIONID, CarSettingID.Recv.IFC_TCP_AVAIL, CarSettingID.Recv.IFC_SGW_AVAIL, 255, 248, 241, 246, CarSettingID.Recv.IPB_CST_STATUS, 228, 237, 234, CarSettingID.Recv.PCS_TURN_FOLLOW_SET_ST, 176, CarSettingID.Recv.RLS_RAIN_FALL_LEVEL, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_MONTH, CarSettingID.Recv.BCM_RLS_AUTO_SRWIN_CLOSE_CFGST, CarSettingID.Recv.ETC_SYS_CFGST, CarSettingID.Recv.BCM_AUTO_SRWIN_CLOSE_CFGST, CarSettingID.Recv.DRIVER_MODE_MUSIC_MODE, 143, 136, 129, 134, 147, 148, CarSettingID.Recv.EMS_PEDAL_LEVEL, CarSettingID.Recv.GSM_DRIVE_MODE, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, CarSettingID.Recv.EMS_AVDC_ACTIVE, CarSettingID.Recv.ADAS_HWAHF_VOICE_INFO, CarSettingID.Recv.PCS_LADAR_TRIGGER_SV_MSET_ST, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_DAY, CarSettingID.Recv.GSM_SPORT_PLUSUN_LOCK_ST, CarSettingID.Recv.ETC_ICM_DISPLAY_CFGST, CarSettingID.Recv.BCM_HEAD_LIGHT_DELAY_CFG_ST, CarSettingID.Recv.DRIVER_MODE_LAMP_COLOR, 164, 249, 254, 247, 240, CarSettingID.Recv.MAX_OPENNING_TAILGATE, 226, 235, CarSettingID.Recv.RR_DOOR_STATUS, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_MINUTE, CarSettingID.Recv.IGM_OUTPUT_UNDER_VOLT, CarSettingID.Recv.IFC_TLR_AVAIL, 200, CarSettingID.Recv.FLDCM_MIRROR_FOLD_UNFOLD_ST, 218, 211, CarSettingID.Recv.IFC_SGW_ACOUSTIC_WARN, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, CarSettingID.Recv.ETC_BL_EENABLE_CFGST, 169, CarSettingID.Recv.BCS_ATS_DRV_MODE_REQ, 167, CarSettingID.Recv.BCM_RAINSTORM_MODE_REQ, CarSettingID.Recv.PCS_PARK_GEAR_EXIT_SET_ST, 188, CarSettingID.Recv.GW_TRANSPORTATION_MODE, 150, 145, 152, 159, 138, 141, 132, 131, CarSettingID.Recv.FRDCM_MIRROR_FOLD_UNFOLD_ST, 217, CarSettingID.Recv.IFC_TLR_ST, CarSettingID.Recv.IFC_TSR_AVAIL, CarSettingID.Recv.SPORT_PLUS_UNLOCK_RESET_SECOND, CarSettingID.Recv.IGM_WORK_STATE, CarSettingID.Recv.IGM_OUTPUT_OVER_CUR, CarSettingID.Recv.IGM_OUTPUT_OPEN_LODE, CarSettingID.Recv.FRONT_HATCH_SWITCH, 225, CarSettingID.Recv.TAILGATE_STATUS, 239, 250, 253, 244, 243};
    }

    public static boolean A(q qVar, q qVar2, Inflater inflater) {
        if (qVar.a() == 0) {
            return false;
        }
        if (qVar2.f15266a.length < qVar.a()) {
            qVar2.c(qVar.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(qVar.f15266a, qVar.f15267b, qVar.a());
        int iInflate = 0;
        while (true) {
            try {
                byte[] bArr = qVar2.f15266a;
                iInflate += inflater.inflate(bArr, iInflate, bArr.length - iInflate);
                if (!inflater.finished()) {
                    if (inflater.needsDictionary() || inflater.needsInput()) {
                        break;
                    }
                    byte[] bArr2 = qVar2.f15266a;
                    if (iInflate == bArr2.length) {
                        qVar2.c(bArr2.length * 2);
                    }
                } else {
                    qVar2.N(iInflate);
                    inflater.reset();
                    return true;
                }
            } catch (DataFormatException unused) {
                return false;
            } finally {
                inflater.reset();
            }
        }
        return false;
    }

    public static void B(int i10) {
        Integer.toString(i10, 36);
    }

    public static boolean C(int i10) {
        return i10 == 21 || i10 == 1342177280 || i10 == 22 || i10 == 1610612736 || i10 == 4 || i10 == 1879048192;
    }

    public static boolean D(int i10) {
        return i10 == 3 || i10 == 2 || i10 == 268435456 || i10 == 21 || i10 == 1342177280 || i10 == 22 || i10 == 1610612736 || i10 == 4 || i10 == 1879048192;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean E(Context context) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29 && context.getApplicationInfo().targetSdkVersion >= 29) {
            if (i10 == 30) {
                String str = Build.MODEL;
                if (!qf.c.p(str, "moto g(20)") && !qf.c.p(str, "rmx3231")) {
                    if (i10 != 34 || !qf.c.p(Build.MODEL, "sm-x200")) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public static boolean F(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    public static long G(long j10) {
        return (j10 == -9223372036854775807L || j10 == Long.MIN_VALUE) ? j10 : j10 * 1000;
    }

    public static String H(String str) throws MissingResourceException {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !strReplace.equals("und")) {
            str = strReplace;
        }
        String strB0 = qf.c.b0(str);
        int i10 = 0;
        String str2 = strB0.split("-", 2)[0];
        if (f15209d == null) {
            String[] iSOLanguages = Locale.getISOLanguages();
            int length = iSOLanguages.length;
            String[] strArr = f15210e;
            HashMap map = new HashMap(length + strArr.length);
            for (String str3 : iSOLanguages) {
                try {
                    String iSO3Language = new Locale(str3).getISO3Language();
                    if (!TextUtils.isEmpty(iSO3Language)) {
                        map.put(iSO3Language, str3);
                    }
                } catch (MissingResourceException unused) {
                }
            }
            for (int i11 = 0; i11 < strArr.length; i11 += 2) {
                map.put(strArr[i11], strArr[i11 + 1]);
            }
            f15209d = map;
        }
        String str4 = (String) f15209d.get(str2);
        if (str4 != null) {
            strB0 = ta.q.m(str2, strB0, g.b.m(str4));
            str2 = str4;
        }
        if (!"no".equals(str2) && !"i".equals(str2) && !"zh".equals(str2)) {
            return strB0;
        }
        while (true) {
            String[] strArr2 = f15211f;
            if (i10 >= strArr2.length) {
                return strB0;
            }
            if (strB0.startsWith(strArr2[i10])) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(strArr2[i10 + 1]);
                return ta.q.m(strArr2[i10], strB0, sb2);
            }
            i10 += 2;
        }
    }

    public static Object[] I(int i10, Object[] objArr) {
        a9.o.k(i10 <= objArr.length);
        return Arrays.copyOf(objArr, i10);
    }

    public static void J(Handler handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (looper.getThread().isAlive()) {
            if (looper == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    public static long K(int i10, long j10) {
        return M(j10, 1000000L, i10, RoundingMode.DOWN);
    }

    public static void L(long[] jArr, long j10) {
        RoundingMode roundingMode = RoundingMode.DOWN;
        int i10 = 0;
        if (j10 >= 1000000 && j10 % 1000000 == 0) {
            long jQ = d.b.q(j10, 1000000L, RoundingMode.UNNECESSARY);
            while (i10 < jArr.length) {
                jArr[i10] = d.b.q(jArr[i10], jQ, roundingMode);
                i10++;
            }
            return;
        }
        if (j10 < 1000000 && 1000000 % j10 == 0) {
            long jQ2 = d.b.q(1000000L, j10, RoundingMode.UNNECESSARY);
            while (i10 < jArr.length) {
                jArr[i10] = d.b.j0(jArr[i10], jQ2);
                i10++;
            }
            return;
        }
        for (int i11 = 0; i11 < jArr.length; i11++) {
            long j11 = jArr[i11];
            if (j11 != 0) {
                if (j10 >= j11 && j10 % j11 == 0) {
                    jArr[i11] = d.b.q(1000000L, d.b.q(j10, j11, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j10 >= j11 || j11 % j10 != 0) {
                    jArr[i11] = N(j11, 1000000L, j10, roundingMode);
                } else {
                    jArr[i11] = d.b.j0(1000000L, d.b.q(j11, j10, RoundingMode.UNNECESSARY));
                }
            }
        }
    }

    public static long M(long j10, long j11, long j12, RoundingMode roundingMode) {
        if (j10 == 0 || j11 == 0) {
            return 0L;
        }
        return (j12 < j11 || j12 % j11 != 0) ? (j12 >= j11 || j11 % j12 != 0) ? (j12 < j10 || j12 % j10 != 0) ? (j12 >= j10 || j10 % j12 != 0) ? N(j10, j11, j12, roundingMode) : d.b.j0(j11, d.b.q(j10, j12, RoundingMode.UNNECESSARY)) : d.b.q(j11, d.b.q(j12, j10, RoundingMode.UNNECESSARY), roundingMode) : d.b.j0(j10, d.b.q(j11, j12, RoundingMode.UNNECESSARY)) : d.b.q(j10, d.b.q(j12, j11, RoundingMode.UNNECESSARY), roundingMode);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long N(long j10, long j11, long j12, RoundingMode roundingMode) {
        long j13;
        double dRint;
        long jJ0 = d.b.j0(j10, j11);
        if (jJ0 != Long.MAX_VALUE && jJ0 != Long.MIN_VALUE) {
            return d.b.q(jJ0, j12, roundingMode);
        }
        long jU = d.b.u(Math.abs(j11), Math.abs(j12));
        RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
        long jQ = d.b.q(j11, jU, roundingMode2);
        long jQ2 = d.b.q(j12, jU, roundingMode2);
        long jU2 = d.b.u(Math.abs(j10), Math.abs(jQ2));
        long jQ3 = d.b.q(j10, jU2, roundingMode2);
        long jQ4 = d.b.q(jQ2, jU2, roundingMode2);
        long jJ02 = d.b.j0(jQ3, jQ);
        if (jJ02 != Long.MAX_VALUE && jJ02 != Long.MIN_VALUE) {
            return d.b.q(jJ02, jQ4, roundingMode);
        }
        double d10 = jQ;
        double d11 = jQ4;
        Double.isNaN(d10);
        Double.isNaN(d11);
        double d12 = jQ3;
        Double.isNaN(d12);
        double d13 = d12 * (d10 / d11);
        if (d13 > 9.223372036854776E18d) {
            return Long.MAX_VALUE;
        }
        if (d13 < -9.223372036854776E18d) {
            return Long.MIN_VALUE;
        }
        int i10 = w7.b.f17624a;
        if (!com.bumptech.glide.c.J(d13)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (w7.a.f17623a[roundingMode.ordinal()]) {
            case 1:
                p000if.a.l(w7.b.a(d13));
                dRint = d13;
                if (!((-9.223372036854776E18d) - dRint >= 1.0d) || !(dRint < 9.223372036854776E18d)) {
                    return (long) dRint;
                }
                throw new ArithmeticException("rounded value is out of range for input " + d13 + " and rounding mode " + roundingMode);
            case 2:
                if (d13 < 0.0d && !w7.b.a(d13)) {
                    j13 = ((long) d13) - 1;
                    dRint = j13;
                    if (!(((-9.223372036854776E18d) - dRint >= 1.0d) & (dRint < 9.223372036854776E18d))) {
                    }
                }
                dRint = d13;
                if (!(((-9.223372036854776E18d) - dRint >= 1.0d) & (dRint < 9.223372036854776E18d))) {
                }
                break;
            case 3:
                if (d13 > 0.0d && !w7.b.a(d13)) {
                    j13 = ((long) d13) + 1;
                    dRint = j13;
                    if (!(((-9.223372036854776E18d) - dRint >= 1.0d) & (dRint < 9.223372036854776E18d))) {
                    }
                }
                dRint = d13;
                if (!(((-9.223372036854776E18d) - dRint >= 1.0d) & (dRint < 9.223372036854776E18d))) {
                }
                break;
            case 4:
                dRint = d13;
                if (!(((-9.223372036854776E18d) - dRint >= 1.0d) & (dRint < 9.223372036854776E18d))) {
                }
                break;
            case 5:
                if (!w7.b.a(d13)) {
                    dRint = ((long) d13) + (d13 > 0.0d ? 1 : -1);
                }
                if (!(((-9.223372036854776E18d) - dRint >= 1.0d) & (dRint < 9.223372036854776E18d))) {
                }
                break;
            case 6:
                dRint = Math.rint(d13);
                if (!(((-9.223372036854776E18d) - dRint >= 1.0d) & (dRint < 9.223372036854776E18d))) {
                }
                break;
            case 7:
                dRint = Math.rint(d13);
                if (Math.abs(d13 - dRint) == 0.5d) {
                    dRint = Math.copySign(0.5d, d13) + d13;
                }
                if (!(((-9.223372036854776E18d) - dRint >= 1.0d) & (dRint < 9.223372036854776E18d))) {
                }
                break;
            case 8:
                dRint = Math.rint(d13);
                if (Math.abs(d13 - dRint) == 0.5d) {
                }
                if (!(((-9.223372036854776E18d) - dRint >= 1.0d) & (dRint < 9.223372036854776E18d))) {
                }
                break;
            default:
                throw new AssertionError();
        }
    }

    public static boolean O(m0 m0Var, boolean z) {
        if (m0Var == null) {
            return true;
        }
        y1.x xVar = (y1.x) m0Var;
        if (!xVar.I() || xVar.J() == 1 || xVar.J() == 4) {
            return true;
        }
        return (!z || xVar.K() == 0 || xVar.K() == 4) ? false : true;
    }

    public static String[] P(String str) {
        return str.split("/", -1);
    }

    public static String Q(int i10) {
        return new String(new byte[]{(byte) (i10 >> 24), (byte) (i10 >> 16), (byte) (i10 >> 8), (byte) i10}, StandardCharsets.US_ASCII);
    }

    public static long R(long j10) {
        return (j10 == -9223372036854775807L || j10 == Long.MIN_VALUE) ? j10 : j10 / 1000;
    }

    public static int a(long[] jArr, long j10, boolean z) {
        int i10;
        int iBinarySearch = Arrays.binarySearch(jArr, j10);
        if (iBinarySearch < 0) {
            return iBinarySearch ^ (-1);
        }
        while (true) {
            i10 = iBinarySearch + 1;
            if (i10 >= jArr.length || jArr[i10] != j10) {
                break;
            }
            iBinarySearch = i10;
        }
        return z ? iBinarySearch : i10;
    }

    public static int b(sb.e eVar, long j10) {
        int i10 = eVar.f14472b - 1;
        int i11 = 0;
        while (i11 <= i10) {
            int i12 = (i11 + i10) >>> 1;
            if (eVar.c(i12) < j10) {
                i11 = i12 + 1;
            } else {
                i10 = i12 - 1;
            }
        }
        int i13 = i10 + 1;
        if (i13 < eVar.f14472b && eVar.c(i13) == j10) {
            return i13;
        }
        if (i10 == -1) {
            return 0;
        }
        return i10;
    }

    public static int c(int[] iArr, int i10, boolean z, boolean z4) {
        int i11;
        int i12;
        int iBinarySearch = Arrays.binarySearch(iArr, i10);
        if (iBinarySearch < 0) {
            i12 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i11 = iBinarySearch - 1;
                if (i11 < 0 || iArr[i11] != i10) {
                    break;
                }
                iBinarySearch = i11;
            }
            i12 = z ? iBinarySearch : i11;
        }
        return z4 ? Math.max(0, i12) : i12;
    }

    public static int d(long[] jArr, long j10, boolean z) {
        int i10;
        int iBinarySearch = Arrays.binarySearch(jArr, j10);
        if (iBinarySearch < 0) {
            i10 = -(iBinarySearch + 2);
        } else {
            while (true) {
                int i11 = iBinarySearch - 1;
                if (i11 < 0 || jArr[i11] != j10) {
                    break;
                }
                iBinarySearch = i11;
            }
            i10 = iBinarySearch;
        }
        return z ? Math.max(0, i10) : i10;
    }

    public static int e(int i10, int i11) {
        return ((i10 + i11) - 1) / i11;
    }

    public static float f(float f10, float f11, float f12) {
        return Math.max(f11, Math.min(f10, f12));
    }

    public static int g(int i10, int i11, int i12) {
        return Math.max(i11, Math.min(i10, i12));
    }

    public static long h(long j10, long j11, long j12) {
        return Math.max(j11, Math.min(j10, j12));
    }

    public static boolean i(int i10, SparseArray sparseArray) {
        return sparseArray.indexOfKey(i10) >= 0;
    }

    public static int j(int i10, int i11, int i12, byte[] bArr) {
        while (i10 < i11) {
            i12 = f15212g[((i12 >>> 24) ^ (bArr[i10] & 255)) & 255] ^ (i12 << 8);
            i10++;
        }
        return i12;
    }

    public static Handler k(androidx.media3.exoplayer.video.l lVar) {
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        return new Handler(looperMyLooper, lVar);
    }

    public static int l(int i10) {
        switch (i10) {
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
            case 6:
                return 21;
            case 7:
            case 8:
                return 23;
            case 9:
            case 10:
            case 11:
            case 12:
            case 15:
            case 16:
            case 17:
            case 18:
                return 28;
            case 13:
            case 19:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            default:
                return Integer.MAX_VALUE;
            case 14:
                return 25;
            case 20:
                return 30;
            case 21:
            case 22:
                return 31;
            case 30:
            case 31:
                return 34;
        }
    }

    public static AudioFormat m(int i10, int i11, int i12) {
        return new AudioFormat.Builder().setSampleRate(i10).setChannelMask(i11).setEncoding(i12).build();
    }

    public static int n(int i10) {
        if (i10 == 10) {
            return Build.VERSION.SDK_INT >= 32 ? 737532 : 6396;
        }
        if (i10 == 16) {
            return Build.VERSION.SDK_INT >= 32 ? 205215996 : 0;
        }
        if (i10 == 24) {
            return Build.VERSION.SDK_INT >= 32 ? 67108860 : 0;
        }
        switch (i10) {
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
            case 8:
                break;
            default:
                switch (i10) {
                    case 13:
                        if (Build.VERSION.SDK_INT >= 32) {
                        }
                        break;
                    case 14:
                        if (Build.VERSION.SDK_INT >= 32) {
                        }
                        break;
                }
        }
        return 0;
    }

    public static int o(int i10) {
        if (i10 != 2) {
            if (i10 == 3) {
                return 1;
            }
            if (i10 != 4) {
                if (i10 != 21) {
                    if (i10 != 22) {
                        if (i10 != 268435456) {
                            if (i10 != 1342177280) {
                                if (i10 != 1610612736) {
                                    if (i10 == 1879048192) {
                                        return 8;
                                    }
                                    throw new IllegalArgumentException();
                                }
                            }
                        }
                    }
                }
                return 3;
            }
            return 4;
        }
        return 2;
    }

    public static Point p(Context context) throws NumberFormatException {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.getClass();
            display = windowManager.getDefaultDisplay();
        }
        if (display.getDisplayId() == 0 && F(context)) {
            String strW = Build.VERSION.SDK_INT < 28 ? w("sys.display-size") : w("vendor.display-size");
            if (!TextUtils.isEmpty(strW)) {
                try {
                    String[] strArrSplit = strW.trim().split("x", -1);
                    if (strArrSplit.length == 2) {
                        int i10 = Integer.parseInt(strArrSplit[0]);
                        int i11 = Integer.parseInt(strArrSplit[1]);
                        if (i10 > 0 && i11 > 0) {
                            return new Point(i10, i11);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                a.f("Invalid display size: " + strW);
            }
            if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
        return point;
    }

    public static int q(int i10) {
        if (i10 == 2 || i10 == 4) {
            return 6005;
        }
        if (i10 == 10) {
            return 6004;
        }
        if (i10 == 7) {
            return 6005;
        }
        if (i10 == 8) {
            return 6003;
        }
        switch (i10) {
            case 15:
                return 6003;
            case 16:
            case 18:
                return 6005;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return 6004;
            default:
                switch (i10) {
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        return 6002;
                    default:
                        return 6006;
                }
        }
    }

    public static int r(String str) throws NumberFormatException {
        String[] strArrSplit;
        int length;
        if (str == null || (length = (strArrSplit = str.split("_", -1)).length) < 2) {
            return 0;
        }
        String str2 = strArrSplit[length - 1];
        boolean z = length >= 3 && "neg".equals(strArrSplit[length - 2]);
        try {
            str2.getClass();
            int i10 = Integer.parseInt(str2);
            return z ? -i10 : i10;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    public static long s(long j10, float f10) {
        if (f10 == 1.0f) {
            return j10;
        }
        double d10 = j10;
        double d11 = f10;
        Double.isNaN(d10);
        Double.isNaN(d11);
        return Math.round(d10 * d11);
    }

    public static int t(int i10, ByteOrder byteOrder) {
        if (i10 == 8) {
            return 3;
        }
        if (i10 == 16) {
            return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 2 : 268435456;
        }
        if (i10 == 24) {
            return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 21 : 1342177280;
        }
        if (i10 != 32) {
            return 0;
        }
        return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 22 : 1610612736;
    }

    public static String u(StringBuilder sb2, Formatter formatter, long j10) {
        long j11 = j10 == -9223372036854775807L ? 0L : j10;
        String str = j11 < 0 ? "-" : "";
        long jAbs = (Math.abs(j11) + 500) / 1000;
        long j12 = jAbs % 60;
        long j13 = (jAbs / 60) % 60;
        long j14 = jAbs / 3600;
        sb2.setLength(0);
        return j14 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j14), Long.valueOf(j13), Long.valueOf(j12)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j13), Long.valueOf(j12)).toString();
    }

    public static String[] v() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        String[] strArrSplit = Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().toLanguageTags().split(",", -1) : new String[]{configuration.locale.toLanguageTag()};
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            strArrSplit[i10] = H(strArrSplit[i10]);
        }
        return strArrSplit;
    }

    public static String w(String str) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e7) {
            a.g("Failed to read system property ".concat(str), e7);
            return null;
        }
    }

    public static String x(int i10) {
        switch (i10) {
            case -2:
                return "none";
            case -1:
                return "unknown";
            case 0:
                return "default";
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return "text";
            case 4:
                return "image";
            case 5:
                return "metadata";
            case 6:
                return "camera motion";
            default:
                return i10 >= 10000 ? g.b.i("custom (", i10, ")") : "?";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean y(m0 m0Var) {
        a.b bVar;
        boolean z = false;
        if (m0Var == null) {
            return false;
        }
        y1.x xVar = (y1.x) m0Var;
        int iJ = xVar.J();
        if (iJ != 1 || !((a.b) m0Var).i(2)) {
            if (iJ == 4) {
                a.b bVar2 = (a.b) m0Var;
                if (bVar2.i(4)) {
                    bVar2.p(((y1.x) bVar2).A(), -9223372036854775807L, false);
                }
            }
            bVar = (a.b) m0Var;
            if (bVar.i(1)) {
                return z;
            }
            y1.x xVar2 = (y1.x) bVar;
            xVar2.h0();
            xVar2.e0(1, true);
            return true;
        }
        xVar.S();
        z = true;
        bVar = (a.b) m0Var;
        if (bVar.i(1)) {
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static int z(Uri uri, String str) {
        int i10;
        if (str != null) {
            switch (str) {
                case "application/x-mpegURL":
                    return 2;
                case "application/vnd.ms-sstr+xml":
                    return 1;
                case "application/dash+xml":
                    return 0;
                case "application/x-rtsp":
                    return 3;
                default:
                    return 4;
            }
        }
        String scheme = uri.getScheme();
        if (scheme != null && (qf.c.p("rtsp", scheme) || qf.c.p("rtspt", scheme))) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment != null) {
            int iLastIndexOf = lastPathSegment.lastIndexOf(46);
            if (iLastIndexOf >= 0) {
                String strB0 = qf.c.b0(lastPathSegment.substring(iLastIndexOf + 1));
                strB0.getClass();
                switch (strB0.hashCode()) {
                    case 104579:
                        if (strB0.equals("ism")) {
                            break;
                        }
                        break;
                    case 108321:
                        if (strB0.equals("mpd")) {
                            break;
                        }
                        break;
                    case 3242057:
                        if (strB0.equals("isml")) {
                            break;
                        }
                        break;
                    case 3299913:
                        if (strB0.equals("m3u8")) {
                            break;
                        }
                        break;
                }
                /*  JADX ERROR: Method code generation error
                    java.lang.NullPointerException: Switch insn not found in header
                    	at java.base/java.util.Objects.requireNonNull(Objects.java:235)
                    	at jadx.core.codegen.RegionGen.makeSwitch(RegionGen.java:246)
                    	at jadx.core.dex.regions.SwitchRegion.generate(SwitchRegion.java:84)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                    	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                    	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.dex.regions.Region.generate(Region.java:35)
                    	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                    	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:298)
                    	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:277)
                    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:410)
                    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
                    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
                    	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                    	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                    	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                    */
                /*
                    Method dump skipped, instructions count: 292
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: u1.f0.z(android.net.Uri, java.lang.String):int");
            }
        }

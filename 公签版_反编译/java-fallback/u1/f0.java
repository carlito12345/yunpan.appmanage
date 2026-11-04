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
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.simpleframework.xml.strategy.Name;
import r1.m0;

/* loaded from: classes.dex */
public abstract class f0 {

    /* renamed from: a, reason: collision with root package name */
    public static final String f15206a = null;

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f15207b = null;

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f15208c = null;

    /* renamed from: d, reason: collision with root package name */
    public static HashMap f15209d;

    /* renamed from: e, reason: collision with root package name */
    public static final String[] f15210e = null;

    /* renamed from: f, reason: collision with root package name */
    public static final String[] f15211f = null;

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f15212g = null;

    /* renamed from: h, reason: collision with root package name */
    public static final int[] f15213h = null;

    /* renamed from: i, reason: collision with root package name */
    public static final int[] f15214i = null;

    static {
        int r02 = Build.VERSION.SDK_INT;
        String r12 = Build.DEVICE;
        String r22 = Build.MANUFACTURER;
        f15206a = r12 + ", " + Build.MODEL + ", " + r22 + ", " + r02;
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

    public static boolean A(q r32, q r4, Inflater r5) {
        if (r32.a() != 0) goto L6;
        return false;
    L6:
        if (r4.f15266a.length >= r32.a()) goto L8;
        r4.c(r32.a() * 2);
    L8:
        if (r5 != null) goto L10;
        r5 = new Inflater();
    L10:
        r5.setInput(r32.f15266a, r32.f15267b, r32.a());
        int r33 = 0;
    L33:
        byte[] r02 = r4.f15266a;     // Catch: Throwable -> L16 DataFormatException -> L31
        r33 = r33 + r5.inflate(r02, r33, r02.length - r33);     // Catch: Throwable -> L16 DataFormatException -> L31
        if (r5.finished() == true) goto L13;
        if (r5.needsDictionary() == true) goto L27;
        if (r5.needsInput() == true) goto L27;
        byte[] r03 = r4.f15266a;     // Catch: Throwable -> L16 DataFormatException -> L31
        if (r33 != r03.length) goto L33;
        r4.c(r03.length * 2);     // Catch: Throwable -> L16 DataFormatException -> L31
    L27:
        r5.reset();
        return false;
    L13:
        r4.N(r33);     // Catch: Throwable -> L16 DataFormatException -> L31
        r5.reset();
        return true;
    L31:
        r5.reset();
        return false;
    L16:
        th = move-exception;
        r5.reset();
        throw th;
    }

    public static void B(int r12) {
        Integer.toString(r12, 36);
    }

    public static boolean C(int r12) {
        if (r12 != 21) goto L5;
    L16:
        return true;
    L5:
        if (r12 == 1342177280) goto L16;
        if (r12 == 22) goto L16;
        if (r12 == 1610612736) goto L16;
        if (r12 == 4) goto L16;
        if (r12 == 1879048192) goto L16;
        return false;
    }

    public static boolean D(int r12) {
        if (r12 != 3) goto L5;
    L22:
        return true;
    L5:
        if (r12 == 2) goto L22;
        if (r12 == 268435456) goto L22;
        if (r12 == 21) goto L22;
        if (r12 == 1342177280) goto L22;
        if (r12 == 22) goto L22;
        if (r12 == 1610612736) goto L22;
        if (r12 == 4) goto L22;
        if (r12 == 1879048192) goto L22;
        return false;
    }

    public static boolean E(Context r22) {
        int r02 = Build.VERSION.SDK_INT;
        if (r02 >= 29) goto L5;
    L18:
        return true;
    L5:
        if (r22.getApplicationInfo().targetSdkVersion < 29) goto L18;
        if (r02 != 30) goto L13;
        String r23 = Build.MODEL;
        if (qf.c.p(r23, "moto g(20)") == true) goto L18;
        if (qf.c.p(r23, "rmx3231") == true) goto L18;
    L13:
        if (r02 == 34) goto L15;
    L17:
        return false;
    L15:
        if (qf.c.p(Build.MODEL, "sm-x200") == false) goto L17;
        goto L17
    }

    public static boolean F(Context r12) {
        UiModeManager r13 = (UiModeManager) r12.getApplicationContext().getSystemService("uimode");
        if (r13 != null) goto L5;
    L7:
        return false;
    L5:
        if (r13.getCurrentModeType() != 4) goto L7;
        return true;
    }

    public static long G(long r32) {
        if (r32 != (-9223372036854775807L)) goto L5;
        return r32;
    L5:
        if (r32 != Long.MIN_VALUE) goto L8;
        return r32;
    L8:
        return r32 * 1000;
    }

    public static String H(String r10) {
        if (r10 != null) goto L5;
        return null;
    L5:
        String r02 = r10.replace('_', '-');
        if (r02.isEmpty() == false) goto L8;
    L11:
        String r102 = qf.c.b0(r10);
        int r12 = 0;
        String r03 = r102.split("-", 2)[0];
        if (f15209d != null) goto L25;
        String[] r22 = Locale.getISOLanguages();
        int r4 = r22.length;
        String[] r5 = f15210e;
        HashMap r32 = new HashMap(r4 + r5.length);
        int r42 = r22.length;
        int r62 = 0;
    L14:
        if (r62 >= r42) goto L20;
        String r72 = r22[r62];
        String r82 = new Locale(r72).getISO3Language();     // Catch: MissingResourceException -> L41
        if (TextUtils.isEmpty(r82) == true) goto L19;
        r32.put(r82, r72);     // Catch: MissingResourceException -> L41
    L19:
        r62 = r62 + 1;
        goto L14
    L20:
        int r23 = 0;
    L22:
        if (r23 >= r5.length) goto L24;
        r32.put(r5[r23], r5[r23 + 1]);
        r23 = r23 + 2;
        goto L22
    L24:
        f15209d = r32;
    L25:
        String r24 = (String) f15209d.get(r03);
        if (r24 == null) goto L29;
        r102 = ta.q.m(r03, r102, g.b.m(r24));
        r03 = r24;
    L29:
        if ("no".equals(r03) == true) goto L34;
        if ("i".equals(r03) == true) goto L34;
        if ("zh".equals(r03) == true) goto L34;
        return r102;
    L34:
        String[] r04 = f15211f;
        if (r12 >= r04.length) goto L52;
        if (r102.startsWith(r04[r12]) == true) goto L38;
        r12 = r12 + 2;
        goto L34
    L38:
        StringBuilder r25 = new StringBuilder();
        r25.append(r04[r12 + 1]);
        return ta.q.m(r04[r12], r102, r25);
    L52:
        return r102;
    L8:
        if (r02.equals("und") == true) goto L11;
        r10 = r02;
        goto L11
    }

    public static Object[] I(int r12, Object[] r22) {
        if (r12 > r22.length) goto L5;
        boolean r02 = true;
    L6:
        a9.o.k(r02);
        return Arrays.copyOf(r22, r12);
    L5:
        r02 = false;
        goto L6
    }

    public static void J(Handler r22, Runnable r32) {
        Looper r02 = r22.getLooper();
        if (r02.getThread().isAlive() == true) goto L6;
        return;
    L6:
        if (r02 != Looper.myLooper()) goto L9;
        r32.run();
        return;
    L9:
        r22.post(r32);
    }

    public static long K(int r72, long r82) {
        return M(r82, 1000000, r72, RoundingMode.DOWN);
    }

    public static void L(long[] r13, long r14) {
        RoundingMode r72 = RoundingMode.DOWN;
        int r02 = 0;
        if (r14 < 1000000) goto L11;
        if ((r14 % 1000000) != 0) goto L11;
        long r142 = d.b.q(r14, 1000000, RoundingMode.UNNECESSARY);
    L8:
        if (r02 >= r13.length) goto L36;
        r13[r02] = d.b.q(r13[r02], r142, r72);
        r02 = r02 + 1;
        goto L8
    L36:
        return;
    L11:
        if (r14 < 1000000) goto L13;
    L18:
        int r12 = 0;
    L20:
        if (r12 >= r13.length) goto L45;
        long r03 = r13[r12];
        if (r03 == 0) goto L35;
        if (r14 < r03) goto L30;
        if ((r14 % r03) != 0) goto L30;
        r13[r12] = d.b.q(1000000, d.b.q(r14, r03, RoundingMode.UNNECESSARY), r72);
    L30:
        if (r14 < r03) goto L32;
    L34:
        r13[r12] = N(r03, 1000000, r14, r72);
        goto L35
    L32:
        if ((r03 % r14) != 0) goto L34;
        r13[r12] = d.b.j0(1000000, d.b.q(r03, r14, RoundingMode.UNNECESSARY));
    L35:
        r12 = r12 + 1;
        goto L20
    L45:
        return;
    L13:
        if ((1000000 % r14) != 0) goto L18;
        long r143 = d.b.q(1000000, r14, RoundingMode.UNNECESSARY);
    L16:
        if (r02 >= r13.length) goto L44;
        r13[r02] = d.b.j0(r13[r02], r143);
        r02 = r02 + 1;
        goto L16
    }

    public static long M(long r5, long r72, long r92, RoundingMode r11) {
        if (r5 != 0) goto L5;
    L33:
        return 0;
    L5:
        if (r72 == 0) goto L33;
        if (r92 < r72) goto L14;
        if ((r92 % r72) != 0) goto L14;
        return d.b.q(r5, d.b.q(r92, r72, RoundingMode.UNNECESSARY), r11);
    L14:
        if (r92 >= r72) goto L20;
        if ((r72 % r92) != 0) goto L20;
        return d.b.j0(r5, d.b.q(r72, r92, RoundingMode.UNNECESSARY));
    L20:
        if (r92 < r5) goto L26;
        if ((r92 % r5) != 0) goto L26;
        return d.b.q(r72, d.b.q(r92, r5, RoundingMode.UNNECESSARY), r11);
    L26:
        if (r92 >= r5) goto L32;
        if ((r5 % r92) != 0) goto L32;
        return d.b.j0(r72, d.b.q(r5, r92, RoundingMode.UNNECESSARY));
    L32:
        return N(r5, r72, r92, r11);
    }

    public static long N(long r92, long r11, long r13, RoundingMode r15) {
        long r02 = d.b.j0(r92, r11);
        if (r02 != Long.MAX_VALUE) goto L5;
    L8:
        long r03 = d.b.u(Math.abs(r11), Math.abs(r13));
        RoundingMode r62 = RoundingMode.UNNECESSARY;
        long r112 = d.b.q(r11, r03, r62);
        long r132 = d.b.q(r13, r03, r62);
        long r04 = d.b.u(Math.abs(r92), Math.abs(r132));
        long r93 = d.b.q(r92, r04, r62);
        long r133 = d.b.q(r132, r04, r62);
        long r05 = d.b.j0(r93, r112);
        if (r05 != Long.MAX_VALUE) goto L11;
    L14:
        double r113 = r112;
        double r134 = r133;
        Double.isNaN(r113);
        Double.isNaN(r134);
        double r94 = r93;
        Double.isNaN(r94);
        double r95 = r94 * (r113 / r134);
        if (r95 <= 9.223372036854776E18d) goto L18;
        return Long.MAX_VALUE;
    L18:
        if (r95 >= (-9.223372036854776E18d)) goto L20;
        return Long.MIN_VALUE;
    L20:
        int r06 = w7.b.f17624a;
        if (com.bumptech.glide.c.J(r95) == false) goto L70;
        boolean r12 = true;
        switch(w7.a.f17623a[r15.ordinal()]) {
            case 1: goto L54;
            case 2: goto L49;
            case 3: goto L42;
            case 4: goto L28;
            case 5: goto L34;
            case 6: goto L32;
            case 7: goto L29;
            case 8: goto L26;
            default: goto L25;
        };
    L26:
        double r22 = Math.rint(r95);
        if (Math.abs(r95 - r22) == 0.5d) goto L28;
    L56:
        if (((-9.223372036854776E18d) - r22) >= 1.0d) goto L58;
        boolean r135 = true;
    L60:
        if (r22 < 9.223372036854776E18d) goto L64;
        r12 = false;
    L64:
        if ((r135 & r12) == false) goto L68;
        return (long) r22;
    L68:
        throw new ArithmeticException("rounded value is out of range for input " + r95 + " and rounding mode " + r15);
    L58:
        r135 = false;
    L28:
        r22 = r95;
        goto L56
    L29:
        r22 = Math.rint(r95);
        if (Math.abs(r95 - r22) != 0.5d) goto L56;
        r22 = Math.copySign(0.5d, r95) + r95;
        goto L56
    L32:
        r22 = Math.rint(r95);
        goto L56
    L54:
        p000if.a.l(w7.b.a(r95));
        goto L28
    L25:
        throw new AssertionError();
    L34:
        if (w7.b.a(r95) == true) goto L28;
        long r23 = (long) r95;
        if (r95 <= 0.0d) goto L39;
        int r07 = 1;
    L40:
        r22 = r23 + r07;
        goto L56
    L39:
        r07 = -1;
        goto L40
    L42:
        if (r95 <= 0.0d) goto L28;
        if (w7.b.a(r95) == true) goto L28;
        long r4 = ((long) r95) + 1;
    L47:
        r22 = r4;
        goto L56
    L49:
        if (r95 >= 0.0d) goto L28;
        if (w7.b.a(r95) == true) goto L28;
        r4 = ((long) r95) - 1;
        goto L47
    L70:
        throw new ArithmeticException("input is infinite or NaN");
    L11:
        if (r05 == Long.MIN_VALUE) goto L14;
        return d.b.q(r05, r133, r15);
    L5:
        if (r02 == Long.MIN_VALUE) goto L8;
        return d.b.q(r02, r13, r15);
    }

    public static boolean O(m0 r32, boolean r4) {
        if (r32 == null) goto L18;
        y1.x r33 = (y1.x) r32;
        if (r33.I() == true) goto L7;
        return true;
    L7:
        if (r33.J() != 1) goto L9;
        return true;
    L9:
        if (r33.J() == 4) goto L21;
        if (r4 == true) goto L12;
    L16:
        return false;
    L12:
        if (r33.K() == 0) goto L16;
        if (r33.K() == 4) goto L16;
        return true;
    L21:
        return true;
    L18:
        return true;
    }

    public static String[] P(String r22) {
        return r22.split("/", -1);
    }

    public static String Q(int r62) {
        return new String(new byte[]{(byte) (r62 >> 24), (byte) (r62 >> 16), (byte) (r62 >> 8), (byte) r62}, StandardCharsets.US_ASCII);
    }

    public static long R(long r32) {
        if (r32 != (-9223372036854775807L)) goto L5;
        return r32;
    L5:
        if (r32 != Long.MIN_VALUE) goto L8;
        return r32;
    L8:
        return r32 / 1000;
    }

    public static int a(long[] r5, long r62, boolean r82) {
        int r02 = Arrays.binarySearch(r5, r62);
        if (r02 < 0) goto L16;
    L5:
        int r12 = r02 + 1;
        if (r12 >= r5.length) goto L10;
        if (r5[r12] != r62) goto L10;
        r02 = r12;
    L10:
        if (r82 == false) goto L13;
        return r02;
    L13:
        return r12;
    L16:
        return r02 ^ (-1);
    }

    public static int b(sb.e r72, long r82) {
        int r02 = r72.f14472b - 1;
        int r22 = 0;
    L3:
        if (r22 > r02) goto L8;
        int r32 = (r22 + r02) >>> 1;
        if (r72.c(r32) < r82) goto L6;
        r02 = r32 - 1;
        goto L3
    L6:
        r22 = r32 + 1;
        goto L3
    L8:
        int r23 = r02 + 1;
        if (r23 >= r72.f14472b) goto L14;
        if (r72.c(r23) != r82) goto L14;
        return r23;
    L14:
        if (r02 != (-1)) goto L17;
        return 0;
    L17:
        return r02;
    }

    public static int c(int[] r32, int r4, boolean r5, boolean r62) {
        int r02 = Arrays.binarySearch(r32, r4);
        if (r02 >= 0) goto L5;
        int r33 = -(r02 + 2);
    L13:
        if (r62 == true) goto L15;
        return r33;
    L15:
        return Math.max(0, r33);
    L5:
        int r12 = r02 - 1;
        if (r12 < 0) goto L10;
        if (r32[r12] != r4) goto L10;
        r02 = r12;
    L10:
        if (r5 == false) goto L12;
        r33 = r02;
        goto L13
    L12:
        r33 = r12;
        goto L13
    }

    public static int d(long[] r5, long r62, boolean r82) {
        int r02 = Arrays.binarySearch(r5, r62);
        if (r02 >= 0) goto L5;
        int r52 = -(r02 + 2);
    L11:
        if (r82 == true) goto L13;
        return r52;
    L13:
        return Math.max(0, r52);
    L5:
        int r12 = r02 - 1;
        if (r12 < 0) goto L10;
        if (r5[r12] != r62) goto L10;
        r02 = r12;
    L10:
        r52 = r02;
        goto L11
    }

    public static int e(int r02, int r12) {
        return ((r02 + r12) - 1) / r12;
    }

    public static float f(float r02, float r12, float r22) {
        return Math.max(r12, Math.min(r02, r22));
    }

    public static int g(int r02, int r12, int r22) {
        return Math.max(r12, Math.min(r02, r22));
    }

    public static long h(long r02, long r22, long r4) {
        return Math.max(r22, Math.min(r02, r4));
    }

    public static boolean i(int r02, SparseArray r12) {
        if (r12.indexOfKey(r02) < 0) goto L5;
        return true;
    L5:
        return false;
    }

    public static int j(int r22, int r32, int r4, byte[] r5) {
    L2:
        if (r22 >= r32) goto L4;
        int r02 = r4 << 8;
        int r42 = ((r4 >>> 24) ^ (r5[r22] & 255)) & 255;
        r4 = f15212g[r42] ^ r02;
        r22 = r22 + 1;
        goto L2
    L4:
        return r4;
    }

    public static Handler k(androidx.media3.exoplayer.video.l r22) {
        Looper r02 = Looper.myLooper();
        r02.getClass();
        return new Handler(r02, r22);
    }

    public static int l(int r02) {
        switch(r02) {
            case 2: goto L19;
            case 3: goto L19;
            case 4: goto L17;
            case 5: goto L17;
            case 6: goto L17;
            case 7: goto L15;
            case 8: goto L15;
            case 9: goto L13;
            case 10: goto L13;
            case 11: goto L13;
            case 12: goto L13;
            case 13: goto L3;
            case 14: goto L11;
            case 15: goto L13;
            case 16: goto L13;
            case 17: goto L13;
            case 18: goto L13;
            case 19: goto L3;
            case 20: goto L9;
            case 21: goto L7;
            case 22: goto L7;
            case 23: goto L3;
            case 24: goto L3;
            case 25: goto L3;
            case 26: goto L3;
            case 27: goto L3;
            case 28: goto L3;
            case 29: goto L3;
            case 30: goto L5;
            case 31: goto L5;
            default: goto L3;
        };
    L3:
        return Integer.MAX_VALUE;
    L5:
        return 34;
    L7:
        return 31;
    L9:
        return 30;
    L11:
        return 25;
    L13:
        return 28;
    L15:
        return 23;
    L17:
        return 21;
    L19:
        return 3;
    }

    public static AudioFormat m(int r12, int r22, int r32) {
        return new AudioFormat.Builder().setSampleRate(r12).setChannelMask(r22).setEncoding(r32).build();
    }

    public static int n(int r4) {
        if (r4 == 10) goto L49;
        if (r4 == 16) goto L44;
        if (r4 == 24) goto L39;
        switch(r4) {
            case 1: goto L36;
            case 2: goto L34;
            case 3: goto L32;
            case 4: goto L30;
            case 5: goto L28;
            case 6: goto L26;
            case 7: goto L24;
            case 8: goto L23;
            default: goto L9;
        };
    L9:
        switch(r4) {
            case 12: goto L21;
            case 13: goto L17;
            case 14: goto L12;
            default: goto L10;
        };
    L10:
        return 0;
    L21:
        return 743676;
    L12:
        if (Build.VERSION.SDK_INT < 32) goto L15;
        return 202070268;
    L15:
        return 0;
    L17:
        if (Build.VERSION.SDK_INT < 32) goto L20;
        return 30136348;
    L20:
        return 0;
    L23:
        return 6396;
    L24:
        return 1276;
    L26:
        return 252;
    L28:
        return CarSettingID.Recv.IFC_TCPSESSIONID;
    L30:
        return CarSettingID.Recv.IGM_OUTPUT_OVER_CUR;
    L32:
        return 28;
    L34:
        return 12;
    L36:
        return 4;
    L39:
        if (Build.VERSION.SDK_INT < 32) goto L42;
        return 67108860;
    L42:
        return 0;
    L44:
        if (Build.VERSION.SDK_INT < 32) goto L47;
        return 205215996;
    L47:
        return 0;
    L49:
        if (Build.VERSION.SDK_INT < 32) goto L52;
        return 737532;
    L52:
        return 6396;
    }

    public static int o(int r4) {
        if (r4 != 2) goto L5;
    L28:
        return 2;
    L5:
        if (r4 != 3) goto L7;
        return 1;
    L7:
        if (r4 != 4) goto L9;
    L25:
        return 4;
    L9:
        if (r4 != 21) goto L11;
    L24:
        return 3;
    L11:
        if (r4 == 22) goto L25;
        if (r4 == 268435456) goto L28;
        if (r4 == 1342177280) goto L24;
        if (r4 == 1610612736) goto L25;
        if (r4 != 1879048192) goto L23;
        return 8;
    L23:
        throw new IllegalArgumentException();
    }

    public static Point p(Context r62) {
        DisplayManager r02 = (DisplayManager) r62.getSystemService("display");
        if (r02 == null) goto L5;
        Display r03 = r02.getDisplay(0);
    L6:
        if (r03 != null) goto L9;
        WindowManager r04 = (WindowManager) r62.getSystemService("window");
        r04.getClass();
        r03 = r04.getDefaultDisplay();
    L9:
        if (r03.getDisplayId() == 0) goto L11;
    L33:
        Point r4 = new Point();
        Display.Mode r63 = r8.a.e(r03);
        r4.x = r8.a.c(r63);
        r4.y = r8.a.t(r63);
        return r4;
    L11:
        if (F(r62) == false) goto L33;
        if (Build.VERSION.SDK_INT >= 28) goto L15;
        String r22 = w("sys.display-size");
    L17:
        if (TextUtils.isEmpty(r22) == true) goto L27;
        String[] r32 = r22.trim().split("x", -1);     // Catch: NumberFormatException -> L35
        if (r32.length != 2) goto L25;
        int r12 = Integer.parseInt(r32[0]);     // Catch: NumberFormatException -> L35
        int r33 = Integer.parseInt(r32[1]);     // Catch: NumberFormatException -> L35
        if (r12 <= 0) goto L25;
        if (r33 <= 0) goto L25;
        return new Point(r12, r33);
    L25:
        a.f("Invalid display size: " + r22);
    L27:
        if ("Sony".equals(Build.MANUFACTURER) == false) goto L33;
        if (Build.MODEL.startsWith("BRAVIA") == false) goto L33;
        if (r62.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd") == false) goto L33;
        return new Point(3840, 2160);
    L15:
        r22 = w("vendor.display-size");
        goto L17
    L5:
        r03 = null;
        goto L6
    }

    public static int q(int r12) {
        if (r12 != 2) goto L5;
        return 6005;
    L5:
        if (r12 != 4) goto L7;
        return 6005;
    L7:
        if (r12 != 10) goto L9;
        return 6004;
    L9:
        if (r12 != 7) goto L11;
        return 6005;
    L11:
        if (r12 == 8) goto L18;
        switch(r12) {
            case 15: goto L24;
            case 16: goto L28;
            case 17: goto L25;
            case 18: goto L28;
            case 19: goto L25;
            case 20: goto L25;
            case 21: goto L25;
            case 22: goto L25;
            default: goto L13;
        };
    L13:
        switch(r12) {
            case 24: goto L16;
            case 25: goto L16;
            case 26: goto L16;
            case 27: goto L16;
            case 28: goto L16;
            default: goto L14;
        };
    L14:
        return 6006;
    L16:
        return 6002;
    L24:
        return 6003;
    L25:
        return 6004;
    L28:
        return 6005;
    L18:
        return 6003;
    }

    public static int r(String r5) {
        if (r5 != null) goto L5;
        return 0;
    L5:
        String[] r52 = r5.split("_", -1);
        int r12 = r52.length;
        if (r12 >= 2) goto L8;
        return 0;
    L8:
        String r32 = r52[r12 - 1];
        if (r12 >= 3) goto L11;
    L13:
        boolean r53 = false;
    L19:
        r32.getClass();     // Catch: NumberFormatException -> L18
        int r02 = Integer.parseInt(r32);     // Catch: NumberFormatException -> L18
        if (r53 == true) goto L17;
        return r02;
    L17:
        return -r02;
    L22:
        return 0;
    L11:
        if ("neg".equals(r52[r12 - 2]) == false) goto L13;
        r53 = true;
        goto L19
    }

    public static long s(long r22, float r4) {
        if (r4 != 1.0f) goto L5;
        return r22;
    L5:
        double r23 = r22;
        double r02 = r4;
        Double.isNaN(r23);
        Double.isNaN(r02);
        return Math.round(r23 * r02);
    }

    public static int t(int r12, ByteOrder r22) {
        if (r12 != 8) goto L5;
        return 3;
    L5:
        if (r12 == 16) goto L23;
        if (r12 == 24) goto L18;
        if (r12 == 32) goto L13;
        return 0;
    L13:
        if (r22.equals(ByteOrder.LITTLE_ENDIAN) == false) goto L15;
        return 22;
    L15:
        return 1610612736;
    L18:
        if (r22.equals(ByteOrder.LITTLE_ENDIAN) == false) goto L20;
        return 21;
    L20:
        return 1342177280;
    L23:
        if (r22.equals(ByteOrder.LITTLE_ENDIAN) == false) goto L25;
        return 2;
    L25:
        return 268435456;
    }

    public static String u(StringBuilder r16, Formatter r17, long r18) {
        if (r18 != (-9223372036854775807L)) goto L5;
        long r5 = 0;
    L7:
        if (r5 >= 0) goto L9;
        String r92 = "-";
    L10:
        long r52 = (Math.abs(r5) + 500) / 1000;
        long r12 = r52 % 60;
        long r14 = (r52 / 60) % 60;
        long r53 = r52 / 3600;
        r16.setLength(0);
        if (r53 <= 0) goto L14;
        return r17.format("%s%d:%02d:%02d", new Object[]{r92, Long.valueOf(r53), Long.valueOf(r14), Long.valueOf(r12)}).toString();
    L14:
        return r17.format("%s%02d:%02d", new Object[]{r92, Long.valueOf(r14), Long.valueOf(r12)}).toString();
    L9:
        r92 = "";
        goto L10
    L5:
        r5 = r18;
        goto L7
    }

    public static String[] v() {
        int r02 = 0;
        Configuration r22 = Resources.getSystem().getConfiguration();
        if (Build.VERSION.SDK_INT < 24) goto L5;
        String[] r23 = q.t.j(jg.w.e(r22)).split(",", -1);
    L7:
        if (r02 >= r23.length) goto L9;
        r23[r02] = H(r23[r02]);
        r02 = r02 + 1;
        goto L7
    L9:
        return r23;
    L5:
        r23 = new String[]{m0.o.i(r22.locale)};
        goto L7
    }

    public static String w(String r62) {
        Class<?> r22 = Class.forName("android.os.SystemProperties");     // Catch: Exception -> L5
        return (String) r22.getMethod("get", new Class[]{String.class}).invoke(r22, new Object[]{r62});
    L5:
        e = move-exception;
        a.g("Failed to read system property ".concat(r62), e);
        return null;
    }

    public static String x(int r22) {
        switch(r22) {
            case -2: goto L24;
            case -1: goto L22;
            case 0: goto L20;
            case 1: goto L18;
            case 2: goto L16;
            case 3: goto L14;
            case 4: goto L12;
            case 5: goto L10;
            case 6: goto L8;
            default: goto L4;
        };
    L8:
        return "camera motion";
    L10:
        return "metadata";
    L12:
        return "image";
    L14:
        return "text";
    L16:
        return "video";
    L18:
        return "audio";
    L20:
        return "default";
    L22:
        return "unknown";
    L24:
        return "none";
    L4:
        if (r22 >= 10000) goto L26;
        return "?";
    L26:
        return g.b.i("custom (", r22, ")");
    }

    public static boolean y(m0 r62) {
        boolean r02 = false;
        if (r62 != null) goto L5;
        return false;
    L5:
        y1.x r12 = (y1.x) r62;
        int r22 = r12.J();
        if (r22 != 1) goto L12;
        if (((a.b) r62).i(2) == false) goto L12;
        r12.S();
    L10:
        r02 = true;
    L16:
        a.b r63 = (a.b) r62;
        if (r63.i(1) == false) goto L20;
        y1.x r64 = (y1.x) r63;
        r64.h0();
        r64.e0(1, true);
        return true;
    L20:
        return r02;
    L12:
        if (r22 != 4) goto L16;
        a.b r23 = (a.b) r62;
        if (r23.i(4) == false) goto L16;
        r23.p(((y1.x) r23).A(), -9223372036854775807L, false);
        goto L10
    }

    public static int z(Uri r72, String r82) {
        char r02 = 65535;
        if (r82 != null) goto L54;
        String r83 = r72.getScheme();
        if (r83 != null) goto L7;
    L11:
        String r84 = r72.getLastPathSegment();
        if (r84 != null) goto L14;
    L13:
        return 4;
    L14:
        int r62 = r84.lastIndexOf(46);
        if (r62 < 0) goto L42;
        String r85 = qf.c.b0(r84.substring(r62 + 1));
        r85.getClass();
        switch(r85.hashCode()) {
            case 104579: goto L32;
            case 108321: goto L28;
            case 3242057: goto L24;
            case 3299913: goto L20;
            default: goto L35;
        };
    L35:
        switch(r02) {
            case 0: goto L39;
            case 1: goto L38;
            case 2: goto L39;
            case 3: goto L37;
            default: goto L36;
        };
    L36:
        int r86 = 4;
    L40:
        if (r86 == 4) goto L42;
        return r86;
    L37:
        r86 = 2;
        goto L40
    L38:
        r86 = 0;
        goto L40
    L39:
        r86 = 1;
        goto L40
    L20:
        if (r85.equals("m3u8") == false) goto L35;
        r02 = 3;
        goto L35
    L24:
        if (r85.equals("isml") == false) goto L35;
        r02 = 2;
        goto L35
    L28:
        if (r85.equals("mpd") == false) goto L35;
        r02 = 1;
        goto L35
    L32:
        if (r85.equals("ism") == false) goto L35;
        r02 = 0;
    L42:
        String r73 = r72.getPath();
        r73.getClass();
        Matcher r74 = f15208c.matcher(r73);
        if (r74.matches() == false) goto L13;
        String r75 = r74.group(2);
        if (r75 != null) goto L47;
        return 1;
    L47:
        if (r75.contains("format=mpd-time-csf") == false) goto L50;
        return 0;
    L50:
        if (r75.contains("format=m3u8-aapl") == false) goto L83;
        return 2;
    L83:
        return 1;
    L7:
        if (qf.c.p("rtsp", r83) == false) goto L9;
    L10:
        return 3;
    L9:
        if (qf.c.p("rtspt", r83) == false) goto L11;
    L54:
        switch(r82.hashCode()) {
            case -979127466: goto L69;
            case -156749520: goto L65;
            case 64194685: goto L61;
            case 1154777587: goto L57;
            default: goto L72;
        };
    L72:
        switch(r02) {
            case 0: goto L77;
            case 1: goto L76;
            case 2: goto L75;
            case 3: goto L74;
            default: goto L73;
        };
    L73:
        return 4;
    L74:
        return 3;
    L75:
        return 0;
    L76:
        return 1;
    L77:
        return 2;
    L57:
        if (r82.equals("application/x-rtsp") == false) goto L72;
        r02 = 3;
        goto L72
    L61:
        if (r82.equals("application/dash+xml") == false) goto L72;
        r02 = 2;
        goto L72
    L65:
        if (r82.equals("application/vnd.ms-sstr+xml") == false) goto L72;
        r02 = 1;
        goto L72
    L69:
        if (r82.equals("application/x-mpegURL") == false) goto L72;
        r02 = 0;
        goto L72
    }
}
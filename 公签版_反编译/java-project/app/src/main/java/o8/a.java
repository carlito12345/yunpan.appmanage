package o8;

import android.os.Build;
import android.text.TextUtils;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f11660a;

    static {
        String[] strArr = {"redmi"};
        String[] strArr2 = {"xiaomi"};
        String[] strArr3 = {"realme"};
        String[] strArr4 = {"oneplus"};
        String[] strArr5 = {"oppo"};
        String[] strArr6 = {"vivo"};
        String[] strArr7 = {"honor"};
        String[] strArr8 = {"huawei"};
        String[] strArr9 = {"meizu"};
        String[] strArr10 = {"samsung"};
        String[] strArr11 = {"nubia"};
        String[] strArr12 = {"zte"};
        String[] strArr13 = {"motorola"};
        String[] strArr14 = {"lenovo", "zuk"};
        String[] strArr15 = {"leeco", "letv"};
        String[] strArr16 = {"asus"};
        String[] strArr17 = {"sony"};
        String[] strArr18 = {"smartisan", "deltainno"};
        String[] strArr19 = {"360", "qiku"};
        String[] strArr20 = {"coolpad", "yulong", "cp"};
        String[] strArr21 = {"lg", "lge"};
        String[] strArr22 = {"htc"};
        String[] strArr23 = {"gionee", "amigo"};
        String[] strArr24 = {"infinix mobility limited", "itel", "tecno"};
        String[] strArr25 = {"DOOV"};
        String[] strArr26 = {"philips"};
        String[] strArr27 = {"blackshark"};
        String[] strArr28 = {"hisense"};
        String[] strArr29 = {"k-touch", "ktouch"};
        String[] strArr30 = {"meitu"};
        String[] strArr31 = {"nokia"};
        String[] strArr32 = {"google"};
        String lowerCase = Build.BRAND.toLowerCase();
        String lowerCase2 = Build.MANUFACTURER.toLowerCase();
        if (a(lowerCase, lowerCase2, strArr)) {
            f11660a = 78837197;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr2)) {
            f11660a = -1675632421;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr3)) {
            f11660a = -934971466;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr4)) {
            f11660a = 343319808;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr5)) {
            f11660a = 2432928;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr6)) {
            f11660a = 3620012;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr7)) {
            f11660a = 68924490;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr8)) {
            f11660a = 2141820391;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr9)) {
            f11660a = 73239724;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr10)) {
            f11660a = -765372454;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr11)) {
            f11660a = 105170387;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr12)) {
            f11660a = 89163;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr13)) {
            f11660a = -151542385;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr14)) {
            f11660a = -2022488749;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr16)) {
            f11660a = 2018896;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr17)) {
            f11660a = 2551079;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr18)) {
            f11660a = 560537600;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr15)) {
            f11660a = 73265976;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr19)) {
            f11660a = 50733;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr20)) {
            f11660a = -1678088054;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr21)) {
            f11660a = 2427;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr22)) {
            f11660a = 71863;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr23)) {
            f11660a = 2133055169;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr24)) {
            f11660a = -1237951171;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr25)) {
            f11660a = 2104242;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr26)) {
            f11660a = 116903185;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr27)) {
            f11660a = 344052550;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr28)) {
            f11660a = -1703827667;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr29)) {
            f11660a = -787390691;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr30)) {
            f11660a = 74224626;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr31)) {
            f11660a = 74462530;
            return;
        }
        if (a(lowerCase, lowerCase2, strArr32)) {
            f11660a = 2138589785;
            return;
        }
        f11660a = 0;
        if (TextUtils.isEmpty(lowerCase)) {
            TextUtils.isEmpty(lowerCase2);
        }
    }

    public static boolean a(String str, String str2, String... strArr) {
        for (String str3 : strArr) {
            if (str.contains(str3) || str2.contains(str3)) {
                return true;
            }
        }
        return false;
    }
}

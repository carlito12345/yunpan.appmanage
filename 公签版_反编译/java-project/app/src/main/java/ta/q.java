package ta;

import android.widget.TextView;
import com.autolink.app.vehiclemanager.data.VehiclePropertyKey;
import java.text.DecimalFormat;
import java.util.ArrayList;
import x9.l3;
import x9.t0;

/* loaded from: classes.dex */
public abstract /* synthetic */ class q {
    public static int a(int i10, int i11, int i12, int i13) {
        return i10 | i11 | i12 | 128 | i13;
    }

    public static int b(int i10) {
        return i10 & 384;
    }

    public static int c(int i10) {
        return i10 & 64;
    }

    public static /* synthetic */ boolean d(int i10) {
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return false;
        }
        if (i10 == 4 || i10 == 5) {
            return true;
        }
        throw null;
    }

    public static /* synthetic */ long e(int i10) {
        switch (i10) {
            case 1:
                return 67324752L;
            case 2:
                return 134695760L;
            case 3:
                return 33639248L;
            case 4:
                return 101010256L;
            case 5:
                return 808471376L;
            case 6:
                return 84233040L;
            case 7:
                return 134630224L;
            case 8:
                return 134695760L;
            case 9:
                return 117853008L;
            case 10:
                return 101075792L;
            case 11:
                return 1L;
            case 12:
                return 39169L;
            default:
                throw null;
        }
    }

    public static boolean f(int i10, boolean z) {
        int i11 = i10 & 7;
        return i11 == 4 || (z && i11 == 3);
    }

    public static int g(int i10, int i11, int i12, int i13) {
        return ((i10 - i11) / i12) + i13;
    }

    public static Object h(int i10, ArrayList arrayList) {
        return arrayList.get(arrayList.size() - i10);
    }

    public static String j(long j10, String str) {
        return str + j10;
    }

    public static String k(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static String l(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    public static String m(String str, String str2, StringBuilder sb2) {
        sb2.append(str2.substring(str.length()));
        return sb2.toString();
    }

    public static String n(DecimalFormat decimalFormat, double d10, StringBuilder sb2, String str) {
        sb2.append(decimalFormat.format(d10));
        sb2.append(str);
        return sb2.toString();
    }

    public static StringBuilder o(int i10, int i11, String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(i10);
        sb2.append(str2);
        sb2.append(i11);
        sb2.append(str3);
        return sb2;
    }

    public static /* synthetic */ void p(int i10, String str) {
        if (i10 == 0) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = ue.d.class.getName();
            int i11 = 0;
            while (!stackTrace[i11].getClassName().equals(name)) {
                i11++;
            }
            while (stackTrace[i11].getClassName().equals(name)) {
                i11++;
            }
            StackTraceElement stackTraceElement = stackTrace[i11];
            NullPointerException nullPointerException = new NullPointerException("Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str);
            ue.d.f(nullPointerException, ue.d.class.getName());
            throw nullPointerException;
        }
    }

    public static void q(int i10, String str, t0 t0Var) {
        t0Var.q(new l3(i10, str));
    }

    public static void r(VehiclePropertyKey vehiclePropertyKey, StringBuilder sb2, String str, String str2, TextView textView) {
        sb2.append(vehiclePropertyKey.getDesc());
        sb2.append(str);
        sb2.append(str2);
        textView.setText(sb2.toString());
    }

    public static void s(String str, int i10, TextView textView) {
        textView.setText(str + i10);
    }

    public static void t(String str, String str2) {
        u1.a.p(str + str2);
    }

    public static void w(ma.l lVar, ma.l lVar2, ma.l lVar3, ma.l lVar4, ma.l lVar5) {
        v4.a.a(lVar);
        v4.a.a(lVar2);
        v4.a.a(lVar3);
        v4.a.a(lVar4);
        v4.a.a(lVar5);
    }

    public static int x(int i10, int i11, int i12, int i13) {
        return i10 + i11 + i12 + i13;
    }
}

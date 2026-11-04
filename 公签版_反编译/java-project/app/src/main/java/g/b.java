package g;

import android.view.View;
import android.widget.EditText;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.util.a0;
import fa.h0;
import ha.p7;
import i3.i;
import i3.j;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.HashMap;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERSequence;
import u7.d0;
import u7.e0;
import u7.g0;
import x9.c0;
import x9.k3;
import x9.l3;
import x9.x0;

/* loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static String A(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static /* synthetic */ String B(int i10) {
        switch (i10) {
            case 1:
                return "BEGIN_ARRAY";
            case 2:
                return "END_ARRAY";
            case 3:
                return "BEGIN_OBJECT";
            case 4:
                return "END_OBJECT";
            case 5:
                return "NAME";
            case 6:
                return "STRING";
            case 7:
                return "NUMBER";
            case 8:
                return "BOOLEAN";
            case 9:
                return "NULL";
            case 10:
                return "END_DOCUMENT";
            default:
                return "null";
        }
    }

    public static i3.b a(j jVar, byte[] bArr, int i10) {
        e0 e0Var = g0.f15471b;
        d0 d0Var = new d0();
        jVar.b(bArr, 0, i10, i.f8496c, new p7(28, d0Var));
        return new i3.b(d0Var.g());
    }

    public static float b(float f10, float f11, float f12, float f13) {
        return ((f10 - f11) * f12) + f13;
    }

    public static int c(String str, ArrayList arrayList, String str2, int i10, int i11) {
        Objects.requireNonNull(str);
        arrayList.add(str2);
        return i10 + i11;
    }

    public static Object d(x9.g0 g0Var, int i10) {
        return g0Var.t(g0Var.b() - i10);
    }

    public static String e(int i10, StringBuilder sb2) {
        sb2.append(Integer.toHexString(i10));
        return sb2.toString();
    }

    public static String f(EditText editText) {
        return editText.getText().toString().trim();
    }

    public static String g(h0 h0Var, StringBuilder sb2, String str) {
        sb2.append(h0Var.d());
        sb2.append(str);
        return sb2.toString();
    }

    public static String h(Exception exc, StringBuilder sb2) {
        sb2.append(exc.toString());
        return sb2.toString();
    }

    public static String i(String str, int i10, String str2) {
        return str + i10 + str2;
    }

    public static String j(String str, String str2) {
        return str + str2;
    }

    public static String k(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String l(String str, String str2, StringBuilder sb2) {
        sb2.append(str);
        sb2.append(str2);
        return sb2.toString();
    }

    public static StringBuilder m(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        return sb2;
    }

    public static StringBuilder n(String str, int i10, String str2) {
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append(i10);
        sb2.append(str2);
        return sb2;
    }

    public static ASN1EncodableVector o(ASN1EncodableVector aSN1EncodableVector, ASN1EncodableVector aSN1EncodableVector2) {
        aSN1EncodableVector2.add(new DERSequence(aSN1EncodableVector));
        return new ASN1EncodableVector();
    }

    public static void p(int i10, String str, k3 k3Var) {
        k3Var.q(new l3(i10, str));
    }

    public static void q(int i10, HashMap map, String str, int i11, String str2) {
        map.put(str, Integer.valueOf(i10));
        map.put(str2, Integer.valueOf(i11));
    }

    public static void r(View view, float f10, float f11, long j10) {
        view.animate().scaleX(f10).scaleY(f11).setDuration(j10).start();
    }

    public static void s(Exception exc, StringBuilder sb2) {
        sb2.append(exc.getMessage());
        a0.t(sb2.toString());
    }

    public static /* synthetic */ void t(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    public static void u(String str, int i10, ArrayList arrayList) {
        arrayList.add(new KeyMapSelectBean(str, i10));
    }

    public static void v(String str, ArrayList arrayList) {
        arrayList.add(new KeyMapSelectBean(str));
    }

    public static void w(String str, boolean z, c0 c0Var) {
        c0Var.q(new x0(str, z));
    }

    public static void x(x9.g0 g0Var, int i10, TvRecyclerView tvRecyclerView) {
        tvRecyclerView.setSelection(g0Var.b() - i10);
    }

    public static byte[] y(ASN1Sequence aSN1Sequence, int i10) {
        return ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(i10)).getOctets();
    }

    public static String z(Exception exc, StringBuilder sb2) {
        sb2.append(exc.getMessage());
        return sb2.toString();
    }
}

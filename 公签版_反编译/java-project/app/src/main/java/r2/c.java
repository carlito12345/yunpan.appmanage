package r2;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import l2.n;
import u1.q;

/* loaded from: classes.dex */
public final class c extends a.b {

    /* renamed from: b, reason: collision with root package name */
    public long f13654b;

    /* renamed from: c, reason: collision with root package name */
    public long[] f13655c;

    /* renamed from: d, reason: collision with root package name */
    public long[] f13656d;

    public c() {
        super(new n());
        this.f13654b = -9223372036854775807L;
        this.f13655c = new long[0];
        this.f13656d = new long[0];
    }

    public static Serializable t(int i10, q qVar) {
        if (i10 == 0) {
            return Double.valueOf(Double.longBitsToDouble(qVar.v()));
        }
        if (i10 == 1) {
            return Boolean.valueOf(qVar.B() == 1);
        }
        if (i10 == 2) {
            return v(qVar);
        }
        if (i10 != 3) {
            if (i10 == 8) {
                return u(qVar);
            }
            if (i10 != 10) {
                if (i10 != 11) {
                    return null;
                }
                Date date = new Date((long) Double.longBitsToDouble(qVar.v()));
                qVar.P(2);
                return date;
            }
            int iF = qVar.F();
            ArrayList arrayList = new ArrayList(iF);
            for (int i11 = 0; i11 < iF; i11++) {
                Serializable serializableT = t(qVar.B(), qVar);
                if (serializableT != null) {
                    arrayList.add(serializableT);
                }
            }
            return arrayList;
        }
        HashMap map = new HashMap();
        while (true) {
            String strV = v(qVar);
            int iB = qVar.B();
            if (iB == 9) {
                return map;
            }
            Serializable serializableT2 = t(iB, qVar);
            if (serializableT2 != null) {
                map.put(strV, serializableT2);
            }
        }
    }

    public static HashMap u(q qVar) {
        int iF = qVar.F();
        HashMap map = new HashMap(iF);
        for (int i10 = 0; i10 < iF; i10++) {
            String strV = v(qVar);
            Serializable serializableT = t(qVar.B(), qVar);
            if (serializableT != null) {
                map.put(strV, serializableT);
            }
        }
        return map;
    }

    public static String v(q qVar) {
        int I = qVar.I();
        int i10 = qVar.f15267b;
        qVar.P(I);
        return new String(qVar.f15266a, i10, I);
    }
}

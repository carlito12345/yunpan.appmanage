package vd;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class r extends vc.c implements h, f, k0 {

    /* renamed from: b, reason: collision with root package name */
    public static final Map f16895b;

    /* renamed from: c, reason: collision with root package name */
    public static final Map f16896c;

    /* renamed from: a, reason: collision with root package name */
    public final int f16897a;

    static {
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < 71; i10++) {
            map.put(Integer.valueOf(h.E0[i10]), h.F0[i10]);
        }
        HashMap map2 = new HashMap();
        for (int i11 = 0; i11 < 41; i11++) {
            int[][] iArr = f.D0;
            map2.put(Integer.valueOf(iArr[i11][0]), Integer.valueOf(iArr[i11][1]));
            String str = (String) map.get(Integer.valueOf(iArr[i11][1]));
            if (str != null) {
                map.put(Integer.valueOf(iArr[i11][0]), str);
            }
        }
        map.put(0, "NT_STATUS_SUCCESS");
        f16895b = Collections.unmodifiableMap(map);
        f16896c = Collections.unmodifiableMap(map2);
        HashMap map3 = new HashMap();
        for (int i12 = 0; i12 < 10; i12++) {
            map3.put(Integer.valueOf(k0.G0[i12]), k0.H0[i12]);
        }
        Collections.unmodifiableMap(map3);
    }

    public r() {
    }

    public static String a(int i10) {
        String str = (String) f16895b.get(Integer.valueOf(i10));
        return str == null ? "0x".concat(ge.a.l(i10, 8)) : str;
    }

    public static int b(int i10) {
        if (((-1073741824) & i10) != 0) {
            return i10;
        }
        Integer numValueOf = Integer.valueOf(i10);
        Map map = f16896c;
        if (map.containsKey(numValueOf)) {
            return ((Integer) map.get(Integer.valueOf(i10))).intValue();
        }
        return -1073741823;
    }

    public static r c(vc.c cVar) {
        return cVar instanceof r ? (r) cVar : new r(cVar.getMessage(), cVar);
    }

    public r(int i10) {
        super(a(i10), null);
        this.f16897a = b(i10);
    }

    public r(String str) {
        super(str);
        this.f16897a = -1073741823;
    }

    public r(String str, Exception exc) {
        super(str, exc);
        this.f16897a = -1073741823;
    }
}

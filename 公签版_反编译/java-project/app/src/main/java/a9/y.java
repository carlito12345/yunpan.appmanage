package a9;

import com.alibaba.sdk.android.oss.signer.SignParameters;
import j$.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Vector;

/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public final l f560a;

    /* renamed from: b, reason: collision with root package name */
    public final Vector f561b;

    static {
        byte[] bArr = h0.f503a;
        h0.k(SignParameters.NEW_LINE, StandardCharsets.UTF_8);
    }

    public y(l lVar) {
        this.f561b = null;
        this.f560a = lVar;
        String strB = l.b("hmac-sha1");
        try {
            if (Class.forName(strB).asSubclass(a0.class).getDeclaredConstructor(null).newInstance(null) != null) {
                throw new ClassCastException();
            }
            this.f561b = new Vector();
        } catch (Exception e7) {
            this.f560a.c().getClass();
            throw new IllegalArgumentException(g.b.A("instantiation of ", strB, " lead to an error"), e7);
        }
    }

    public final h[] a(String str) {
        h[] hVarArr;
        synchronized (this.f561b) {
            try {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < this.f561b.size(); i10++) {
                    h hVar = (h) this.f561b.elementAt(i10);
                    hVar.getClass();
                    if (str == null || hVar.b(str)) {
                        arrayList.add(hVar);
                    }
                }
                int size = arrayList.size();
                hVarArr = new h[size];
                for (int i11 = 0; i11 < arrayList.size(); i11++) {
                    hVarArr[i11] = (h) arrayList.get(i11);
                }
                if (str != null && str.startsWith("[") && str.indexOf("]:") > 1) {
                    h[] hVarArrA = a(str.substring(1, str.indexOf("]:")));
                    if (hVarArrA.length > 0) {
                        h[] hVarArr2 = new h[hVarArrA.length + size];
                        System.arraycopy(hVarArr, 0, hVarArr2, 0, size);
                        System.arraycopy(hVarArrA, 0, hVarArr2, size, hVarArrA.length);
                        hVarArr = hVarArr2;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return hVarArr;
    }
}

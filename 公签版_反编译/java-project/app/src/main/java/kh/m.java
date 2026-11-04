package kh;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f10367a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final dg.a[] f10368b = new dg.a[4];

    public static ArrayList a(dg.a aVar) {
        ArrayList arrayList = new ArrayList((ArrayList) aVar.f4638b);
        ((ArrayList) aVar.f4638b).clear();
        ((HashMap) aVar.f4639c).clear();
        ((HashMap) aVar.f4640d).clear();
        int i10 = 0;
        ((StringBuilder) aVar.f4641e).setLength(0);
        aVar.f4642f = null;
        aVar.f4637a = false;
        synchronized (f10368b) {
            while (true) {
                if (i10 >= 4) {
                    break;
                }
                try {
                    dg.a[] aVarArr = f10368b;
                    if (aVarArr[i10] == null) {
                        aVarArr[i10] = aVar;
                        break;
                    }
                    i10++;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return arrayList;
    }

    public static dg.a b() {
        synchronized (f10368b) {
            for (int i10 = 0; i10 < 4; i10++) {
                try {
                    dg.a[] aVarArr = f10368b;
                    dg.a aVar = aVarArr[i10];
                    if (aVar != null) {
                        aVarArr[i10] = null;
                        return aVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return new dg.a();
        }
    }
}

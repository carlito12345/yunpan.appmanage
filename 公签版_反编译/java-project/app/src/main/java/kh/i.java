package kh;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class i {

    /* renamed from: d, reason: collision with root package name */
    public static final ArrayList f10354d = new ArrayList();

    /* renamed from: a, reason: collision with root package name */
    public Object f10355a;

    /* renamed from: b, reason: collision with root package name */
    public n f10356b;

    /* renamed from: c, reason: collision with root package name */
    public i f10357c;

    public i(Object obj, n nVar) {
        this.f10355a = obj;
        this.f10356b = nVar;
    }

    public static i a(Object obj, n nVar) {
        ArrayList arrayList = f10354d;
        synchronized (arrayList) {
            try {
                int size = arrayList.size();
                if (size <= 0) {
                    return new i(obj, nVar);
                }
                i iVar = (i) arrayList.remove(size - 1);
                iVar.f10355a = obj;
                iVar.f10356b = nVar;
                iVar.f10357c = null;
                return iVar;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}

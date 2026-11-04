package yh;

import java.lang.ref.Reference;
import java.lang.ref.SoftReference;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class f extends b {

    /* renamed from: b, reason: collision with root package name */
    public final c f19229b = new c();

    /* renamed from: c, reason: collision with root package name */
    public final c f19230c = new c();

    /* JADX WARN: Multi-variable type inference failed */
    public static Object e(c cVar, int i10) {
        d dVar;
        Object obj;
        if (i10 < 32768) {
            return null;
        }
        synchronized (cVar) {
            dVar = (d) cVar.get(Integer.valueOf(i10));
        }
        if (dVar == null) {
            return null;
        }
        do {
            Reference reference = (Reference) dVar.a();
            if (reference == null) {
                return null;
            }
            obj = reference.get();
        } while (obj == null);
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void f(c cVar, Object obj, int i10) {
        d dVar;
        if (i10 < 32768) {
            return;
        }
        synchronized (cVar) {
            try {
                dVar = (d) cVar.get(Integer.valueOf(i10));
                if (dVar == null) {
                    dVar = new d();
                    cVar.put(Integer.valueOf(i10), dVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        dVar.b(new SoftReference(obj));
    }

    @Override // yh.b
    public final byte[] a(int i10) {
        byte[] bArr = (byte[]) e(this.f19229b, i10);
        return bArr == null ? new byte[i10] : bArr;
    }

    @Override // yh.b
    public final int[] b(int i10, boolean z) {
        int[] iArr = (int[]) e(this.f19230c, i10);
        if (iArr == null) {
            return new int[i10];
        }
        if (!z) {
            return iArr;
        }
        Arrays.fill(iArr, 0);
        return iArr;
    }

    @Override // yh.b
    public final void c(byte[] bArr) {
        f(this.f19229b, bArr, bArr.length);
    }

    @Override // yh.b
    public final void d(int[] iArr) {
        f(this.f19230c, iArr, iArr.length);
    }
}

package androidx.room;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class t implements c4.d, c4.c {

    /* renamed from: i, reason: collision with root package name */
    public static final TreeMap f2429i = new TreeMap();

    /* renamed from: a, reason: collision with root package name */
    public final int f2430a;

    /* renamed from: b, reason: collision with root package name */
    public volatile String f2431b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f2432c;

    /* renamed from: d, reason: collision with root package name */
    public final double[] f2433d;

    /* renamed from: e, reason: collision with root package name */
    public final String[] f2434e;

    /* renamed from: f, reason: collision with root package name */
    public final byte[][] f2435f;

    /* renamed from: g, reason: collision with root package name */
    public final int[] f2436g;

    /* renamed from: h, reason: collision with root package name */
    public int f2437h;

    public t(int i10) {
        this.f2430a = i10;
        int i11 = i10 + 1;
        this.f2436g = new int[i11];
        this.f2432c = new long[i11];
        this.f2433d = new double[i11];
        this.f2434e = new String[i11];
        this.f2435f = new byte[i11][];
    }

    public static final t J(int i10, String str) {
        TreeMap treeMap = f2429i;
        synchronized (treeMap) {
            Map.Entry entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i10));
            if (entryCeilingEntry == null) {
                t tVar = new t(i10);
                tVar.f2431b = str;
                tVar.f2437h = i10;
                return tVar;
            }
            treeMap.remove(entryCeilingEntry.getKey());
            t tVar2 = (t) entryCeilingEntry.getValue();
            tVar2.f2431b = str;
            tVar2.f2437h = i10;
            return tVar2;
        }
    }

    @Override // c4.d
    public final String A() {
        String str = this.f2431b;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Required value was null.");
    }

    public final void K() {
        TreeMap treeMap = f2429i;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f2430a), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator it = treeMap.descendingKeySet().iterator();
                ue.d.d(it, "queryPool.descendingKeySet().iterator()");
                while (true) {
                    int i10 = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i10;
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // c4.c
    public final void e(int i10, String str) {
        ue.d.e(str, "value");
        this.f2436g[i10] = 4;
        this.f2434e[i10] = str;
    }

    @Override // c4.c
    public final void h(int i10, double d10) {
        this.f2436g[i10] = 3;
        this.f2433d[i10] = d10;
    }

    @Override // c4.c
    public final void m(int i10, long j10) {
        this.f2436g[i10] = 2;
        this.f2432c[i10] = j10;
    }

    @Override // c4.c
    public final void q(int i10, byte[] bArr) {
        this.f2436g[i10] = 5;
        this.f2435f[i10] = bArr;
    }

    @Override // c4.d
    public final void r(c4.c cVar) {
        int i10 = this.f2437h;
        if (1 > i10) {
            return;
        }
        int i11 = 1;
        while (true) {
            int i12 = this.f2436g[i11];
            if (i12 == 1) {
                cVar.y(i11);
            } else if (i12 == 2) {
                cVar.m(i11, this.f2432c[i11]);
            } else if (i12 == 3) {
                cVar.h(i11, this.f2433d[i11]);
            } else if (i12 == 4) {
                String str = this.f2434e[i11];
                if (str == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                cVar.e(i11, str);
            } else if (i12 == 5) {
                byte[] bArr = this.f2435f[i11];
                if (bArr == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                cVar.q(i11, bArr);
            }
            if (i11 == i10) {
                return;
            } else {
                i11++;
            }
        }
    }

    @Override // c4.c
    public final void y(int i10) {
        this.f2436g[i10] = 1;
    }
}

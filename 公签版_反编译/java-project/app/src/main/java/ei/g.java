package ei;

import java.lang.reflect.Array;

/* loaded from: classes3.dex */
public final class g extends a {

    /* renamed from: e, reason: collision with root package name */
    public final int[] f5023e;

    /* renamed from: f, reason: collision with root package name */
    public final int[][] f5024f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ h f5025g;

    public g(h hVar, int i10, int i11) {
        this.f5025g = hVar;
        int i12 = 1 << i10;
        this.f5023e = new int[i12];
        this.f5024f = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i12, Math.max(i11 - 1, 16));
    }

    @Override // ei.a
    public final void a() {
        super.a();
        int i10 = 0;
        while (true) {
            int[] iArr = this.f5023e;
            if (i10 >= iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    public final void b(int i10, int i11) {
        int i12 = i10 - 2;
        short[] sArr = this.f4997a;
        h hVar = this.f5025g;
        if (i12 < 8) {
            hVar.f5026m.o0(sArr, 0, 0);
            hVar.f5026m.p0(this.f4998b[i11], i12);
        } else {
            hVar.f5026m.o0(sArr, 0, 1);
            int i13 = i10 - 10;
            if (i13 < 8) {
                hVar.f5026m.o0(sArr, 1, 0);
                hVar.f5026m.p0(this.f4999c[i11], i13);
            } else {
                hVar.f5026m.o0(sArr, 1, 1);
                hVar.f5026m.p0(this.f5000d, i10 - 18);
            }
        }
        int[] iArr = this.f5023e;
        iArr[i11] = iArr[i11] - 1;
    }

    public final void c() {
        int[][] iArr;
        int i10 = 0;
        while (true) {
            int[] iArr2 = this.f5023e;
            if (i10 >= iArr2.length) {
                return;
            }
            if (iArr2[i10] <= 0) {
                iArr2[i10] = 32;
                short[] sArr = this.f4997a;
                int iQ0 = fi.d.q0(sArr[0], 0);
                int i11 = 0;
                while (true) {
                    iArr = this.f5024f;
                    if (i11 >= 8) {
                        break;
                    }
                    iArr[i10][i11] = fi.d.r0(this.f4998b[i10], i11) + iQ0;
                    i11++;
                }
                int iQ02 = fi.d.q0(sArr[0], 1);
                int iQ03 = fi.d.q0(sArr[1], 0);
                while (i11 < 16) {
                    iArr[i10][i11] = fi.d.r0(this.f4999c[i10], i11 - 8) + iQ02 + iQ03;
                    i11++;
                }
                int iQ04 = fi.d.q0(sArr[1], 1);
                while (true) {
                    int[] iArr3 = iArr[i10];
                    if (i11 < iArr3.length) {
                        iArr3[i11] = fi.d.r0(this.f5000d, i11 - 16) + iQ02 + iQ04;
                        i11++;
                    }
                }
            }
            i10++;
        }
    }
}

package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class u1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1405a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1406b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f1407c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ List f1408d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1409e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f1410f;

    public u1(int i10, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
        this.f1406b = i10;
        this.f1407c = arrayList;
        this.f1408d = arrayList2;
        this.f1409e = arrayList3;
        this.f1410f = arrayList4;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0110  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        ArrayList arrayList;
        ArrayList arrayList2;
        androidx.recyclerview.widget.w wVar;
        androidx.recyclerview.widget.x xVar;
        ArrayList arrayList3;
        ArrayList arrayList4;
        androidx.recyclerview.widget.w wVar2;
        androidx.recyclerview.widget.w wVar3;
        int i10;
        androidx.recyclerview.widget.x xVar2;
        androidx.recyclerview.widget.x xVar3;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z;
        switch (this.f1405a) {
            case 0:
                for (int i17 = 0; i17 < this.f1406b; i17++) {
                    x0.b1.D((View) ((ArrayList) this.f1407c).get(i17), (String) ((ArrayList) this.f1408d).get(i17));
                    x0.b1.D((View) ((ArrayList) this.f1409e).get(i17), (String) ((ArrayList) this.f1410f).get(i17));
                }
                break;
            default:
                androidx.recyclerview.widget.c cVar = new androidx.recyclerview.widget.c(this);
                int size = this.f1407c.size();
                int size2 = this.f1408d.size();
                ArrayList arrayList5 = new ArrayList();
                ArrayList arrayList6 = new ArrayList();
                arrayList6.add(new androidx.recyclerview.widget.w(size, size2));
                int i18 = size + size2;
                int i19 = 1;
                int i20 = (((i18 + 1) / 2) * 2) + 1;
                int[] iArr = new int[i20];
                int i21 = i20 / 2;
                int[] iArr2 = new int[i20];
                ArrayList arrayList7 = new ArrayList();
                while (!arrayList6.isEmpty()) {
                    androidx.recyclerview.widget.w wVar4 = (androidx.recyclerview.widget.w) arrayList6.remove(arrayList6.size() - i19);
                    if (wVar4.b() < i19 || wVar4.a() < i19) {
                        arrayList = arrayList6;
                        arrayList2 = arrayList7;
                        wVar = wVar4;
                        xVar = null;
                    } else {
                        int iA = ((wVar4.a() + wVar4.b()) + i19) / 2;
                        int i22 = i19 + i21;
                        iArr[i22] = wVar4.f2331a;
                        iArr2[i22] = wVar4.f2332b;
                        int i23 = 0;
                        while (i23 < iA) {
                            boolean z4 = Math.abs(wVar4.b() - wVar4.a()) % 2 == i19;
                            int iB = wVar4.b() - wVar4.a();
                            int i24 = -i23;
                            int i25 = i24;
                            while (true) {
                                if (i25 <= i23) {
                                    if (i25 != i24) {
                                        if (i25 != i23) {
                                            i10 = iA;
                                            if (iArr[i25 + 1 + i21] > iArr[(i25 - 1) + i21]) {
                                            }
                                            arrayList = arrayList6;
                                            i16 = ((i15 - wVar4.f2331a) + wVar4.f2333c) - i25;
                                            int i26 = (i23 == 0 || i15 != i14) ? i16 : i16 - 1;
                                            arrayList2 = arrayList7;
                                            while (i15 < wVar4.f2332b && i16 < wVar4.f2334d && cVar.b(i15, i16)) {
                                                i15++;
                                                i16++;
                                            }
                                            iArr[i25 + i21] = i15;
                                            if (z4) {
                                                z = z4;
                                            } else {
                                                int i27 = iB - i25;
                                                z = z4;
                                                if (i27 >= i24 + 1 && i27 <= i23 - 1 && iArr2[i27 + i21] <= i15) {
                                                    xVar2 = new androidx.recyclerview.widget.x();
                                                    xVar2.f2343a = i14;
                                                    xVar2.f2344b = i26;
                                                    xVar2.f2345c = i15;
                                                    xVar2.f2346d = i16;
                                                    xVar2.f2347e = false;
                                                }
                                            }
                                            i25 += 2;
                                            arrayList6 = arrayList;
                                            iA = i10;
                                            arrayList7 = arrayList2;
                                            z4 = z;
                                        } else {
                                            i10 = iA;
                                        }
                                        i14 = iArr[(i25 - 1) + i21];
                                        i15 = i14 + 1;
                                        arrayList = arrayList6;
                                        i16 = ((i15 - wVar4.f2331a) + wVar4.f2333c) - i25;
                                        if (i23 == 0) {
                                            arrayList2 = arrayList7;
                                            while (i15 < wVar4.f2332b) {
                                                i15++;
                                                i16++;
                                            }
                                            iArr[i25 + i21] = i15;
                                            if (z4) {
                                            }
                                            i25 += 2;
                                            arrayList6 = arrayList;
                                            iA = i10;
                                            arrayList7 = arrayList2;
                                            z4 = z;
                                        }
                                    } else {
                                        i10 = iA;
                                    }
                                    i14 = iArr[i25 + 1 + i21];
                                    i15 = i14;
                                    arrayList = arrayList6;
                                    i16 = ((i15 - wVar4.f2331a) + wVar4.f2333c) - i25;
                                    if (i23 == 0) {
                                    }
                                } else {
                                    arrayList = arrayList6;
                                    arrayList2 = arrayList7;
                                    i10 = iA;
                                    xVar2 = null;
                                }
                            }
                            if (xVar2 != null) {
                                xVar = xVar2;
                                wVar = wVar4;
                            } else {
                                boolean z10 = (wVar4.b() - wVar4.a()) % 2 == 0;
                                int iB2 = wVar4.b() - wVar4.a();
                                int i28 = i24;
                                while (true) {
                                    if (i28 <= i23) {
                                        if (i28 == i24 || (i28 != i23 && iArr2[i28 + 1 + i21] < iArr2[(i28 - 1) + i21])) {
                                            i11 = iArr2[i28 + 1 + i21];
                                            i12 = i11;
                                        } else {
                                            i11 = iArr2[(i28 - 1) + i21];
                                            i12 = i11 - 1;
                                        }
                                        int i29 = wVar4.f2334d - ((wVar4.f2332b - i12) - i28);
                                        int i30 = (i23 == 0 || i12 != i11) ? i29 : i29 + 1;
                                        while (i12 > wVar4.f2331a && i29 > wVar4.f2333c) {
                                            wVar = wVar4;
                                            if (cVar.b(i12 - 1, i29 - 1)) {
                                                i12--;
                                                i29--;
                                                wVar4 = wVar;
                                            } else {
                                                iArr2[i28 + i21] = i12;
                                                if (z10 || (i13 = iB2 - i28) < i24 || i13 > i23 || iArr[i13 + i21] < i12) {
                                                    i28 += 2;
                                                    wVar4 = wVar;
                                                } else {
                                                    xVar3 = new androidx.recyclerview.widget.x();
                                                    xVar3.f2343a = i12;
                                                    xVar3.f2344b = i29;
                                                    xVar3.f2345c = i11;
                                                    xVar3.f2346d = i30;
                                                    xVar3.f2347e = true;
                                                }
                                            }
                                        }
                                        wVar = wVar4;
                                        iArr2[i28 + i21] = i12;
                                        if (z10) {
                                        }
                                        i28 += 2;
                                        wVar4 = wVar;
                                    } else {
                                        wVar = wVar4;
                                        xVar3 = null;
                                    }
                                }
                                if (xVar3 != null) {
                                    xVar = xVar3;
                                } else {
                                    i23++;
                                    arrayList6 = arrayList;
                                    iA = i10;
                                    arrayList7 = arrayList2;
                                    wVar4 = wVar;
                                    i19 = 1;
                                }
                            }
                        }
                        arrayList = arrayList6;
                        arrayList2 = arrayList7;
                        wVar = wVar4;
                        xVar = null;
                    }
                    if (xVar != null) {
                        if (xVar.a() > 0) {
                            int i31 = xVar.f2346d;
                            int i32 = xVar.f2344b;
                            int i33 = i31 - i32;
                            int i34 = xVar.f2345c;
                            int i35 = xVar.f2343a;
                            int i36 = i34 - i35;
                            arrayList5.add(i33 != i36 ? xVar.f2347e ? new androidx.recyclerview.widget.t(i35, i32, xVar.a()) : i33 > i36 ? new androidx.recyclerview.widget.t(i35, i32 + 1, xVar.a()) : new androidx.recyclerview.widget.t(i35 + 1, i32, xVar.a()) : new androidx.recyclerview.widget.t(i35, i32, i36));
                        }
                        if (arrayList2.isEmpty()) {
                            wVar2 = new androidx.recyclerview.widget.w();
                            arrayList4 = arrayList2;
                            wVar3 = wVar;
                            i19 = 1;
                        } else {
                            i19 = 1;
                            arrayList4 = arrayList2;
                            wVar2 = (androidx.recyclerview.widget.w) arrayList4.remove(arrayList2.size() - 1);
                            wVar3 = wVar;
                        }
                        wVar2.f2331a = wVar3.f2331a;
                        wVar2.f2333c = wVar3.f2333c;
                        wVar2.f2332b = xVar.f2343a;
                        wVar2.f2334d = xVar.f2344b;
                        arrayList3 = arrayList;
                        arrayList3.add(wVar2);
                        wVar3.f2332b = wVar3.f2332b;
                        wVar3.f2334d = wVar3.f2334d;
                        wVar3.f2331a = xVar.f2345c;
                        wVar3.f2333c = xVar.f2346d;
                        arrayList3.add(wVar3);
                    } else {
                        arrayList3 = arrayList;
                        arrayList4 = arrayList2;
                        i19 = 1;
                        arrayList4.add(wVar);
                    }
                    ArrayList arrayList8 = arrayList3;
                    arrayList7 = arrayList4;
                    arrayList6 = arrayList8;
                }
                Collections.sort(arrayList5, androidx.recyclerview.widget.d.f2060c);
                ((androidx.recyclerview.widget.f) this.f1410f).f2101c.execute(new y7.b(1, this, new androidx.recyclerview.widget.u(cVar, arrayList5, iArr, iArr2), false));
                break;
        }
    }

    public u1(androidx.recyclerview.widget.f fVar, List list, List list2, int i10, Runnable runnable) {
        this.f1410f = fVar;
        this.f1407c = list;
        this.f1408d = list2;
        this.f1406b = i10;
        this.f1409e = runnable;
    }
}

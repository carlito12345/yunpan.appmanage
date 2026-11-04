package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: d, reason: collision with root package name */
    public final l1 f2033d;

    /* renamed from: a, reason: collision with root package name */
    public final d0.d f2030a = new d0.d(30);

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f2031b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2032c = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public int f2035f = 0;

    /* renamed from: e, reason: collision with root package name */
    public final c f2034e = new c(this);

    public b(l1 l1Var) {
        this.f2033d = l1Var;
    }

    public final boolean a(int i10) {
        ArrayList arrayList = this.f2032c;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            a aVar = (a) arrayList.get(i11);
            int i12 = aVar.f2023a;
            if (i12 == 8) {
                if (f(aVar.f2026d, i11 + 1) == i10) {
                    return true;
                }
            } else if (i12 == 1) {
                int i13 = aVar.f2024b;
                int i14 = aVar.f2026d + i13;
                while (i13 < i14) {
                    if (f(i13, i11 + 1) == i10) {
                        return true;
                    }
                    i13++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public final void b() {
        ArrayList arrayList = this.f2032c;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f2033d.a((a) arrayList.get(i10));
        }
        k(arrayList);
        this.f2035f = 0;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.f2031b;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            a aVar = (a) arrayList.get(i10);
            int i11 = aVar.f2023a;
            l1 l1Var = this.f2033d;
            if (i11 == 1) {
                l1Var.a(aVar);
                int i12 = aVar.f2024b;
                int i13 = aVar.f2026d;
                RecyclerView recyclerView = l1Var.f2180a;
                recyclerView.offsetPositionRecordsForInsert(i12, i13);
                recyclerView.mItemsAddedOrRemoved = true;
            } else if (i11 == 2) {
                l1Var.a(aVar);
                int i14 = aVar.f2024b;
                int i15 = aVar.f2026d;
                RecyclerView recyclerView2 = l1Var.f2180a;
                recyclerView2.offsetPositionRecordsForRemove(i14, i15, true);
                recyclerView2.mItemsAddedOrRemoved = true;
                recyclerView2.mState.f2201c += i15;
            } else if (i11 == 4) {
                l1Var.a(aVar);
                int i16 = aVar.f2024b;
                int i17 = aVar.f2026d;
                Object obj = aVar.f2025c;
                RecyclerView recyclerView3 = l1Var.f2180a;
                recyclerView3.viewRangeUpdate(i16, i17, obj);
                recyclerView3.mItemsChanged = true;
            } else if (i11 == 8) {
                l1Var.a(aVar);
                int i18 = aVar.f2024b;
                int i19 = aVar.f2026d;
                RecyclerView recyclerView4 = l1Var.f2180a;
                recyclerView4.offsetPositionRecordsForMove(i18, i19);
                recyclerView4.mItemsAddedOrRemoved = true;
            }
        }
        k(arrayList);
        this.f2035f = 0;
    }

    public final void d(a aVar) {
        int i10;
        int i11 = aVar.f2023a;
        if (i11 == 1 || i11 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iL = l(aVar.f2024b, i11);
        int i12 = aVar.f2024b;
        int i13 = aVar.f2023a;
        if (i13 == 2) {
            i10 = 0;
        } else {
            if (i13 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + aVar);
            }
            i10 = 1;
        }
        int i14 = 1;
        for (int i15 = 1; i15 < aVar.f2026d; i15++) {
            int iL2 = l((i10 * i15) + aVar.f2024b, aVar.f2023a);
            int i16 = aVar.f2023a;
            if (i16 == 2 ? iL2 != iL : !(i16 == 4 && iL2 == iL + 1)) {
                a aVarH = h(aVar.f2025c, i16, iL, i14);
                e(aVarH, i12);
                aVarH.f2025c = null;
                this.f2030a.c(aVarH);
                if (aVar.f2023a == 4) {
                    i12 += i14;
                }
                iL = iL2;
                i14 = 1;
            } else {
                i14++;
            }
        }
        Object obj = aVar.f2025c;
        aVar.f2025c = null;
        this.f2030a.c(aVar);
        if (i14 > 0) {
            a aVarH2 = h(obj, aVar.f2023a, iL, i14);
            e(aVarH2, i12);
            aVarH2.f2025c = null;
            this.f2030a.c(aVarH2);
        }
    }

    public final void e(a aVar, int i10) {
        l1 l1Var = this.f2033d;
        l1Var.a(aVar);
        int i11 = aVar.f2023a;
        if (i11 == 2) {
            int i12 = aVar.f2026d;
            RecyclerView recyclerView = l1Var.f2180a;
            recyclerView.offsetPositionRecordsForRemove(i10, i12, true);
            recyclerView.mItemsAddedOrRemoved = true;
            recyclerView.mState.f2201c += i12;
            return;
        }
        if (i11 != 4) {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
        int i13 = aVar.f2026d;
        Object obj = aVar.f2025c;
        RecyclerView recyclerView2 = l1Var.f2180a;
        recyclerView2.viewRangeUpdate(i10, i13, obj);
        recyclerView2.mItemsChanged = true;
    }

    public final int f(int i10, int i11) {
        ArrayList arrayList = this.f2032c;
        int size = arrayList.size();
        while (i11 < size) {
            a aVar = (a) arrayList.get(i11);
            int i12 = aVar.f2023a;
            if (i12 == 8) {
                int i13 = aVar.f2024b;
                if (i13 == i10) {
                    i10 = aVar.f2026d;
                } else {
                    if (i13 < i10) {
                        i10--;
                    }
                    if (aVar.f2026d <= i10) {
                        i10++;
                    }
                }
            } else {
                int i14 = aVar.f2024b;
                if (i14 > i10) {
                    continue;
                } else if (i12 == 2) {
                    int i15 = aVar.f2026d;
                    if (i10 < i14 + i15) {
                        return -1;
                    }
                    i10 -= i15;
                } else if (i12 == 1) {
                    i10 += aVar.f2026d;
                }
            }
            i11++;
        }
        return i10;
    }

    public final boolean g() {
        return this.f2031b.size() > 0;
    }

    public final a h(Object obj, int i10, int i11, int i12) {
        a aVar = (a) this.f2030a.a();
        if (aVar == null) {
            return new a(obj, i10, i11, i12);
        }
        aVar.f2023a = i10;
        aVar.f2024b = i11;
        aVar.f2026d = i12;
        aVar.f2025c = obj;
        return aVar;
    }

    public final void i(a aVar) {
        this.f2032c.add(aVar);
        int i10 = aVar.f2023a;
        l1 l1Var = this.f2033d;
        if (i10 == 1) {
            int i11 = aVar.f2024b;
            int i12 = aVar.f2026d;
            RecyclerView recyclerView = l1Var.f2180a;
            recyclerView.offsetPositionRecordsForInsert(i11, i12);
            recyclerView.mItemsAddedOrRemoved = true;
            return;
        }
        if (i10 == 2) {
            int i13 = aVar.f2024b;
            int i14 = aVar.f2026d;
            RecyclerView recyclerView2 = l1Var.f2180a;
            recyclerView2.offsetPositionRecordsForRemove(i13, i14, false);
            recyclerView2.mItemsAddedOrRemoved = true;
            return;
        }
        if (i10 == 4) {
            int i15 = aVar.f2024b;
            int i16 = aVar.f2026d;
            Object obj = aVar.f2025c;
            RecyclerView recyclerView3 = l1Var.f2180a;
            recyclerView3.viewRangeUpdate(i15, i16, obj);
            recyclerView3.mItemsChanged = true;
            return;
        }
        if (i10 != 8) {
            throw new IllegalArgumentException("Unknown update op type for " + aVar);
        }
        int i17 = aVar.f2024b;
        int i18 = aVar.f2026d;
        RecyclerView recyclerView4 = l1Var.f2180a;
        recyclerView4.offsetPositionRecordsForMove(i17, i18);
        recyclerView4.mItemsAddedOrRemoved = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:198:0x01bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x011f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j() {
        int i10;
        int i11;
        int i12;
        boolean z;
        char c7;
        boolean z4;
        boolean z10;
        a aVarH;
        a aVarH2;
        int i13;
        int i14;
        a aVarH3;
        d0.d dVar = this.f2030a;
        int i15 = -1;
        ArrayList arrayList = this.f2031b;
        c cVar = this.f2034e;
        cVar.getClass();
        while (true) {
            int size = arrayList.size() - 1;
            boolean z11 = false;
            while (true) {
                i10 = 8;
                if (size < 0) {
                    size = -1;
                    break;
                }
                if (((a) arrayList.get(size)).f2023a != 8) {
                    z11 = true;
                } else if (z11) {
                    break;
                }
                size += i15;
            }
            i11 = 4;
            i12 = 2;
            if (size == i15) {
                break;
            }
            int i16 = size + 1;
            a aVar = (a) arrayList.get(size);
            a aVar2 = (a) arrayList.get(i16);
            int i17 = aVar2.f2023a;
            if (i17 != 1) {
                b bVar = (b) cVar.f2050a;
                if (i17 == 2) {
                    int i18 = aVar.f2024b;
                    int i19 = aVar.f2026d;
                    if (i18 < i19) {
                        if (aVar2.f2024b == i18 && aVar2.f2026d == i19 - i18) {
                            z4 = false;
                            z10 = true;
                        } else {
                            z4 = false;
                            z10 = false;
                        }
                    } else if (aVar2.f2024b == i19 + 1 && aVar2.f2026d == i18 - i19) {
                        z4 = true;
                        z10 = true;
                    } else {
                        z4 = true;
                        z10 = false;
                    }
                    int i20 = aVar2.f2024b;
                    if (i19 < i20) {
                        aVar2.f2024b = i20 - 1;
                    } else {
                        int i21 = aVar2.f2026d;
                        if (i19 < i20 + i21) {
                            aVar2.f2026d = i21 - 1;
                            aVar.f2023a = 2;
                            aVar.f2026d = 1;
                            if (aVar2.f2026d == 0) {
                                arrayList.remove(i16);
                                aVar2.f2025c = null;
                                bVar.f2030a.c(aVar2);
                            }
                        }
                    }
                    int i22 = aVar.f2024b;
                    int i23 = aVar2.f2024b;
                    if (i22 <= i23) {
                        aVar2.f2024b = i23 + 1;
                    } else {
                        int i24 = i23 + aVar2.f2026d;
                        if (i22 < i24) {
                            aVarH = bVar.h(null, 2, i22 + 1, i24 - i22);
                            aVar2.f2026d = aVar.f2024b - aVar2.f2024b;
                        }
                        if (z10) {
                            if (z4) {
                                if (aVarH != null) {
                                    int i25 = aVar.f2024b;
                                    if (i25 > aVarH.f2024b) {
                                        aVar.f2024b = i25 - aVarH.f2026d;
                                    }
                                    int i26 = aVar.f2026d;
                                    if (i26 > aVarH.f2024b) {
                                        aVar.f2026d = i26 - aVarH.f2026d;
                                    }
                                }
                                int i27 = aVar.f2024b;
                                if (i27 > aVar2.f2024b) {
                                    aVar.f2024b = i27 - aVar2.f2026d;
                                }
                                int i28 = aVar.f2026d;
                                if (i28 > aVar2.f2024b) {
                                    aVar.f2026d = i28 - aVar2.f2026d;
                                }
                            } else {
                                if (aVarH != null) {
                                    int i29 = aVar.f2024b;
                                    if (i29 >= aVarH.f2024b) {
                                        aVar.f2024b = i29 - aVarH.f2026d;
                                    }
                                    int i30 = aVar.f2026d;
                                    if (i30 >= aVarH.f2024b) {
                                        aVar.f2026d = i30 - aVarH.f2026d;
                                    }
                                }
                                int i31 = aVar.f2024b;
                                if (i31 >= aVar2.f2024b) {
                                    aVar.f2024b = i31 - aVar2.f2026d;
                                }
                                int i32 = aVar.f2026d;
                                if (i32 >= aVar2.f2024b) {
                                    aVar.f2026d = i32 - aVar2.f2026d;
                                }
                            }
                            arrayList.set(size, aVar2);
                            if (aVar.f2024b != aVar.f2026d) {
                                arrayList.set(i16, aVar);
                            } else {
                                arrayList.remove(i16);
                            }
                            if (aVarH != null) {
                                arrayList.add(size, aVarH);
                            }
                        } else {
                            arrayList.set(size, aVar2);
                            arrayList.remove(i16);
                            aVar.f2025c = null;
                            bVar.f2030a.c(aVar);
                        }
                    }
                    aVarH = null;
                    if (z10) {
                    }
                } else if (i17 == 4) {
                    int i33 = aVar.f2026d;
                    int i34 = aVar2.f2024b;
                    if (i33 < i34) {
                        aVar2.f2024b = i34 - 1;
                    } else {
                        int i35 = aVar2.f2026d;
                        if (i33 < i34 + i35) {
                            aVar2.f2026d = i35 - 1;
                            aVarH2 = bVar.h(aVar2.f2025c, 4, aVar.f2024b, 1);
                        }
                        i13 = aVar.f2024b;
                        i14 = aVar2.f2024b;
                        if (i13 > i14) {
                            aVar2.f2024b = i14 + 1;
                        } else {
                            int i36 = i14 + aVar2.f2026d;
                            if (i13 < i36) {
                                int i37 = i36 - i13;
                                aVarH3 = bVar.h(aVar2.f2025c, 4, i13 + 1, i37);
                                aVar2.f2026d -= i37;
                            }
                            arrayList.set(i16, aVar);
                            if (aVar2.f2026d > 0) {
                                arrayList.set(size, aVar2);
                            } else {
                                arrayList.remove(size);
                                aVar2.f2025c = null;
                                bVar.f2030a.c(aVar2);
                            }
                            if (aVarH2 != null) {
                                arrayList.add(size, aVarH2);
                            }
                            if (aVarH3 != null) {
                                arrayList.add(size, aVarH3);
                            }
                        }
                        aVarH3 = null;
                        arrayList.set(i16, aVar);
                        if (aVar2.f2026d > 0) {
                        }
                        if (aVarH2 != null) {
                        }
                        if (aVarH3 != null) {
                        }
                    }
                    aVarH2 = null;
                    i13 = aVar.f2024b;
                    i14 = aVar2.f2024b;
                    if (i13 > i14) {
                    }
                    aVarH3 = null;
                    arrayList.set(i16, aVar);
                    if (aVar2.f2026d > 0) {
                    }
                    if (aVarH2 != null) {
                    }
                    if (aVarH3 != null) {
                    }
                }
            } else {
                int i38 = aVar.f2026d;
                int i39 = aVar2.f2024b;
                int i40 = i38 < i39 ? -1 : 0;
                int i41 = aVar.f2024b;
                if (i41 < i39) {
                    i40++;
                }
                if (i39 <= i41) {
                    aVar.f2024b = i41 + aVar2.f2026d;
                }
                int i42 = aVar2.f2024b;
                if (i42 <= i38) {
                    aVar.f2026d = i38 + aVar2.f2026d;
                }
                aVar2.f2024b = i42 + i40;
                arrayList.set(size, aVar2);
                arrayList.set(i16, aVar);
            }
            i15 = -1;
        }
        int size2 = arrayList.size();
        int i43 = 0;
        while (i43 < size2) {
            a aVarH4 = (a) arrayList.get(i43);
            int i44 = aVarH4.f2023a;
            if (i44 != 1) {
                l1 l1Var = this.f2033d;
                if (i44 == i12) {
                    int i45 = aVarH4.f2024b;
                    int i46 = aVarH4.f2026d + i45;
                    int i47 = i45;
                    int i48 = 0;
                    char c10 = 65535;
                    while (i47 < i46) {
                        RecyclerView recyclerView = l1Var.f2180a;
                        RecyclerView.ViewHolder viewHolderFindViewHolderForPosition = recyclerView.findViewHolderForPosition(i47, true);
                        if (viewHolderFindViewHolderForPosition == null) {
                            viewHolderFindViewHolderForPosition = null;
                        } else {
                            if (recyclerView.mChildHelper.f2149c.contains(viewHolderFindViewHolderForPosition.itemView)) {
                                int i49 = RecyclerView.HORIZONTAL;
                                viewHolderFindViewHolderForPosition = null;
                            }
                        }
                        if (viewHolderFindViewHolderForPosition != null || a(i47)) {
                            if (c10 == 0) {
                                d(h(null, 2, i45, i48));
                                z = true;
                            } else {
                                z = false;
                            }
                            c7 = 1;
                        } else {
                            if (c10 == 1) {
                                i(h(null, 2, i45, i48));
                                z = true;
                            } else {
                                z = false;
                            }
                            c7 = 0;
                        }
                        if (z) {
                            i47 -= i48;
                            i46 -= i48;
                            i48 = 1;
                        } else {
                            i48++;
                        }
                        i47++;
                        c10 = c7;
                    }
                    if (i48 != aVarH4.f2026d) {
                        aVarH4.f2025c = null;
                        dVar.c(aVarH4);
                        aVarH4 = h(null, 2, i45, i48);
                    }
                    if (c10 == 0) {
                        d(aVarH4);
                    } else {
                        i(aVarH4);
                    }
                } else if (i44 == i11) {
                    int i50 = aVarH4.f2024b;
                    int i51 = aVarH4.f2026d + i50;
                    int i52 = i50;
                    int i53 = 0;
                    char c11 = 65535;
                    while (i50 < i51) {
                        RecyclerView recyclerView2 = l1Var.f2180a;
                        RecyclerView.ViewHolder viewHolderFindViewHolderForPosition2 = recyclerView2.findViewHolderForPosition(i50, true);
                        if (viewHolderFindViewHolderForPosition2 == null) {
                            viewHolderFindViewHolderForPosition2 = null;
                        } else {
                            if (recyclerView2.mChildHelper.f2149c.contains(viewHolderFindViewHolderForPosition2.itemView)) {
                                int i54 = RecyclerView.HORIZONTAL;
                                viewHolderFindViewHolderForPosition2 = null;
                            }
                        }
                        if (viewHolderFindViewHolderForPosition2 != null || a(i50)) {
                            if (c11 == 0) {
                                d(h(aVarH4.f2025c, 4, i52, i53));
                                i52 = i50;
                                i53 = 0;
                            }
                            c11 = 1;
                        } else {
                            if (c11 == 1) {
                                i(h(aVarH4.f2025c, 4, i52, i53));
                                i52 = i50;
                                i53 = 0;
                            }
                            c11 = 0;
                        }
                        i53++;
                        i50++;
                    }
                    if (i53 != aVarH4.f2026d) {
                        Object obj = aVarH4.f2025c;
                        aVarH4.f2025c = null;
                        dVar.c(aVarH4);
                        aVarH4 = h(obj, 4, i52, i53);
                    }
                    if (c11 == 0) {
                        d(aVarH4);
                    } else {
                        i(aVarH4);
                    }
                } else if (i44 == i10) {
                    i(aVarH4);
                }
            } else {
                i(aVarH4);
            }
            i43++;
            i10 = 8;
            i11 = 4;
            i12 = 2;
        }
        arrayList.clear();
    }

    public final void k(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            a aVar = (a) arrayList.get(i10);
            aVar.f2025c = null;
            this.f2030a.c(aVar);
        }
        arrayList.clear();
    }

    public final int l(int i10, int i11) {
        int i12;
        int i13;
        ArrayList arrayList = this.f2032c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            a aVar = (a) arrayList.get(size);
            int i14 = aVar.f2023a;
            if (i14 == 8) {
                int i15 = aVar.f2024b;
                int i16 = aVar.f2026d;
                if (i15 < i16) {
                    i13 = i15;
                    i12 = i16;
                } else {
                    i12 = i15;
                    i13 = i16;
                }
                if (i10 < i13 || i10 > i12) {
                    if (i10 < i15) {
                        if (i11 == 1) {
                            aVar.f2024b = i15 + 1;
                            aVar.f2026d = i16 + 1;
                        } else if (i11 == 2) {
                            aVar.f2024b = i15 - 1;
                            aVar.f2026d = i16 - 1;
                        }
                    }
                } else if (i13 == i15) {
                    if (i11 == 1) {
                        aVar.f2026d = i16 + 1;
                    } else if (i11 == 2) {
                        aVar.f2026d = i16 - 1;
                    }
                    i10++;
                } else {
                    if (i11 == 1) {
                        aVar.f2024b = i15 + 1;
                    } else if (i11 == 2) {
                        aVar.f2024b = i15 - 1;
                    }
                    i10--;
                }
            } else {
                int i17 = aVar.f2024b;
                if (i17 <= i10) {
                    if (i14 == 1) {
                        i10 -= aVar.f2026d;
                    } else if (i14 == 2) {
                        i10 += aVar.f2026d;
                    }
                } else if (i11 == 1) {
                    aVar.f2024b = i17 + 1;
                } else if (i11 == 2) {
                    aVar.f2024b = i17 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            a aVar2 = (a) arrayList.get(size2);
            if (aVar2.f2023a == 8) {
                int i18 = aVar2.f2026d;
                if (i18 == aVar2.f2024b || i18 < 0) {
                    arrayList.remove(size2);
                    aVar2.f2025c = null;
                    this.f2030a.c(aVar2);
                }
            } else if (aVar2.f2026d <= 0) {
                arrayList.remove(size2);
                aVar2.f2025c = null;
                this.f2030a.c(aVar2);
            }
        }
        return i10;
    }
}

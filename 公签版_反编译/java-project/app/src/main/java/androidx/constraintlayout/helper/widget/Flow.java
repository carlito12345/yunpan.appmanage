package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import f0.c;
import f0.d;
import f0.e;
import f0.f;
import f0.g;
import f0.h;
import g0.b;
import i0.q;
import i0.s;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public class Flow extends s {

    /* renamed from: j, reason: collision with root package name */
    public g f1014j;

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // i0.s, i0.c
    public final void g(AttributeSet attributeSet) {
        super.g(attributeSet);
        this.f1014j = new g();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, q.f8393b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == 0) {
                    this.f1014j.V0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    g gVar = this.f1014j;
                    int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    gVar.s0 = dimensionPixelSize;
                    gVar.f5141t0 = dimensionPixelSize;
                    gVar.f5142u0 = dimensionPixelSize;
                    gVar.f5143v0 = dimensionPixelSize;
                } else if (index == 18) {
                    g gVar2 = this.f1014j;
                    int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    gVar2.f5142u0 = dimensionPixelSize2;
                    gVar2.f5144w0 = dimensionPixelSize2;
                    gVar2.f5145x0 = dimensionPixelSize2;
                } else if (index == 19) {
                    this.f1014j.f5143v0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.f1014j.f5144w0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.f1014j.s0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.f1014j.f5145x0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.f1014j.f5141t0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 54) {
                    this.f1014j.T0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 44) {
                    this.f1014j.D0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 53) {
                    this.f1014j.E0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 38) {
                    this.f1014j.F0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 46) {
                    this.f1014j.H0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 40) {
                    this.f1014j.G0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 48) {
                    this.f1014j.I0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 42) {
                    this.f1014j.J0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 37) {
                    this.f1014j.L0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 45) {
                    this.f1014j.N0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 39) {
                    this.f1014j.M0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 47) {
                    this.f1014j.O0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 51) {
                    this.f1014j.K0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 41) {
                    this.f1014j.R0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 50) {
                    this.f1014j.S0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 43) {
                    this.f1014j.P0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 52) {
                    this.f1014j.Q0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 49) {
                    this.f1014j.U0 = typedArrayObtainStyledAttributes.getInt(index, -1);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f8246d = this.f1014j;
        i();
    }

    @Override // i0.c
    public final void h(d dVar, boolean z) {
        g gVar = this.f1014j;
        int i10 = gVar.f5142u0;
        if (i10 > 0 || gVar.f5143v0 > 0) {
            if (z) {
                gVar.f5144w0 = gVar.f5143v0;
                gVar.f5145x0 = i10;
            } else {
                gVar.f5144w0 = i10;
                gVar.f5145x0 = gVar.f5143v0;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:284:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x071a  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x07bf  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x07c4  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x07d8  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x07db  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x07f7  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x07f9  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x00ce A[EDGE_INSN: B:428:0x00ce->B:59:0x00ce BREAK  A[LOOP:1: B:53:0x00ba->B:58:0x00ca], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x011c  */
    @Override // i0.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(g gVar, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int[] iArr;
        f fVar;
        char c7;
        char c10;
        int i25;
        int i26;
        int iMin;
        int[] iArr2;
        int i27;
        int i28;
        int i29;
        int i30;
        ArrayList arrayList;
        int[] iArr3;
        d dVar;
        int i31;
        int i32;
        int i33;
        int iCeil;
        int iCeil2;
        boolean z;
        Object obj;
        d dVar2;
        int i34;
        int i35;
        d[] dVarArr;
        int i36;
        int i37;
        ArrayList arrayList2;
        int i38;
        int i39;
        int i40;
        int i41;
        d dVar3;
        int i42;
        int i43;
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (gVar == null) {
            setMeasuredDimension(0, 0);
            return;
        }
        if (gVar.f5154r0 <= 0) {
            int i44 = gVar.f5144w0;
            int i45 = gVar.f5145x0;
            int i46 = gVar.s0;
            int i47 = gVar.f5141t0;
            int[] iArr4 = new int[2];
            int i48 = (size - i44) - i45;
            i12 = gVar.V0;
            if (i12 == 1) {
                i48 = (size2 - i46) - i47;
            }
            if (i12 != 0) {
                if (gVar.D0 == -1) {
                    gVar.D0 = 0;
                }
                if (gVar.E0 == -1) {
                    gVar.E0 = 0;
                }
            } else {
                if (gVar.D0 == -1) {
                    gVar.D0 = 0;
                }
                if (gVar.E0 == -1) {
                    gVar.E0 = 0;
                }
            }
            d[] dVarArr2 = gVar.f5153q0;
            i13 = 0;
            i14 = 0;
            while (true) {
                i15 = gVar.f5154r0;
                if (i13 < i15) {
                    break;
                }
                if (gVar.f5153q0[i13].f5088g0 == 8) {
                    i14++;
                }
                i13++;
            }
            if (i14 > 0) {
                dVarArr2 = new d[i15 - i14];
                i15 = 0;
                int i49 = 0;
                while (i49 < gVar.f5154r0) {
                    d dVar4 = gVar.f5153q0[i49];
                    int i50 = i48;
                    int[] iArr5 = iArr4;
                    if (dVar4.f5088g0 != 8) {
                        dVarArr2[i15] = dVar4;
                        i15++;
                    }
                    i49++;
                    i48 = i50;
                    iArr4 = iArr5;
                }
            }
            int i51 = i48;
            int[] iArr6 = iArr4;
            d[] dVarArr3 = dVarArr2;
            int i52 = i15;
            gVar.f5139a1 = dVarArr3;
            gVar.f5140b1 = i52;
            i16 = gVar.T0;
            ArrayList arrayList3 = gVar.W0;
            if (i16 == 0) {
                c cVar = gVar.J;
                c cVar2 = gVar.I;
                c cVar3 = gVar.K;
                c cVar4 = gVar.L;
                int[] iArr7 = gVar.f5105p0;
                if (i16 == 1) {
                    i17 = i47;
                    i18 = i46;
                    i19 = i45;
                    i20 = i44;
                    i21 = mode;
                    i22 = size;
                    i23 = mode2;
                    i24 = size2;
                    iArr = iArr6;
                    ArrayList arrayList4 = arrayList3;
                    int i53 = gVar.V0;
                    if (i52 != 0) {
                        arrayList4.clear();
                        f fVar2 = new f(gVar, i53, gVar.I, gVar.J, gVar.K, gVar.L, i51);
                        arrayList4.add(fVar2);
                        if (i53 == 0) {
                            f fVar3 = fVar2;
                            int i54 = 0;
                            i28 = 0;
                            int i55 = 0;
                            while (i55 < i52) {
                                d dVar5 = dVarArr3[i55];
                                int iU = gVar.U(dVar5, i51);
                                if (dVar5.f5105p0[0] == 3) {
                                    i28++;
                                }
                                int i56 = i28;
                                boolean z4 = (i54 == i51 || (gVar.P0 + i54) + iU > i51) && fVar3.f5124b != null;
                                if (!z4 && i55 > 0 && (i32 = gVar.U0) > 0 && i55 % i32 == 0) {
                                    z4 = true;
                                }
                                if (z4) {
                                    iArr3 = iArr7;
                                    dVar = dVar5;
                                    i31 = i53;
                                    f fVar4 = new f(gVar, i53, gVar.I, gVar.J, gVar.K, gVar.L, i51);
                                    fVar4.f5135n = i55;
                                    arrayList4.add(fVar4);
                                    fVar3 = fVar4;
                                } else {
                                    iArr3 = iArr7;
                                    dVar = dVar5;
                                    i31 = i53;
                                    if (i55 > 0) {
                                        i54 = gVar.P0 + iU + i54;
                                    }
                                    fVar3.a(dVar);
                                    i55++;
                                    i28 = i56;
                                    iArr7 = iArr3;
                                    i53 = i31;
                                }
                                i54 = iU;
                                fVar3.a(dVar);
                                i55++;
                                i28 = i56;
                                iArr7 = iArr3;
                                i53 = i31;
                            }
                            iArr2 = iArr7;
                            i27 = i53;
                        } else {
                            iArr2 = iArr7;
                            i27 = i53;
                            int i57 = 0;
                            int i58 = 0;
                            i28 = 0;
                            while (i57 < i52) {
                                d dVar6 = dVarArr3[i57];
                                int iT = gVar.T(dVar6, i51);
                                if (dVar6.f5105p0[1] == 3) {
                                    i28++;
                                }
                                int i59 = i28;
                                boolean z10 = (i58 == i51 || (gVar.Q0 + i58) + iT > i51) && fVar2.f5124b != null;
                                if (!z10 && i57 > 0 && (i29 = gVar.U0) > 0 && i57 % i29 == 0) {
                                    z10 = true;
                                }
                                if (z10) {
                                    fVar2 = new f(gVar, i27, gVar.I, gVar.J, gVar.K, gVar.L, i51);
                                    fVar2.f5135n = i57;
                                    arrayList4.add(fVar2);
                                } else {
                                    if (i57 > 0) {
                                        i58 = gVar.Q0 + iT + i58;
                                    }
                                    fVar2.a(dVar6);
                                    i57++;
                                    i28 = i59;
                                }
                                i58 = iT;
                                fVar2.a(dVar6);
                                i57++;
                                i28 = i59;
                            }
                        }
                        int size3 = arrayList4.size();
                        int i60 = gVar.f5144w0;
                        int i61 = gVar.s0;
                        int i62 = gVar.f5145x0;
                        int i63 = gVar.f5141t0;
                        boolean z11 = iArr2[0] == 2 || iArr2[1] == 2;
                        if (i28 > 0 && z11) {
                            for (int i64 = 0; i64 < size3; i64++) {
                                f fVar5 = (f) arrayList4.get(i64);
                                if (i27 == 0) {
                                    fVar5.e(i51 - fVar5.d());
                                } else {
                                    fVar5.e(i51 - fVar5.c());
                                }
                            }
                        }
                        int i65 = i60;
                        int i66 = i61;
                        c cVar5 = cVar;
                        c cVar6 = cVar2;
                        c cVar7 = cVar3;
                        c cVar8 = cVar4;
                        int iMax = 0;
                        int i67 = 0;
                        int i68 = 0;
                        while (i68 < size3) {
                            f fVar6 = (f) arrayList4.get(i68);
                            if (i27 == 0) {
                                if (i68 < size3 - 1) {
                                    cVar8 = ((f) arrayList4.get(i68 + 1)).f5124b.J;
                                    arrayList = arrayList4;
                                    i63 = 0;
                                } else {
                                    i63 = gVar.f5141t0;
                                    arrayList = arrayList4;
                                    cVar8 = cVar4;
                                }
                                c cVar9 = fVar6.f5124b.L;
                                fVar6.f(i27, cVar6, cVar5, cVar7, cVar8, i65, i66, i62, i63, i51);
                                iMax = Math.max(iMax, fVar6.d());
                                int iC = fVar6.c() + i67;
                                if (i68 > 0) {
                                    iC += gVar.Q0;
                                }
                                i30 = size3;
                                i67 = iC;
                                cVar5 = cVar9;
                                arrayList4 = arrayList;
                                i66 = 0;
                            } else {
                                ArrayList arrayList5 = arrayList4;
                                if (i68 < size3 - 1) {
                                    arrayList4 = arrayList5;
                                    i30 = size3;
                                    cVar7 = ((f) arrayList4.get(i68 + 1)).f5124b.I;
                                    i62 = 0;
                                } else {
                                    arrayList4 = arrayList5;
                                    i62 = gVar.f5145x0;
                                    i30 = size3;
                                    cVar7 = cVar3;
                                }
                                c cVar10 = fVar6.f5124b.K;
                                fVar6.f(i27, cVar6, cVar5, cVar7, cVar8, i65, i66, i62, i63, i51);
                                int iD = fVar6.d() + iMax;
                                int iMax2 = Math.max(i67, fVar6.c());
                                if (i68 > 0) {
                                    iD += gVar.P0;
                                }
                                i67 = iMax2;
                                iMax = iD;
                                i65 = 0;
                                cVar6 = cVar10;
                            }
                            i68++;
                            size3 = i30;
                        }
                        iArr[0] = iMax;
                        iArr[1] = i67;
                    }
                } else if (i16 == 2) {
                    i17 = i47;
                    i18 = i46;
                    i19 = i45;
                    i20 = i44;
                    i21 = mode;
                    i22 = size;
                    i23 = mode2;
                    i24 = size2;
                    d[] dVarArr4 = dVarArr3;
                    iArr = iArr6;
                    int i69 = gVar.V0;
                    if (i69 == 0) {
                        int i70 = gVar.U0;
                        if (i70 <= 0) {
                            int i71 = 0;
                            iCeil = 0;
                            for (int i72 = 0; i72 < i52; i72++) {
                                if (i72 > 0) {
                                    i71 += gVar.P0;
                                }
                                d dVar7 = dVarArr4[i72];
                                if (dVar7 != null) {
                                    int iU2 = gVar.U(dVar7, i51) + i71;
                                    if (iU2 > i51) {
                                        break;
                                    }
                                    iCeil++;
                                    i71 = iU2;
                                }
                            }
                        } else {
                            iCeil = i70;
                        }
                        i33 = 0;
                    } else {
                        i33 = gVar.U0;
                        if (i33 <= 0) {
                            int i73 = 0;
                            int i74 = 0;
                            for (int i75 = 0; i75 < i52; i75++) {
                                if (i75 > 0) {
                                    i73 += gVar.Q0;
                                }
                                d dVar8 = dVarArr4[i75];
                                if (dVar8 != null) {
                                    int iT2 = gVar.T(dVar8, i51) + i73;
                                    if (iT2 > i51) {
                                        break;
                                    }
                                    i74++;
                                    i73 = iT2;
                                }
                            }
                            i33 = i74;
                        }
                        iCeil = 0;
                    }
                    if (gVar.Z0 == null) {
                        gVar.Z0 = new int[2];
                    }
                    if ((i33 == 0 && i69 == 1) || (iCeil == 0 && i69 == 0)) {
                        iCeil2 = i33;
                        z = true;
                    } else {
                        iCeil2 = i33;
                        z = false;
                    }
                    while (!z) {
                        if (i69 == 0) {
                            iCeil2 = (int) Math.ceil(i52 / iCeil);
                        } else {
                            iCeil = (int) Math.ceil(i52 / iCeil2);
                        }
                        d[] dVarArr5 = gVar.Y0;
                        if (dVarArr5 == null || dVarArr5.length < iCeil) {
                            obj = null;
                            gVar.Y0 = new d[iCeil];
                        } else {
                            obj = null;
                            Arrays.fill(dVarArr5, (Object) null);
                        }
                        d[] dVarArr6 = gVar.X0;
                        if (dVarArr6 == null || dVarArr6.length < iCeil2) {
                            gVar.X0 = new d[iCeil2];
                        } else {
                            Arrays.fill(dVarArr6, obj);
                        }
                        for (int i76 = 0; i76 < iCeil; i76++) {
                            int i77 = 0;
                            while (i77 < iCeil2) {
                                int i78 = (i77 * iCeil) + i76;
                                if (i69 == 1) {
                                    i78 = (i76 * iCeil2) + i77;
                                }
                                d[] dVarArr7 = dVarArr4;
                                if (i78 < dVarArr7.length && (dVar2 = dVarArr7[i78]) != null) {
                                    int iU3 = gVar.U(dVar2, i51);
                                    d dVar9 = gVar.Y0[i76];
                                    if (dVar9 == null || dVar9.q() < iU3) {
                                        gVar.Y0[i76] = dVar2;
                                    }
                                    int iT3 = gVar.T(dVar2, i51);
                                    d dVar10 = gVar.X0[i77];
                                    if (dVar10 == null || dVar10.k() < iT3) {
                                        gVar.X0[i77] = dVar2;
                                    }
                                }
                                i77++;
                                dVarArr4 = dVarArr7;
                            }
                        }
                        d[] dVarArr8 = dVarArr4;
                        int iU4 = 0;
                        for (int i79 = 0; i79 < iCeil; i79++) {
                            d dVar11 = gVar.Y0[i79];
                            if (dVar11 != null) {
                                if (i79 > 0) {
                                    iU4 += gVar.P0;
                                }
                                iU4 = gVar.U(dVar11, i51) + iU4;
                            }
                        }
                        int iT4 = 0;
                        for (int i80 = 0; i80 < iCeil2; i80++) {
                            d dVar12 = gVar.X0[i80];
                            if (dVar12 != null) {
                                if (i80 > 0) {
                                    iT4 += gVar.Q0;
                                }
                                iT4 = gVar.T(dVar12, i51) + iT4;
                            }
                        }
                        iArr[0] = iU4;
                        iArr[1] = iT4;
                        if (i69 == 0) {
                            if (iU4 <= i51 || iCeil <= 1) {
                                z = true;
                            } else {
                                iCeil--;
                            }
                        } else if (iT4 > i51 && iCeil2 > 1) {
                            iCeil2--;
                        }
                        dVarArr4 = dVarArr8;
                    }
                    int[] iArr8 = gVar.Z0;
                    iArr8[0] = iCeil;
                    iArr8[1] = iCeil2;
                } else if (i16 != 3) {
                    i17 = i47;
                    i18 = i46;
                    i19 = i45;
                    i20 = i44;
                    i21 = mode;
                    i22 = size;
                    i23 = mode2;
                    i24 = size2;
                    iArr = iArr6;
                } else {
                    int i81 = gVar.V0;
                    if (i52 != 0) {
                        arrayList3.clear();
                        int i82 = i51;
                        iArr = iArr6;
                        i17 = i47;
                        i18 = i46;
                        i19 = i45;
                        i20 = i44;
                        i24 = size2;
                        ArrayList arrayList6 = arrayList3;
                        f fVar7 = new f(gVar, i81, gVar.I, gVar.J, gVar.K, gVar.L, i82);
                        arrayList6.add(fVar7);
                        if (i81 == 0) {
                            int i83 = 0;
                            i35 = 0;
                            int i84 = 0;
                            int i85 = 0;
                            while (i85 < i52) {
                                int i86 = i83 + 1;
                                d dVar13 = dVarArr3[i85];
                                int i87 = i82;
                                int iU5 = gVar.U(dVar13, i87);
                                int i88 = mode2;
                                if (dVar13.f5105p0[0] == 3) {
                                    i35++;
                                }
                                int i89 = i35;
                                boolean z12 = (i84 == i87 || (gVar.P0 + i84) + iU5 > i87) && fVar7.f5124b != null;
                                if (!z12 && i85 > 0 && (i43 = gVar.U0) > 0 && i86 > i43) {
                                    z12 = true;
                                }
                                if (z12) {
                                    i41 = i89;
                                    i38 = i87;
                                    i40 = size;
                                    dVar3 = dVar13;
                                    i39 = mode;
                                    i42 = i85;
                                    f fVar8 = new f(gVar, i81, gVar.I, gVar.J, gVar.K, gVar.L, i38);
                                    fVar8.f5135n = i42;
                                    arrayList6.add(fVar8);
                                    fVar7 = fVar8;
                                    i84 = iU5;
                                    i83 = i86;
                                } else {
                                    i38 = i87;
                                    i39 = mode;
                                    i40 = size;
                                    i41 = i89;
                                    dVar3 = dVar13;
                                    i42 = i85;
                                    i84 = i42 > 0 ? gVar.P0 + iU5 + i84 : iU5;
                                    i83 = 0;
                                }
                                fVar7.a(dVar3);
                                i85 = i42 + 1;
                                i35 = i41;
                                mode2 = i88;
                                i82 = i38;
                                size = i40;
                                mode = i39;
                            }
                            i21 = mode;
                            i22 = size;
                            int i90 = i82;
                            i23 = mode2;
                            i34 = i90;
                        } else {
                            i21 = mode;
                            i22 = size;
                            int i91 = i82;
                            i23 = mode2;
                            int i92 = 0;
                            int i93 = 0;
                            int i94 = 0;
                            while (i94 < i52) {
                                d dVar14 = dVarArr3[i94];
                                int i95 = i91;
                                int iT5 = gVar.T(dVar14, i95);
                                if (dVar14.f5105p0[1] == 3) {
                                    i93++;
                                }
                                int i96 = i93;
                                boolean z13 = (i92 == i95 || (gVar.Q0 + i92) + iT5 > i95) && fVar7.f5124b != null;
                                if ((z13 || i94 <= 0 || (i36 = gVar.U0) <= 0 || i36 >= 0) ? z13 : true) {
                                    dVarArr = dVarArr3;
                                    f fVar9 = new f(gVar, i81, gVar.I, gVar.J, gVar.K, gVar.L, i95);
                                    fVar9.f5135n = i94;
                                    arrayList6.add(fVar9);
                                    fVar7 = fVar9;
                                } else {
                                    dVarArr = dVarArr3;
                                    if (i94 > 0) {
                                        i92 = gVar.Q0 + iT5 + i92;
                                    }
                                    fVar7.a(dVar14);
                                    i94++;
                                    i93 = i96;
                                    dVarArr3 = dVarArr;
                                    i91 = i95;
                                }
                                i92 = iT5;
                                fVar7.a(dVar14);
                                i94++;
                                i93 = i96;
                                dVarArr3 = dVarArr;
                                i91 = i95;
                            }
                            i34 = i91;
                            i35 = i93;
                        }
                        int size4 = arrayList6.size();
                        int i97 = gVar.f5144w0;
                        int i98 = gVar.s0;
                        int i99 = gVar.f5145x0;
                        int i100 = gVar.f5141t0;
                        boolean z14 = iArr7[0] == 2 || iArr7[1] == 2;
                        if (i35 > 0 && z14) {
                            for (int i101 = 0; i101 < size4; i101++) {
                                f fVar10 = (f) arrayList6.get(i101);
                                if (i81 == 0) {
                                    fVar10.e(i34 - fVar10.d());
                                } else {
                                    fVar10.e(i34 - fVar10.c());
                                }
                            }
                        }
                        int i102 = i97;
                        int i103 = i98;
                        c cVar11 = cVar;
                        c cVar12 = cVar2;
                        c cVar13 = cVar3;
                        c cVar14 = cVar4;
                        int iMax3 = 0;
                        int i104 = 0;
                        int i105 = 0;
                        while (i105 < size4) {
                            f fVar11 = (f) arrayList6.get(i105);
                            if (i81 == 0) {
                                if (i105 < size4 - 1) {
                                    cVar14 = ((f) arrayList6.get(i105 + 1)).f5124b.J;
                                    arrayList2 = arrayList6;
                                    i100 = 0;
                                } else {
                                    i100 = gVar.f5141t0;
                                    arrayList2 = arrayList6;
                                    cVar14 = cVar4;
                                }
                                c cVar15 = fVar11.f5124b.L;
                                fVar11.f(i81, cVar12, cVar11, cVar13, cVar14, i102, i103, i99, i100, i34);
                                iMax3 = Math.max(iMax3, fVar11.d());
                                int iC2 = fVar11.c() + i104;
                                if (i105 > 0) {
                                    iC2 += gVar.Q0;
                                }
                                i37 = size4;
                                i104 = iC2;
                                cVar11 = cVar15;
                                arrayList6 = arrayList2;
                                i103 = 0;
                            } else {
                                ArrayList arrayList7 = arrayList6;
                                if (i105 < size4 - 1) {
                                    arrayList6 = arrayList7;
                                    i37 = size4;
                                    cVar13 = ((f) arrayList6.get(i105 + 1)).f5124b.I;
                                    i99 = 0;
                                } else {
                                    arrayList6 = arrayList7;
                                    i99 = gVar.f5145x0;
                                    i37 = size4;
                                    cVar13 = cVar3;
                                }
                                c cVar16 = fVar11.f5124b.K;
                                fVar11.f(i81, cVar12, cVar11, cVar13, cVar14, i102, i103, i99, i100, i34);
                                int iD2 = fVar11.d() + iMax3;
                                int iMax4 = Math.max(i104, fVar11.c());
                                if (i105 > 0) {
                                    iD2 += gVar.P0;
                                }
                                i104 = iMax4;
                                iMax3 = iD2;
                                i102 = 0;
                                cVar12 = cVar16;
                            }
                            i105++;
                            size4 = i37;
                        }
                        iArr[0] = iMax3;
                        iArr[1] = i104;
                    }
                }
            } else {
                i17 = i47;
                i18 = i46;
                i19 = i45;
                i20 = i44;
                i21 = mode;
                i22 = size;
                i23 = mode2;
                i24 = size2;
                iArr = iArr6;
                int i106 = gVar.V0;
                if (i52 != 0) {
                    if (arrayList3.size() == 0) {
                        fVar = new f(gVar, i106, gVar.I, gVar.J, gVar.K, gVar.L, i51);
                        arrayList3.add(fVar);
                    } else {
                        fVar = (f) arrayList3.get(0);
                        fVar.f5125c = 0;
                        fVar.f5124b = null;
                        fVar.l = 0;
                        fVar.f5134m = 0;
                        fVar.f5135n = 0;
                        fVar.f5136o = 0;
                        fVar.f5137p = 0;
                        fVar.f(i106, gVar.I, gVar.J, gVar.K, gVar.L, gVar.f5144w0, gVar.s0, gVar.f5145x0, gVar.f5141t0, i51);
                    }
                    for (int i107 = 0; i107 < i52; i107++) {
                        fVar.a(dVarArr3[i107]);
                    }
                    c7 = 0;
                    iArr[0] = fVar.d();
                    c10 = 1;
                    iArr[1] = fVar.c();
                }
                int i108 = iArr[c7] + i20 + i19;
                int i109 = iArr[c10] + i18 + i17;
                i25 = i21;
                if (i25 == 1073741824) {
                    i26 = i23;
                    iMin = i22;
                } else {
                    if (i25 == Integer.MIN_VALUE) {
                        iMin = Math.min(i108, i22);
                    } else if (i25 == 0) {
                        iMin = i108;
                    } else {
                        i26 = i23;
                        iMin = 0;
                    }
                    i26 = i23;
                }
                int iMin2 = i26 == 1073741824 ? i24 : i26 == Integer.MIN_VALUE ? Math.min(i109, i24) : i26 == 0 ? i109 : 0;
                gVar.f5147z0 = iMin;
                gVar.A0 = iMin2;
                gVar.O(iMin);
                gVar.L(iMin2);
                gVar.f5146y0 = gVar.f5154r0 > 0;
            }
            c7 = 0;
            c10 = 1;
            int i1082 = iArr[c7] + i20 + i19;
            int i1092 = iArr[c10] + i18 + i17;
            i25 = i21;
            if (i25 == 1073741824) {
            }
            if (i26 == 1073741824) {
            }
            gVar.f5147z0 = iMin;
            gVar.A0 = iMin2;
            gVar.O(iMin);
            gVar.L(iMin2);
            gVar.f5146y0 = gVar.f5154r0 > 0;
        } else {
            d dVar15 = gVar.T;
            i0.f fVar12 = dVar15 != null ? ((e) dVar15).f5117u0 : null;
            if (fVar12 == null) {
                gVar.f5147z0 = 0;
                gVar.A0 = 0;
                gVar.f5146y0 = false;
            } else {
                for (int i110 = 0; i110 < gVar.f5154r0; i110++) {
                    d dVar16 = gVar.f5153q0[i110];
                    if (dVar16 != null && !(dVar16 instanceof h)) {
                        int iJ = dVar16.j(0);
                        int iJ2 = dVar16.j(1);
                        if (iJ != 3 || dVar16.r == 1 || iJ2 != 3 || dVar16.f5107s == 1) {
                            if (iJ == 3) {
                                iJ = 2;
                            }
                            if (iJ2 == 3) {
                                iJ2 = 2;
                            }
                            b bVar = gVar.B0;
                            bVar.f5928a = iJ;
                            bVar.f5929b = iJ2;
                            bVar.f5930c = dVar16.q();
                            bVar.f5931d = dVar16.k();
                            fVar12.b(dVar16, bVar);
                            dVar16.O(bVar.f5932e);
                            dVar16.L(bVar.f5933f);
                            dVar16.I(bVar.f5934g);
                        }
                    }
                }
                int i442 = gVar.f5144w0;
                int i452 = gVar.f5145x0;
                int i462 = gVar.s0;
                int i472 = gVar.f5141t0;
                int[] iArr42 = new int[2];
                int i482 = (size - i442) - i452;
                i12 = gVar.V0;
                if (i12 == 1) {
                }
                if (i12 != 0) {
                }
                d[] dVarArr22 = gVar.f5153q0;
                i13 = 0;
                i14 = 0;
                while (true) {
                    i15 = gVar.f5154r0;
                    if (i13 < i15) {
                    }
                    i13++;
                }
                if (i14 > 0) {
                }
                int i512 = i482;
                int[] iArr62 = iArr42;
                d[] dVarArr32 = dVarArr22;
                int i522 = i15;
                gVar.f5139a1 = dVarArr32;
                gVar.f5140b1 = i522;
                i16 = gVar.T0;
                ArrayList arrayList32 = gVar.W0;
                if (i16 == 0) {
                }
                c7 = 0;
                c10 = 1;
                int i10822 = iArr[c7] + i20 + i19;
                int i10922 = iArr[c10] + i18 + i17;
                i25 = i21;
                if (i25 == 1073741824) {
                }
                if (i26 == 1073741824) {
                }
                gVar.f5147z0 = iMin;
                gVar.A0 = iMin2;
                gVar.O(iMin);
                gVar.L(iMin2);
                gVar.f5146y0 = gVar.f5154r0 > 0;
            }
        }
        setMeasuredDimension(gVar.f5147z0, gVar.A0);
    }

    @Override // i0.c, android.view.View
    public final void onMeasure(int i10, int i11) {
        j(this.f1014j, i10, i11);
    }

    public void setFirstHorizontalBias(float f10) {
        this.f1014j.L0 = f10;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i10) {
        this.f1014j.F0 = i10;
        requestLayout();
    }

    public void setFirstVerticalBias(float f10) {
        this.f1014j.M0 = f10;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i10) {
        this.f1014j.G0 = i10;
        requestLayout();
    }

    public void setHorizontalAlign(int i10) {
        this.f1014j.R0 = i10;
        requestLayout();
    }

    public void setHorizontalBias(float f10) {
        this.f1014j.J0 = f10;
        requestLayout();
    }

    public void setHorizontalGap(int i10) {
        this.f1014j.P0 = i10;
        requestLayout();
    }

    public void setHorizontalStyle(int i10) {
        this.f1014j.D0 = i10;
        requestLayout();
    }

    public void setLastHorizontalBias(float f10) {
        this.f1014j.N0 = f10;
        requestLayout();
    }

    public void setLastHorizontalStyle(int i10) {
        this.f1014j.H0 = i10;
        requestLayout();
    }

    public void setLastVerticalBias(float f10) {
        this.f1014j.O0 = f10;
        requestLayout();
    }

    public void setLastVerticalStyle(int i10) {
        this.f1014j.I0 = i10;
        requestLayout();
    }

    public void setMaxElementsWrap(int i10) {
        this.f1014j.U0 = i10;
        requestLayout();
    }

    public void setOrientation(int i10) {
        this.f1014j.V0 = i10;
        requestLayout();
    }

    public void setPadding(int i10) {
        g gVar = this.f1014j;
        gVar.s0 = i10;
        gVar.f5141t0 = i10;
        gVar.f5142u0 = i10;
        gVar.f5143v0 = i10;
        requestLayout();
    }

    public void setPaddingBottom(int i10) {
        this.f1014j.f5141t0 = i10;
        requestLayout();
    }

    public void setPaddingLeft(int i10) {
        this.f1014j.f5144w0 = i10;
        requestLayout();
    }

    public void setPaddingRight(int i10) {
        this.f1014j.f5145x0 = i10;
        requestLayout();
    }

    public void setPaddingTop(int i10) {
        this.f1014j.s0 = i10;
        requestLayout();
    }

    public void setVerticalAlign(int i10) {
        this.f1014j.S0 = i10;
        requestLayout();
    }

    public void setVerticalBias(float f10) {
        this.f1014j.K0 = f10;
        requestLayout();
    }

    public void setVerticalGap(int i10) {
        this.f1014j.Q0 = i10;
        requestLayout();
    }

    public void setVerticalStyle(int i10) {
        this.f1014j.E0 = i10;
        requestLayout();
    }

    public void setWrapMode(int i10) {
        this.f1014j.T0 = i10;
        requestLayout();
    }
}

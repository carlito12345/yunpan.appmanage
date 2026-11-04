package eb;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class f implements m {

    /* renamed from: a, reason: collision with root package name */
    public n f4839a = new n();

    /* renamed from: b, reason: collision with root package name */
    public float f4840b = 0.0f;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f4841c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f4842d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ob.a f4843e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ o f4844f;

    public f(o oVar, ArrayList arrayList, int i10, ob.a aVar) {
        this.f4844f = oVar;
        this.f4841c = arrayList;
        this.f4842d = i10;
        this.f4843e = aVar;
    }

    @Override // eb.m
    public final boolean a(ArrayList arrayList, boolean z, j jVar) {
        Iterator it;
        int i10;
        boolean z4;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            wb.i iVar = (wb.i) it2.next();
            iVar.getClass();
            o oVar = this.f4844f;
            float[] fArrF = sb.h.f(iVar.f17802b - iVar.f17801a);
            int i11 = iVar.f17801a;
            int i12 = iVar.f17802b;
            boolean z10 = iVar.f17803c;
            float f10 = oVar.f4889j.f4893a * oVar.f4890k.f4828a;
            int i13 = i11;
            int i14 = i13;
            float fB = 0.0f;
            while (i14 <= i12) {
                if (i14 == i12 || oVar.f4883d.charAt(i14) == '\t') {
                    if (i14 > i13) {
                        it = it2;
                        i10 = i14;
                        z4 = z10;
                        fB += oVar.f4890k.b(oVar.f4883d, i13, i14 - i13, i11, i12 - i11, z10, fArrF, i13 - i11);
                    } else {
                        it = it2;
                        i10 = i14;
                        z4 = z10;
                    }
                    if (i10 < i12) {
                        fB += f10;
                        fArrF[i10 - i11] = f10;
                    }
                    i13 = i10 + 1;
                } else {
                    it = it2;
                    i10 = i14;
                    z4 = z10;
                }
                i14 = i10 + 1;
                it2 = it;
                z10 = z4;
            }
            Iterator it3 = it2;
            float f11 = this.f4840b;
            float f12 = f11 + fB;
            float f13 = this.f4842d;
            if (f12 < f13) {
                n nVar = this.f4839a;
                boolean z11 = nVar.f4875a;
                if (z11) {
                    int i15 = iVar.f17801a;
                    int i16 = iVar.f17802b;
                    nVar.f4875a = false;
                    nVar.f4876b = i15;
                    nVar.f4877c = i16;
                } else {
                    int i17 = iVar.f17802b;
                    if (z11) {
                        throw new IllegalStateException();
                    }
                    nVar.f4877c = i17;
                }
                this.f4840b = f11 + fB;
                sb.h.i(fArrF);
            } else {
                int i18 = iVar.f17802b - iVar.f17801a;
                int i19 = 0;
                while (i19 < i18) {
                    int i20 = (int) (f13 - this.f4840b);
                    int i21 = i19;
                    float f14 = 0.0f;
                    while (i21 < i18) {
                        float f15 = fArrF[i21];
                        if (f15 != 0.0f) {
                            f14 += f15;
                            if (f14 > i20) {
                                break;
                            }
                        }
                        i21++;
                    }
                    if (i21 == i19) {
                        if (this.f4839a.f4875a) {
                            i21++;
                        } else {
                            b();
                        }
                    }
                    int i22 = iVar.f17801a;
                    int iA = this.f4843e.a(i22 + i19, i22 + i21) - iVar.f17801a;
                    float f16 = 0.0f;
                    for (int i23 = i19; i23 < iA; i23++) {
                        f16 += fArrF[i23];
                    }
                    n nVar2 = this.f4839a;
                    boolean z12 = nVar2.f4875a;
                    if (z12) {
                        int i24 = iVar.f17801a;
                        nVar2.f4875a = false;
                        nVar2.f4876b = i19 + i24;
                        nVar2.f4877c = i24 + iA;
                    } else {
                        int i25 = iVar.f17801a + iA;
                        if (z12) {
                            throw new IllegalStateException();
                        }
                        nVar2.f4877c = i25;
                    }
                    this.f4840b += f16;
                    if (i21 != iA) {
                        b();
                    }
                    i19 = iA;
                }
                sb.h.i(fArrF);
            }
            it2 = it3;
        }
        return true;
    }

    public final void b() {
        n nVar = this.f4839a;
        nVar.f4878d = this.f4840b;
        this.f4841c.add(nVar);
        this.f4840b = 0.0f;
        this.f4839a = new n();
    }
}

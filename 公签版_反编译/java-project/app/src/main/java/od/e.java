package od;

import ad.j;
import java.util.EnumSet;
import java.util.LinkedList;
import vc.i;

/* loaded from: classes.dex */
public final class e extends id.c implements j {
    public final byte[] A;
    public final int B;
    public final b[] C;

    /* renamed from: y, reason: collision with root package name */
    public final int[] f11770y;
    public final int z;

    public e(vc.f fVar, int i10) {
        i iVar;
        super(fVar, 0);
        this.A = new byte[16];
        this.B = i10;
        wc.a aVar = (wc.a) fVar;
        if (!aVar.M) {
            this.z |= 1;
        }
        boolean z = aVar.f17842j;
        if (z && (iVar = aVar.f17857r0) != null && iVar.a(i.f16789f)) {
            this.z |= 64;
        }
        i iVar2 = i.f16787d;
        i iVar3 = aVar.f17856q0;
        iVar2 = iVar2.a(iVar3) ? iVar2 : iVar3;
        i iVar4 = aVar.f17857r0;
        EnumSet<i> enumSetNoneOf = EnumSet.noneOf(i.class);
        for (i iVar5 : i.values()) {
            if (iVar5.a(iVar2) && (iVar4 == null || iVar5.ordinal() <= iVar4.ordinal())) {
                enumSetNoneOf.add(iVar5);
            }
        }
        this.f11770y = new int[enumSetNoneOf.size()];
        int i11 = 0;
        for (i iVar6 : enumSetNoneOf) {
            int[] iArr = this.f11770y;
            if (!iVar6.f16792a) {
                throw new UnsupportedOperationException();
            }
            iArr[i11] = iVar6.f16793b;
            i11++;
        }
        if (aVar.f17857r0.a(i.f16788e)) {
            byte[] bArr = aVar.f17862u0;
            byte[] bArr2 = this.A;
            System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        }
        LinkedList linkedList = new LinkedList();
        i iVar7 = aVar.f17857r0;
        if (iVar7 != null && iVar7.a(i.f16790g)) {
            byte[] bArr3 = new byte[32];
            aVar.f17828c.nextBytes(bArr3);
            linkedList.add(new d(new int[]{1}, bArr3));
            if (z) {
                linkedList.add(new a(new int[]{2, 1}));
            }
        }
        this.C = (b[]) linkedList.toArray(new b[linkedList.size()]);
    }

    @Override // ad.j
    public final boolean d() {
        return (this.B & 2) != 0;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        rd.a.e(36L, bArr, i10);
        int[] iArr = this.f11770y;
        rd.a.e(iArr.length, bArr, i10 + 2);
        rd.a.e(this.B, bArr, i10 + 4);
        rd.a.e(0L, bArr, i10 + 6);
        rd.a.f(this.z, bArr, i10 + 8);
        System.arraycopy(this.A, 0, bArr, i10 + 12, 16);
        int i11 = i10 + 28;
        b[] bVarArr = this.C;
        if (bVarArr == null || bVarArr.length == 0) {
            rd.a.g(0L, bArr, i11);
            i11 = 0;
        } else {
            rd.a.e(bVarArr.length, bArr, i10 + 32);
            rd.a.e(0L, bArr, i10 + 34);
        }
        int i12 = i10 + 36;
        for (int i13 : iArr) {
            rd.a.e(i13, bArr, i12);
            i12 += 2;
        }
        int iK0 = k0(i12) + i12;
        if (bVarArr != null && bVarArr.length != 0) {
            rd.a.f(iK0 - this.f8658d, bArr, i11);
            for (b bVar : bVarArr) {
                rd.a.e(bVar.a(), bArr, iK0);
                int i14 = iK0 + 2;
                rd.a.f(0L, bArr, iK0 + 4);
                int i15 = iK0 + 8;
                int iO0 = id.b.o0(bVar.c(i15, bArr), 0);
                rd.a.e(iO0, bArr, i14);
                iK0 = i15 + iO0;
            }
        }
        return iK0 - i10;
    }

    @Override // id.c
    public final id.d q0(vc.b bVar) {
        return new f(bVar.e());
    }

    @Override // ad.c
    public final int size() {
        int iO0 = id.b.o0(this.f11770y.length * 2, 4) + 100;
        b[] bVarArr = this.C;
        if (bVarArr != null) {
            for (b bVar : bVarArr) {
                iO0 += id.b.o0(bVar.size(), 0) + 8;
            }
        }
        return id.b.o0(iO0, 0);
    }
}

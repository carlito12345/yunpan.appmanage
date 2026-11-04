package bd;

import java.util.Arrays;
import vc.g;

/* loaded from: classes.dex */
public final class d implements g {

    /* renamed from: a, reason: collision with root package name */
    public int f2780a;

    /* renamed from: b, reason: collision with root package name */
    public int f2781b;

    /* renamed from: c, reason: collision with root package name */
    public int f2782c;

    /* renamed from: d, reason: collision with root package name */
    public e[] f2783d;

    @Override // vc.g
    public final int i(int i10, int i11, byte[] bArr) {
        this.f2780a = rd.a.a(i10, bArr) / 2;
        this.f2781b = rd.a.a(i10 + 2, bArr);
        this.f2782c = rd.a.a(i10 + 4, bArr);
        int i12 = i10 + 8;
        this.f2783d = new e[this.f2781b];
        for (int i13 = 0; i13 < this.f2781b; i13++) {
            e[] eVarArr = this.f2783d;
            e eVar = new e(0);
            eVarArr[i13] = eVar;
            i12 += eVar.i(i12, i11, bArr);
        }
        return i12 - i10;
    }

    public final String toString() {
        return "pathConsumed=" + this.f2780a + ",numReferrals=" + this.f2781b + ",flags=" + this.f2782c + ",referrals=" + Arrays.toString(this.f2783d);
    }
}

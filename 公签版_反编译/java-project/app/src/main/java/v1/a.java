package v1;

import j$.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import r1.a0;
import r1.c0;
import u1.f0;

/* loaded from: classes.dex */
public final class a implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f16323a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f16324b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16325c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16326d;

    public a(String str, byte[] bArr, int i10, int i11) {
        boolean z;
        byte b10;
        str.getClass();
        switch (str) {
            case "com.android.capture.fps":
                a9.o.k(i11 == 23 && bArr.length == 4);
                break;
            case "auxiliary.tracks.interleaved":
                if (i11 != 75 || bArr.length != 1 || ((b10 = bArr[0]) != 0 && b10 != 1)) {
                    z = false;
                }
                a9.o.k(z);
                break;
            case "auxiliary.tracks.length":
            case "auxiliary.tracks.offset":
                a9.o.k(i11 == 78 && bArr.length == 8);
                break;
            case "auxiliary.tracks.map":
                a9.o.k(i11 == 0);
                break;
        }
        this.f16323a = str;
        this.f16324b = bArr;
        this.f16325c = i10;
        this.f16326d = i11;
    }

    @Override // r1.c0
    public final /* synthetic */ r1.p a() {
        return null;
    }

    @Override // r1.c0
    public final /* synthetic */ void b(a0 a0Var) {
    }

    @Override // r1.c0
    public final /* synthetic */ byte[] c() {
        return null;
    }

    public final ArrayList d() {
        a9.o.s("Metadata is not an auxiliary tracks map", this.f16323a.equals("auxiliary.tracks.map"));
        byte[] bArr = this.f16324b;
        byte b10 = bArr[1];
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < b10; i10++) {
            arrayList.add(Integer.valueOf(bArr[i10 + 2]));
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f16323a.equals(aVar.f16323a) && Arrays.equals(this.f16324b, aVar.f16324b) && this.f16325c == aVar.f16325c && this.f16326d == aVar.f16326d;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f16324b) + org.bouncycastle.jcajce.provider.digest.a.c(527, 31, this.f16323a)) * 31) + this.f16325c) * 31) + this.f16326d;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00aa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        String string;
        String str = this.f16323a;
        byte[] bArr = this.f16324b;
        int i10 = this.f16326d;
        if (i10 != 0) {
            if (i10 == 1) {
                String str2 = f0.f15206a;
                string = new String(bArr, StandardCharsets.UTF_8);
            } else if (i10 == 23) {
                a9.o.g("array too small: %s < %s", bArr.length, 4, bArr.length >= 4);
                string = String.valueOf(Float.intBitsToFloat(d.b.t(bArr[0], bArr[1], bArr[2], bArr[3])));
            } else if (i10 == 67) {
                a9.o.g("array too small: %s < %s", bArr.length, 4, bArr.length >= 4);
                string = String.valueOf(d.b.t(bArr[0], bArr[1], bArr[2], bArr[3]));
            } else if (i10 == 75) {
                string = String.valueOf(bArr[0] & 255);
            } else if (i10 != 78) {
                String str3 = f0.f15206a;
                string = v7.e.f16646d.f().c(bArr);
            } else {
                string = String.valueOf(new u1.q(bArr).H());
            }
        } else if (str.equals("auxiliary.tracks.map")) {
            ArrayList arrayListD = d();
            StringBuilder sbM = g.b.m("track types = ");
            new bd.c(String.valueOf(',')).d(sbM, arrayListD.iterator());
            string = sbM.toString();
        }
        return ta.q.k("mdta: key=", str, ", value=", string);
    }
}

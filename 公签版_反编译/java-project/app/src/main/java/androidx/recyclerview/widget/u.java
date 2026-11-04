package androidx.recyclerview.widget;

import java.io.IOException;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2284a;

    /* renamed from: b, reason: collision with root package name */
    public int f2285b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2286c;

    /* renamed from: d, reason: collision with root package name */
    public int f2287d;

    /* renamed from: e, reason: collision with root package name */
    public final Serializable f2288e;

    /* renamed from: f, reason: collision with root package name */
    public Object f2289f;

    /* renamed from: g, reason: collision with root package name */
    public Object f2290g;

    /* renamed from: h, reason: collision with root package name */
    public final Object f2291h;

    public u(ce.p pVar, boolean z) {
        this.f2284a = 1;
        this.f2286c = false;
        this.f2289f = null;
        this.f2290g = null;
        this.f2287d = 1;
        this.f2288e = pVar;
        int i10 = this.f2285b;
        this.f2285b = 537395204 | i10;
        if (z) {
            this.f2285b = i10 | 1611169812;
        }
        int i11 = be.b.f2798f;
        this.f2291h = de.d.r();
    }

    public static v a(ArrayDeque arrayDeque, int i10, boolean z) {
        v vVar;
        Iterator it = arrayDeque.iterator();
        while (true) {
            if (!it.hasNext()) {
                vVar = null;
                break;
            }
            vVar = (v) it.next();
            if (vVar.f2317a == i10 && vVar.f2319c == z) {
                it.remove();
                break;
            }
        }
        while (it.hasNext()) {
            v vVar2 = (v) it.next();
            if (z) {
                vVar2.f2318b--;
            } else {
                vVar2.f2318b++;
            }
        }
        return vVar;
    }

    public byte[] b(byte[] bArr) throws ce.r0, UnsupportedEncodingException {
        int i10;
        boolean z;
        int i11;
        int i12 = this.f2287d;
        ce.p pVar = (ce.p) this.f2288e;
        de.d dVar = (de.d) this.f2291h;
        if (i12 != 1) {
            if (i12 != 2) {
                throw new ce.r0("Invalid state");
            }
            try {
                be.c cVar = new be.c(bArr);
                if (de.d.f4630b >= 4) {
                    dVar.getClass();
                    if (de.d.f4630b >= 6) {
                        de.c.a(dVar, bArr, 0, bArr.length);
                    }
                }
                this.f2289f = cVar.f2802d;
                this.f2285b &= cVar.f2797a;
                String str = pVar.f3107c;
                String str2 = pVar.f3105a;
                String str3 = pVar.f3106b;
                int i13 = be.b.f2798f;
                be.d dVar2 = new be.d(cVar, str, str2, str3, this.f2285b);
                byte[] bArrF = dVar2.f();
                if (de.d.f4630b >= 4) {
                    dVar.getClass();
                    if (de.d.f4630b >= 6) {
                        de.c.a(dVar, bArrF, 0, bArrF.length);
                    }
                }
                if ((this.f2285b & 16) != 0) {
                    this.f2290g = dVar2.f2813i;
                }
                this.f2286c = true;
                this.f2287d++;
                return bArrF;
            } catch (Exception e7) {
                throw new ce.r0(e7.getMessage(), e7);
            }
        }
        int i14 = this.f2285b;
        String str4 = pVar.f3105a;
        int i15 = be.b.f2798f;
        be.b bVar = new be.b(i14, str4);
        try {
            String str5 = bVar.f2800d;
            String str6 = bVar.f2801e;
            int i16 = bVar.f2797a;
            byte[] bytes = new byte[0];
            String str7 = be.a.f2796c;
            if (str5 == null || str5.length() == 0) {
                i10 = i16 & (-4097);
                z = false;
            } else {
                i10 = i16 | 4096;
                bytes = str5.toUpperCase().getBytes(str7);
                z = true;
            }
            byte[] bytes2 = new byte[0];
            if (str6 == null || str6.length() == 0) {
                i11 = i10 & (-8193);
            } else {
                i11 = i10 | 8192;
                bytes2 = str6.toUpperCase().getBytes(str7);
                z = true;
            }
            int length = z ? bytes.length + 32 + bytes2.length : 16;
            byte[] bArr2 = new byte[length];
            System.arraycopy(be.a.f2795b, 0, bArr2, 0, 8);
            be.a.d(8, 1, bArr2);
            be.a.d(12, i11, bArr2);
            if (z) {
                be.a.c(16, 32, bArr2, bytes);
                be.a.c(24, bytes.length + 32, bArr2, bytes2);
            }
            if (de.d.f4630b >= 4) {
                dVar.getClass();
                if (de.d.f4630b >= 6) {
                    de.c.a(dVar, bArr2, 0, length);
                }
            }
            this.f2287d++;
            return bArr2;
        } catch (IOException e10) {
            throw new IllegalStateException(e10.getMessage());
        }
    }

    public String toString() {
        String string;
        String string2;
        switch (this.f2284a) {
            case 1:
                StringBuilder sb2 = new StringBuilder("NtlmContext[auth=");
                sb2.append((ce.p) this.f2288e);
                sb2.append(",ntlmsspFlags=0x");
                android.support.v4.media.session.a.y(this.f2285b, 8, ",workstation=", sb2);
                sb2.append(be.b.f2799g);
                sb2.append(",isEstablished=");
                sb2.append(this.f2286c);
                sb2.append(",state=");
                String strS = android.support.v4.media.session.a.s(sb2, this.f2287d, ",serverChallenge=");
                if (((byte[]) this.f2289f) == null) {
                    string = g.b.j(strS, "null");
                } else {
                    StringBuilder sbM = g.b.m(strS);
                    byte[] bArr = (byte[]) this.f2289f;
                    sbM.append(de.c.d(bArr.length * 2, bArr));
                    string = sbM.toString();
                }
                String strJ = g.b.j(string, ",signingKey=");
                if (((byte[]) this.f2290g) == null) {
                    string2 = g.b.j(strJ, "null");
                } else {
                    StringBuilder sbM2 = g.b.m(strJ);
                    byte[] bArr2 = (byte[]) this.f2290g;
                    sbM2.append(de.c.d(bArr2.length * 2, bArr2));
                    string2 = sbM2.toString();
                }
                return g.b.j(string2, "]");
            default:
                return super.toString();
        }
    }

    public u(c cVar, ArrayList arrayList, int[] iArr, int[] iArr2) {
        int[] iArr3;
        int[] iArr4;
        c cVar2;
        int i10;
        t tVar;
        int i11;
        this.f2284a = 0;
        this.f2288e = arrayList;
        this.f2289f = iArr;
        this.f2290g = iArr2;
        Arrays.fill(iArr, 0);
        Arrays.fill(iArr2, 0);
        this.f2291h = cVar;
        androidx.fragment.app.u1 u1Var = (androidx.fragment.app.u1) cVar.f2050a;
        int size = u1Var.f1407c.size();
        this.f2285b = size;
        int size2 = u1Var.f1408d.size();
        this.f2287d = size2;
        this.f2286c = true;
        t tVar2 = arrayList.isEmpty() ? null : (t) arrayList.get(0);
        if (tVar2 == null || tVar2.f2275a != 0 || tVar2.f2276b != 0) {
            arrayList.add(0, new t(0, 0, 0));
        }
        arrayList.add(new t(size, size2, 0));
        Iterator it = arrayList.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            iArr3 = (int[]) this.f2290g;
            iArr4 = (int[]) this.f2289f;
            cVar2 = (c) this.f2291h;
            if (!zHasNext) {
                break;
            }
            t tVar3 = (t) it.next();
            for (int i12 = 0; i12 < tVar3.f2277c; i12++) {
                int i13 = tVar3.f2275a + i12;
                int i14 = tVar3.f2276b + i12;
                int i15 = cVar2.a(i13, i14) ? 1 : 2;
                iArr4[i13] = (i14 << 4) | i15;
                iArr3[i14] = (i13 << 4) | i15;
            }
        }
        if (this.f2286c) {
            Iterator it2 = arrayList.iterator();
            int i16 = 0;
            while (it2.hasNext()) {
                t tVar4 = (t) it2.next();
                while (true) {
                    i10 = tVar4.f2275a;
                    if (i16 < i10) {
                        if (iArr4[i16] == 0) {
                            int size3 = arrayList.size();
                            int i17 = 0;
                            int i18 = 0;
                            while (true) {
                                if (i17 < size3) {
                                    tVar = (t) arrayList.get(i17);
                                    while (true) {
                                        i11 = tVar.f2276b;
                                        if (i18 < i11) {
                                            if (iArr3[i18] == 0 && cVar2.b(i16, i18)) {
                                                int i19 = cVar2.a(i16, i18) ? 8 : 4;
                                                iArr4[i16] = (i18 << 4) | i19;
                                                iArr3[i18] = i19 | (i16 << 4);
                                            } else {
                                                i18++;
                                            }
                                        }
                                    }
                                }
                                i18 = tVar.f2277c + i11;
                                i17++;
                            }
                        }
                        i16++;
                    }
                }
                i16 = tVar4.f2277c + i10;
            }
        }
    }
}

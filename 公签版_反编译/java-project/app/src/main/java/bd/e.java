package bd;

import androidx.fragment.app.b0;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.locks.ReentrantLock;
import vc.g;

/* loaded from: classes.dex */
public final class e implements g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2784a;

    /* renamed from: b, reason: collision with root package name */
    public int f2785b;

    /* renamed from: c, reason: collision with root package name */
    public int f2786c;

    /* renamed from: d, reason: collision with root package name */
    public int f2787d;

    /* renamed from: e, reason: collision with root package name */
    public int f2788e;

    /* renamed from: f, reason: collision with root package name */
    public int f2789f;

    /* renamed from: g, reason: collision with root package name */
    public int f2790g;

    /* renamed from: h, reason: collision with root package name */
    public Serializable f2791h;

    /* renamed from: i, reason: collision with root package name */
    public Serializable f2792i;

    /* renamed from: j, reason: collision with root package name */
    public Serializable f2793j;

    /* renamed from: k, reason: collision with root package name */
    public Object f2794k;
    public Object l;

    public e(int i10) {
        this.f2784a = i10;
        switch (i10) {
            case 1:
                this.f2791h = new ReentrantLock();
                this.f2792i = new ArrayList();
                this.f2785b = 1000;
                this.f2786c = 0;
                this.f2787d = 0;
                this.f2794k = new sb.a(this);
                this.f2793j = new ArrayList(10);
                break;
            default:
                this.f2792i = null;
                this.f2793j = null;
                this.f2794k = null;
                this.l = new String[0];
                break;
        }
    }

    public static String e(int i10, int i11, byte[] bArr) {
        if (i10 % 2 != 0) {
            i10++;
        }
        return new String(bArr, i10, ge.b.b(i10, i11, bArr), ge.b.f6136b);
    }

    public void b(int i10, int i11) {
        int i12;
        sb.a aVar;
        if (i10 < 0 || i10 > this.f2786c) {
            StringBuilder sbN = g.b.n("index = ", i10, ", length = ");
            sbN.append(this.f2786c);
            throw new ArrayIndexOutOfBoundsException(sbN.toString());
        }
        c(i10);
        int i13 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.f2793j;
            if (i13 >= arrayList.size()) {
                break;
            }
            if (((sb.b) arrayList.get(i13)).f14468b >= i10) {
                arrayList.remove(i13);
                i13--;
            }
            i13++;
        }
        sb.a aVar2 = (sb.a) this.l;
        int i14 = this.f2788e;
        while (true) {
            i12 = aVar2.f14463b;
            if (i14 <= i12 || (aVar = aVar2.f14465d) == null) {
                break;
            }
            i14 -= i12;
            aVar2 = aVar;
        }
        int[] iArr = aVar2.f14462a;
        System.arraycopy(iArr, i14, iArr, i14 + 1, i12 - i14);
        iArr[i14] = i11;
        int i15 = aVar2.f14463b + 1;
        aVar2.f14463b = i15;
        if (i11 > aVar2.f14464c) {
            aVar2.f14464c = i11;
        }
        this.f2786c++;
        if (i15 > this.f2785b) {
            sb.a aVar3 = aVar2.f14465d;
            e eVar = aVar2.f14466e;
            ArrayList arrayList2 = (ArrayList) eVar.f2792i;
            sb.a aVar4 = arrayList2.isEmpty() ? new sb.a(eVar) : (sb.a) arrayList2.remove(arrayList2.size() - 1);
            int i16 = (eVar.f2785b * 3) / 4;
            System.arraycopy(iArr, i16, aVar4.f14462a, 0, aVar2.f14463b - i16);
            aVar4.f14463b = aVar2.f14463b - i16;
            aVar2.f14463b = i16;
            aVar2.f14465d = aVar4;
            aVar4.f14465d = aVar3;
            aVar2.a();
            aVar4.a();
        }
        this.f2787d++;
    }

    public void c(int i10) {
        ArrayList arrayList;
        sb.a aVar;
        int i11;
        sb.a aVar2 = (sb.a) this.f2794k;
        int i12 = 0;
        int i13 = i10;
        int i14 = 0;
        int i15 = -1;
        while (true) {
            arrayList = (ArrayList) this.f2793j;
            if (i14 >= arrayList.size()) {
                break;
            }
            sb.b bVar = (sb.b) arrayList.get(i14);
            int i16 = bVar.f14468b;
            if (i16 < i10 && (i11 = i10 - i16) < i13) {
                aVar2 = bVar.f14467a;
                i15 = i14;
                i13 = i11;
            }
            i14++;
        }
        if (i15 != -1) {
            Collections.swap(arrayList, 0, i15);
        }
        while (true) {
            int i17 = aVar2.f14463b;
            if (i13 < i17 || (aVar = aVar2.f14465d) == null) {
                break;
            }
            i13 -= i17;
            i12++;
            aVar2 = aVar;
        }
        if (i12 >= 30) {
            sb.b bVar2 = new sb.b();
            bVar2.f14468b = i10 - i13;
            bVar2.f14467a = aVar2;
            arrayList.add(bVar2);
        }
        if (arrayList.size() > 8) {
            arrayList.remove(arrayList.size() - 1);
        }
        this.f2788e = i13;
        this.l = aVar2;
    }

    public int d(int i10) {
        if (i10 < 0 || i10 >= this.f2786c) {
            StringBuilder sbN = g.b.n("index = ", i10, ", length = ");
            sbN.append(this.f2786c);
            throw new ArrayIndexOutOfBoundsException(sbN.toString());
        }
        c(i10);
        sb.a aVar = (sb.a) this.l;
        return aVar.f14462a[this.f2788e];
    }

    public void f(int i10, int i11) {
        if (i11 > this.f2786c || i10 < 0 || i10 > i11) {
            throw new IndexOutOfBoundsException();
        }
        sb.a aVar = (sb.a) this.f2794k;
        sb.a aVar2 = null;
        while (true) {
            int i12 = aVar.f14463b;
            if (i10 < i12) {
                break;
            }
            i10 -= i12;
            i11 -= i12;
            aVar2 = aVar;
            aVar = aVar.f14465d;
        }
        int i13 = i11 - i10;
        int i14 = i13;
        while (i14 > 0) {
            if (i10 != 0 || i14 < aVar.f14463b) {
                int iMin = Math.min(aVar.f14463b, i14);
                int i15 = aVar.f14463b - iMin;
                int[] iArr = aVar.f14462a;
                System.arraycopy(iArr, iMin, iArr, 0, i15);
                aVar.f14463b -= iMin;
                aVar.a();
                i14 -= iMin;
                aVar2 = aVar;
                aVar = aVar.f14465d;
                i10 = 0;
            } else {
                if (aVar2 != null) {
                    aVar2.f14465d = aVar.f14465d;
                    ((ArrayList) this.f2792i).add(aVar);
                }
                i14 -= aVar.f14463b;
                aVar.f14463b = 0;
                aVar = aVar.f14465d;
            }
        }
        this.f2786c -= i13;
    }

    public void g(int i10, int i11) {
        if (i10 < 0 || i10 >= this.f2786c) {
            StringBuilder sbN = g.b.n("index = ", i10, ", length = ");
            sbN.append(this.f2786c);
            throw new ArrayIndexOutOfBoundsException(sbN.toString());
        }
        c(i10);
        sb.a aVar = (sb.a) this.l;
        int i12 = this.f2788e;
        int[] iArr = aVar.f14462a;
        int i13 = iArr[i12];
        iArr[i12] = i11;
        int i14 = aVar.f14464c;
        if (i13 == i14) {
            if (i11 >= i13) {
                aVar.f14464c = i11;
            } else {
                aVar.a();
            }
        } else if (i11 > i14) {
            aVar.f14464c = i11;
        }
        this.f2787d++;
    }

    @Override // vc.g
    public int i(int i10, int i11, byte[] bArr) {
        int iA = rd.a.a(i10, bArr);
        this.f2785b = iA;
        if (iA != 3 && iA != 1) {
            throw new b0(android.support.v4.media.session.a.s(new StringBuilder("Version "), this.f2785b, " referral not supported. Please report this to jcifs at samba dot org."), 10);
        }
        this.f2786c = rd.a.a(i10 + 2, bArr);
        this.f2787d = rd.a.a(i10 + 4, bArr);
        this.f2788e = rd.a.a(i10 + 6, bArr);
        int i12 = i10 + 8;
        int i13 = this.f2785b;
        if (i13 == 3) {
            this.f2789f = rd.a.a(i12, bArr);
            this.f2790g = rd.a.a(i10 + 10, bArr);
            int i14 = i10 + 12;
            if ((this.f2788e & 2) == 0) {
                int iA2 = rd.a.a(i14, bArr);
                int iA3 = rd.a.a(i10 + 14, bArr);
                int iA4 = rd.a.a(i10 + 16, bArr);
                if (iA2 > 0) {
                    this.f2792i = e(iA2 + i10, i11, bArr);
                }
                if (iA4 > 0) {
                    this.f2793j = e(iA4 + i10, i11, bArr);
                }
                if (iA3 > 0) {
                    this.f2791h = e(i10 + iA3, i11, bArr);
                }
            } else {
                int iA5 = rd.a.a(i14, bArr);
                int iA6 = rd.a.a(i10 + 14, bArr);
                int iA7 = rd.a.a(i10 + 16, bArr);
                if (iA5 > 0) {
                    this.f2794k = e(iA5 + i10, i11, bArr);
                }
                if (iA7 > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (int i15 = 0; i15 < iA6; i15++) {
                        String strE = e(i10 + iA7, i11, bArr);
                        arrayList.add(strE);
                        iA7 += (strE.length() * 2) + 2;
                    }
                    this.l = (String[]) arrayList.toArray(new String[arrayList.size()]);
                }
            }
        } else if (i13 == 1) {
            this.f2793j = e(i12, i11, bArr);
        }
        return this.f2786c;
    }

    public String toString() {
        switch (this.f2784a) {
            case 0:
                StringBuilder sb2 = new StringBuilder("Referral[version=");
                sb2.append(this.f2785b);
                sb2.append(",size=");
                sb2.append(this.f2786c);
                sb2.append(",serverType=");
                sb2.append(this.f2787d);
                sb2.append(",flags=");
                sb2.append(this.f2788e);
                sb2.append(",proximity=");
                sb2.append(this.f2789f);
                sb2.append(",ttl=");
                sb2.append(this.f2790g);
                sb2.append(",path=");
                sb2.append((String) this.f2792i);
                sb2.append(",altPath=");
                sb2.append((String) this.f2791h);
                sb2.append(",node=");
                return new String(g.b.l((String) this.f2793j, "]", sb2));
            default:
                return super.toString();
        }
    }
}

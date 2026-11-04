package ph;

import j$.util.Objects;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class c implements Iterable, Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public int f12706a = 0;

    /* renamed from: b, reason: collision with root package name */
    public String[] f12707b = new String[3];

    /* renamed from: c, reason: collision with root package name */
    public Object[] f12708c = new Object[3];

    public static boolean i(String str) {
        return str.length() > 1 && str.charAt(0) == '/';
    }

    public final void a(String str, Serializable serializable) {
        b(this.f12706a + 1);
        String[] strArr = this.f12707b;
        int i10 = this.f12706a;
        strArr[i10] = str;
        this.f12708c[i10] = serializable;
        this.f12706a = i10 + 1;
    }

    public final void b(int i10) {
        nh.b.V(i10 >= this.f12706a);
        String[] strArr = this.f12707b;
        int length = strArr.length;
        if (length >= i10) {
            return;
        }
        int i11 = length >= 3 ? this.f12706a * 2 : 3;
        if (i10 <= i11) {
            i10 = i11;
        }
        this.f12707b = (String[]) Arrays.copyOf(strArr, i10);
        this.f12708c = Arrays.copyOf(this.f12708c, i10);
    }

    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final c clone() {
        try {
            c cVar = (c) super.clone();
            cVar.f12706a = this.f12706a;
            cVar.f12707b = (String[]) Arrays.copyOf(this.f12707b, this.f12706a);
            cVar.f12708c = Arrays.copyOf(this.f12708c, this.f12706a);
            int iG = g("/jsoup.userdata");
            if (iG != -1) {
                this.f12708c[iG] = new HashMap((Map) this.f12708c[iG]);
            }
            return cVar;
        } catch (CloneNotSupportedException e7) {
            throw new RuntimeException(e7);
        }
    }

    public final String d(String str) {
        Object obj;
        int iG = g(str);
        return (iG == -1 || (obj = this.f12708c[iG]) == null) ? "" : (String) obj;
    }

    public final String e(String str) {
        Object obj;
        int iH = h(str);
        return (iH == -1 || (obj = this.f12708c[iH]) == null) ? "" : (String) obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f12706a != cVar.f12706a) {
            return false;
        }
        for (int i10 = 0; i10 < this.f12706a; i10++) {
            int iG = cVar.g(this.f12707b[i10]);
            if (iG == -1 || !Objects.equals(this.f12708c[i10], cVar.f12708c[iG])) {
                return false;
            }
        }
        return true;
    }

    public final void f(oh.a aVar, g gVar) {
        String strA;
        int i10 = this.f12706a;
        for (int i11 = 0; i11 < i10; i11++) {
            String str = this.f12707b[i11];
            if (!i(str) && (strA = a.a(gVar.f12714f, str)) != null) {
                a.b(strA, (String) this.f12708c[i11], aVar.a(' '), gVar);
            }
        }
    }

    public final int g(String str) {
        nh.b.d0(str);
        for (int i10 = 0; i10 < this.f12706a; i10++) {
            if (str.equals(this.f12707b[i10])) {
                return i10;
            }
        }
        return -1;
    }

    public final int h(String str) {
        nh.b.d0(str);
        for (int i10 = 0; i10 < this.f12706a; i10++) {
            if (str.equalsIgnoreCase(this.f12707b[i10])) {
                return i10;
            }
        }
        return -1;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f12708c) + (((this.f12706a * 31) + Arrays.hashCode(this.f12707b)) * 31);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new b(this);
    }

    public final void j(String str, String str2) {
        nh.b.d0(str);
        int iG = g(str);
        if (iG != -1) {
            this.f12708c[iG] = str2;
        } else {
            a(str, str2);
        }
    }

    public final void k(int i10) {
        int i11 = this.f12706a;
        if (i10 >= i11) {
            throw new nh.c("Must be false");
        }
        int i12 = (i11 - i10) - 1;
        if (i12 > 0) {
            String[] strArr = this.f12707b;
            int i13 = i10 + 1;
            System.arraycopy(strArr, i13, strArr, i10, i12);
            Object[] objArr = this.f12708c;
            System.arraycopy(objArr, i13, objArr, i10, i12);
        }
        int i14 = this.f12706a - 1;
        this.f12706a = i14;
        this.f12707b[i14] = null;
        this.f12708c[i14] = null;
    }

    public final Map l() {
        int iG = g("/jsoup.userdata");
        if (iG != -1) {
            return (Map) this.f12708c[iG];
        }
        HashMap map = new HashMap();
        a("/jsoup.userdata", map);
        return map;
    }

    public final String toString() {
        StringBuilder sbB = oh.f.b();
        f(oh.a.e(sbB), new g());
        return oh.f.l(sbB);
    }
}

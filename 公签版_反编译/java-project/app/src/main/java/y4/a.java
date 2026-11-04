package y4;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class a implements Comparable {

    /* renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap f18923e = new ConcurrentHashMap(10000, 0.75f);

    /* renamed from: a, reason: collision with root package name */
    public final String f18924a;

    /* renamed from: b, reason: collision with root package name */
    public final c f18925b;

    /* renamed from: c, reason: collision with root package name */
    public final b f18926c;

    /* renamed from: d, reason: collision with root package name */
    public b f18927d;

    public a(String str, c cVar, b bVar) {
        if (str == null) {
            throw new NullPointerException("descriptor == null");
        }
        if (cVar == null) {
            throw new NullPointerException("returnType == null");
        }
        this.f18924a = str;
        this.f18925b = cVar;
        this.f18926c = bVar;
        this.f18927d = null;
    }

    public static a b(String str) {
        int i10;
        a aVar = (a) f18923e.get(str);
        if (aVar != null) {
            return aVar;
        }
        int length = str.length();
        if (str.charAt(0) != '(') {
            throw new IllegalArgumentException("bad descriptor");
        }
        int i11 = 1;
        int i12 = 0;
        while (true) {
            if (i11 >= length) {
                i11 = 0;
                break;
            }
            char cCharAt = str.charAt(i11);
            if (cCharAt == ')') {
                break;
            }
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                i12++;
            }
            i11++;
        }
        if (i11 == 0 || i11 == length - 1) {
            throw new IllegalArgumentException("bad descriptor");
        }
        if (str.indexOf(41, i11 + 1) != -1) {
            throw new IllegalArgumentException("bad descriptor");
        }
        c[] cVarArr = new c[i12];
        int i13 = 1;
        int i14 = 0;
        while (true) {
            char cCharAt2 = str.charAt(i13);
            if (cCharAt2 == ')') {
                String strSubstring = str.substring(i13 + 1);
                ConcurrentHashMap concurrentHashMap = c.f18947f;
                try {
                    c cVarE = strSubstring.equals("V") ? c.f18955p : c.e(strSubstring);
                    b bVar = new b(i14);
                    for (int i15 = 0; i15 < i14; i15++) {
                        bVar.e(i15, cVarArr[i15]);
                    }
                    return new a(str, cVarE, bVar);
                } catch (NullPointerException unused) {
                    throw new NullPointerException("descriptor == null");
                }
            }
            int i16 = i13;
            while (cCharAt2 == '[') {
                i16++;
                cCharAt2 = str.charAt(i16);
            }
            if (cCharAt2 == 'L') {
                int iIndexOf = str.indexOf(59, i16);
                if (iIndexOf == -1) {
                    throw new IllegalArgumentException("bad descriptor");
                }
                i10 = iIndexOf + 1;
            } else {
                i10 = i16 + 1;
            }
            cVarArr[i14] = c.e(str.substring(i13, i10));
            i14++;
            i13 = i10;
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(a aVar) {
        if (this == aVar) {
            return 0;
        }
        int iCompareTo = this.f18925b.f18963a.compareTo(aVar.f18925b.f18963a);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        b bVar = this.f18926c;
        int length = bVar.f2559b.length;
        b bVar2 = aVar.f18926c;
        int length2 = bVar2.f2559b.length;
        int iMin = Math.min(length, length2);
        for (int i10 = 0; i10 < iMin; i10++) {
            int iCompareTo2 = ((c) bVar.d(i10)).f18963a.compareTo(((c) bVar2.d(i10)).f18963a);
            if (iCompareTo2 != 0) {
                return iCompareTo2;
            }
        }
        if (length < length2) {
            return -1;
        }
        return length > length2 ? 1 : 0;
    }

    public final b c() {
        if (this.f18927d == null) {
            b bVar = this.f18926c;
            int length = bVar.f2559b.length;
            b bVar2 = new b(length);
            boolean z = false;
            for (int i10 = 0; i10 < length; i10++) {
                c cVar = (c) bVar.d(i10);
                int i11 = cVar.f18964b;
                if (i11 == 1 || i11 == 2 || i11 == 3 || i11 == 6 || i11 == 8) {
                    cVar = c.l;
                    z = true;
                }
                bVar2.e(i10, cVar);
            }
            if (z) {
                bVar = bVar2;
            }
            this.f18927d = bVar;
        }
        return this.f18927d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        return this.f18924a.equals(((a) obj).f18924a);
    }

    public final int hashCode() {
        return this.f18924a.hashCode();
    }

    public final String toString() {
        return this.f18924a;
    }
}

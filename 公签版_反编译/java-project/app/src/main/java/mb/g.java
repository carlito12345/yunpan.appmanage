package mb;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public final class g implements CharSequence {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f11064a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f11065b;

    /* renamed from: c, reason: collision with root package name */
    public final ReentrantReadWriteLock f11066c;

    /* renamed from: d, reason: collision with root package name */
    public int f11067d;

    /* renamed from: e, reason: collision with root package name */
    public int f11068e;

    /* renamed from: f, reason: collision with root package name */
    public final AtomicLong f11069f = new AtomicLong(1);

    /* renamed from: g, reason: collision with root package name */
    public final a f11070g;

    /* renamed from: h, reason: collision with root package name */
    public final nb.a f11071h;

    /* renamed from: i, reason: collision with root package name */
    public final w f11072i;

    /* renamed from: j, reason: collision with root package name */
    public j f11073j;

    public g(CharSequence charSequence, boolean z) {
        charSequence = charSequence == null ? "" : charSequence;
        if (z) {
            this.f11066c = new ReentrantReadWriteLock();
        } else {
            this.f11066c = null;
        }
        this.f11067d = 0;
        this.f11068e = 0;
        ArrayList arrayList = new ArrayList(1000);
        this.f11064a = arrayList;
        arrayList.add(new h(true));
        this.f11065b = new ArrayList();
        this.f11071h = new nb.a(this);
        w wVar = new w();
        this.f11072i = wVar;
        wVar.f11127c = 500;
        wVar.s();
        this.f11070g = new a(this);
        if (charSequence.length() == 0) {
            z(true);
            return;
        }
        z(false);
        r(0, 0, charSequence);
        z(true);
    }

    public final g A(int i10, int i11, int i12, int i13) {
        g gVar = new g(null, true);
        gVar.z(false);
        ArrayList arrayList = this.f11064a;
        ArrayList arrayList2 = gVar.f11064a;
        if (i10 == i12) {
            h hVar = (h) arrayList.get(i10);
            if (i13 != hVar.f11076c + 1 || hVar.d() != m.CRLF) {
                gVar.r(0, 0, hVar.subSequence(i11, i13));
            } else if (i11 < i13) {
                gVar.r(0, 0, hVar.subSequence(i11, hVar.f11076c));
                ((h) arrayList2.get(0)).f11078e = m.CR;
                gVar.f11067d++;
                arrayList2.add(new h(true));
            }
        } else {
            if (i10 >= i12) {
                throw new StringIndexOutOfBoundsException("start > end");
            }
            h hVar2 = (h) arrayList.get(i10);
            if (hVar2.d() == m.CRLF) {
                int i14 = hVar2.f11076c;
                if (i11 <= i14) {
                    gVar.r(0, 0, hVar2.subSequence(i11, i14));
                    ((h) arrayList2.get(0)).f11078e = hVar2.d();
                    gVar.f11067d += hVar2.d().f11098b;
                } else {
                    if (i11 != i14 + 1) {
                        throw new IndexOutOfBoundsException();
                    }
                    h hVar3 = (h) arrayList2.get(0);
                    m mVar = m.LF;
                    hVar3.f11078e = mVar;
                    gVar.f11067d += mVar.f11098b;
                }
            } else {
                gVar.r(0, 0, hVar2.subSequence(i11, hVar2.f11076c));
                ((h) arrayList2.get(0)).f11078e = hVar2.d();
                gVar.f11067d += hVar2.d().f11098b;
            }
            for (int i15 = i10 + 1; i15 < i12; i15++) {
                h hVar4 = (h) arrayList.get(i15);
                arrayList2.add(new h(hVar4));
                gVar.f11067d = hVar4.f11076c + hVar4.d().f11098b + gVar.f11067d;
            }
            h hVar5 = (h) arrayList.get(i12);
            if (i13 == hVar5.f11076c + 1 && hVar5.d() == m.CRLF) {
                h hVar6 = new h(true);
                hVar6.e(0, 0, i13 - 1, hVar5);
                arrayList2.add(hVar6);
                hVar6.f11078e = m.CR;
                gVar.f11067d = i13 + 1 + gVar.f11067d;
            } else {
                h hVar7 = new h(true);
                hVar7.e(0, 0, i13, hVar5);
                arrayList2.add(hVar7);
                gVar.f11067d += i13;
            }
        }
        gVar.z(true);
        return gVar;
    }

    public final StringBuilder B(int i10, int i11, int i12, int i13, int i14) {
        StringBuilder sb2 = new StringBuilder(i14);
        ArrayList arrayList = this.f11064a;
        if (i10 == i12) {
            h hVar = (h) arrayList.get(i10);
            if (i13 != hVar.f11076c + 1 || hVar.d() != m.CRLF) {
                sb2.append((CharSequence) arrayList.get(i10), i11, i13);
            } else if (i11 < i13) {
                sb2.append((CharSequence) arrayList.get(i10), i11, hVar.f11076c);
                sb2.append(m.CR.f11097a);
            }
        } else {
            if (i10 >= i12) {
                throw new StringIndexOutOfBoundsException("start > end");
            }
            h hVar2 = (h) arrayList.get(i10);
            if (hVar2.d() == m.CRLF) {
                int i15 = hVar2.f11076c;
                if (i11 <= i15) {
                    sb2.append((CharSequence) hVar2, i11, i15);
                    sb2.append(hVar2.d().f11097a);
                } else {
                    if (i11 != i15 + 1) {
                        throw new IndexOutOfBoundsException();
                    }
                    sb2.append(m.LF.f11097a);
                }
            } else {
                sb2.append((CharSequence) hVar2, i11, hVar2.f11076c);
                sb2.append(hVar2.d().f11097a);
            }
            while (true) {
                i10++;
                if (i10 >= i12) {
                    break;
                }
                h hVar3 = (h) arrayList.get(i10);
                sb2.append((CharSequence) hVar3);
                sb2.append(hVar3.d().f11097a);
            }
            h hVar4 = (h) arrayList.get(i12);
            if (i13 == hVar4.f11076c + 1 && hVar4.d() == m.CRLF) {
                sb2.append((CharSequence) hVar4, 0, i13);
                sb2.append(m.CR.f11097a);
            } else {
                sb2.append((CharSequence) hVar4, 0, i13);
            }
        }
        return sb2;
    }

    public final String C(int i10, int i11) {
        if (i10 > i11) {
            throw new StringIndexOutOfBoundsException("start > end");
        }
        u(false);
        try {
            b bVarZ = n().z(i10);
            b bVarZ2 = n().z(i11);
            return B(bVarZ.f11057b, bVarZ.f11058c, bVarZ2.f11057b, bVarZ2.f11058c, (i11 - i10) + 1).toString();
        } finally {
            E(false);
        }
    }

    public final StringBuilder D() {
        StringBuilder sb2 = new StringBuilder();
        ArrayList arrayList = this.f11064a;
        sb2.ensureCapacity(sb2.length() + this.f11067d);
        u(false);
        try {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                h hVar = (h) arrayList.get(i10);
                hVar.a(sb2);
                sb2.append(hVar.d().f11097a);
            }
            return sb2;
        } finally {
            E(false);
        }
    }

    public final void E(boolean z) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f11066c;
        if (reentrantReadWriteLock == null) {
            return;
        }
        (z ? reentrantReadWriteLock.writeLock() : reentrantReadWriteLock.readLock()).unlock();
    }

    public final void a(i iVar) {
        if (iVar instanceof a) {
            throw new IllegalArgumentException("Permission denied");
        }
        ArrayList arrayList = this.f11065b;
        if (arrayList.contains(iVar)) {
            return;
        }
        arrayList.add(iVar);
    }

    public final boolean b() {
        int i10 = this.f11068e + 1;
        this.f11068e = i10;
        return i10 > 0;
    }

    public final char c(int i10, int i11) {
        u(false);
        try {
            f(i10, i11, 0);
            return ((h) this.f11064a.get(i10)).charAt(i11);
        } finally {
            E(false);
        }
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i10) {
        d(i10, 0);
        u(false);
        try {
            b bVarZ = n().z(i10);
            return ((h) this.f11064a.get(bVarZ.f11057b)).charAt(bVarZ.f11058c);
        } finally {
            E(false);
        }
    }

    public final void d(int i10, int i11) {
        if (i11 != 0 ? i10 <= this.f11067d : i10 < this.f11067d) {
            if (i10 >= 0) {
                return;
            }
        }
        StringBuilder sbN = g.b.n("Index ", i10, " out of bounds. length:");
        sbN.append(this.f11067d);
        throw new StringIndexOutOfBoundsException(sbN.toString());
    }

    public final void e(int i10) {
        ArrayList arrayList = this.f11064a;
        if (i10 >= arrayList.size() || i10 < 0) {
            StringBuilder sbN = g.b.n("Line ", i10, " out of bounds. line count:");
            sbN.append(arrayList.size());
            throw new StringIndexOutOfBoundsException(sbN.toString());
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (gVar.f11067d != this.f11067d) {
            return false;
        }
        int i10 = 0;
        loop0: while (true) {
            ArrayList arrayList = this.f11064a;
            if (i10 >= arrayList.size()) {
                return true;
            }
            h hVar = (h) arrayList.get(i10);
            h hVar2 = (h) gVar.f11064a.get(i10);
            if (hVar.f11076c != hVar2.f11076c) {
                break;
            }
            if (hVar != hVar2) {
                for (int i11 = 0; i11 < hVar.f11076c; i11++) {
                    if (hVar.charAt(i11) != hVar2.charAt(i11)) {
                        break loop0;
                    }
                }
            }
            i10++;
        }
        return false;
    }

    public final void f(int i10, int i11, int i12) {
        e(i10);
        ArrayList arrayList = this.f11064a;
        h hVar = (h) arrayList.get(i10);
        if (i12 == 0) {
            int i13 = hVar.f11076c + hVar.d().f11098b;
            if (i11 >= i13 || i11 < 0) {
                throw new StringIndexOutOfBoundsException(android.support.v4.media.session.a.s(ta.q.o(i11, i10, "Column ", " out of bounds for READ. line: ", ", valid range: [0, "), i13, ")"));
            }
            return;
        }
        if (i12 == 1) {
            int i14 = hVar.f11076c;
            if (i11 > i14 || i11 < 0) {
                throw new StringIndexOutOfBoundsException(android.support.v4.media.session.a.s(ta.q.o(i11, i10, "Column ", " out of bounds for CURSOR. line: ", ", valid range: [0, "), i14, "]"));
            }
            return;
        }
        if (i12 != 2) {
            return;
        }
        int i15 = hVar.f11076c + hVar.d().f11098b;
        if (i10 == arrayList.size() - 1) {
            if (i11 > i15 || i11 < 0) {
                throw new StringIndexOutOfBoundsException(android.support.v4.media.session.a.s(ta.q.o(i11, i10, "Column ", " out of bounds for INDEX. line: ", ", valid range: [0, "), i15, "]"));
            }
        } else if (i11 >= i15 || i11 < 0) {
            throw new StringIndexOutOfBoundsException(android.support.v4.media.session.a.s(ta.q.o(i11, i10, "Column ", " out of bounds for INDEX. line: ", ", valid range: [0, "), i15, ")"));
        }
    }

    public final void g(int i10, int i11) {
        u(true);
        d(i10, 1);
        d(i11, 1);
        this.f11069f.getAndIncrement();
        try {
            b bVarZ = n().z(i10);
            b bVarZ2 = n().z(i11);
            if (i10 != i11) {
                i(bVarZ.f11057b, bVarZ.f11058c, bVarZ2.f11057b, bVarZ2.f11058c);
            }
        } finally {
            E(true);
        }
    }

    public final void h(int i10, int i11, int i12, int i13) {
        u(true);
        this.f11069f.getAndIncrement();
        try {
            i(i10, i11, i12, i13);
        } finally {
            E(true);
        }
    }

    public final int hashCode() {
        return Objects.hash(this.f11064a, Integer.valueOf(this.f11067d));
    }

    public final void i(int i10, int i11, int i12, int i13) {
        int i14;
        f(i12, i13, 1);
        f(i10, i11, 1);
        if (i10 == i12 && i11 == i13) {
            return;
        }
        ArrayList arrayList = this.f11064a;
        if (i13 > ((h) arrayList.get(i12)).f11076c && (i14 = i12 + 1) < arrayList.size()) {
            i(i10, i11, i14, 0);
            return;
        }
        int i15 = ((h) arrayList.get(i10)).f11076c;
        if (i11 > i15) {
            i(i10, i15, i12, i13);
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        if (i10 == i12) {
            h hVarV = v(i10);
            int i16 = hVarV.f11076c;
            if (i11 < 0 || i13 > i16 || i11 > i13) {
                throw new StringIndexOutOfBoundsException("invalid bounds");
            }
            j jVar = this.f11073j;
            if (jVar != null) {
                a aVar = jVar.f11080b;
                jVar.f11084f = aVar.A(i10, i11).a();
                jVar.f11085g = aVar.A(i12, i13).a();
            }
            j();
            sb2.append((CharSequence) hVarV, i11, i13);
            hVarV.c(i11, i13);
            this.f11067d -= i13 - i11;
        } else {
            if (i10 >= i12) {
                throw new IllegalArgumentException("start line > end line");
            }
            j jVar2 = this.f11073j;
            if (jVar2 != null) {
                a aVar2 = jVar2.f11080b;
                jVar2.f11084f = aVar2.A(i10, i11).a();
                jVar2.f11085g = aVar2.A(i12, i13).a();
            }
            j();
            int i17 = i10 + 1;
            for (int i18 = i17; i18 <= i12 - 1; i18++) {
                h hVar = (h) arrayList.get(i18);
                m mVarD = ((h) arrayList.get(i18)).d();
                this.f11067d -= hVar.f11076c + mVarD.f11098b;
                hVar.a(sb2);
                sb2.append(mVarD.f11097a);
            }
            if (i12 > i17) {
                arrayList.subList(i17, i12).clear();
            }
            h hVarV2 = v(i10);
            h hVar2 = (h) arrayList.get(i17);
            int i19 = this.f11067d;
            int i20 = hVarV2.f11076c;
            this.f11067d = i19 - (i20 - i11);
            sb2.insert(0, hVarV2, i11, i20).insert(hVarV2.f11076c - i11, hVarV2.d().f11097a);
            hVarV2.c(i11, hVarV2.f11076c);
            this.f11067d -= i13;
            sb2.append((CharSequence) hVar2, 0, i13);
            this.f11067d -= hVarV2.d().f11098b;
            arrayList.remove(i17);
            p pVar = new p(i13, hVar2.f11076c, hVar2);
            hVarV2.e(hVarV2.f11076c, 0, pVar.length(), pVar);
            hVarV2.f11078e = hVar2.d();
        }
        this.f11072i.k(this, i10, i11, i12, i13, sb2);
        j jVar3 = this.f11073j;
        if (jVar3 != null) {
            jVar3.f11080b.k(jVar3.f11079a, i10, i11, i12, i13, sb2);
            int i21 = jVar3.f11084f.f11056a;
            int i22 = jVar3.f11085g.f11056a;
            int i23 = jVar3.f11081c.f11056a;
            int i24 = jVar3.f11082d.f11056a;
            if (i21 <= i24) {
                int i25 = i22 - i21;
                int iMax = i23 - Math.max(0, Math.min(i23 - i21, i25));
                int iMax2 = i24 - Math.max(0, Math.min(i24 - i21, i25));
                a aVar3 = jVar3.f11080b;
                jVar3.f11081c = aVar3.z(iMax).a();
                jVar3.f11082d = aVar3.z(iMax2).a();
            }
        }
        a aVar4 = this.f11070g;
        if (aVar4 instanceof i) {
            aVar4.k(this, i10, i11, i12, i13, sb2);
        }
        Iterator it = this.f11065b.iterator();
        while (it.hasNext()) {
            ((i) it.next()).k(this, i10, i11, i12, i13, sb2);
        }
    }

    public final void j() {
        this.f11072i.b(this);
        Iterator it = this.f11065b.iterator();
        while (it.hasNext()) {
            ((i) it.next()).b(this);
        }
    }

    public final boolean k() {
        int i10 = this.f11068e - 1;
        this.f11068e = i10;
        if (i10 == 0) {
            w wVar = this.f11072i;
            wVar.f11132h = true;
            ArrayList arrayList = wVar.f11125a;
            if (!arrayList.isEmpty() && (ta.q.h(1, arrayList) instanceof u)) {
                u uVar = (u) ta.q.h(1, arrayList);
                if (uVar.f11122b.size() == 1) {
                    arrayList.set(arrayList.size() - 1, (q) uVar.f11122b.get(0));
                }
            }
        }
        if (this.f11068e < 0) {
            this.f11068e = 0;
        }
        return this.f11068e > 0;
    }

    public final int l(int i10, int i11) {
        u(false);
        try {
            return n().A(i10, i11).f11056a;
        } finally {
            E(false);
        }
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f11067d;
    }

    public final j m() {
        if (this.f11073j == null) {
            this.f11073j = new j(this);
        }
        return this.f11073j;
    }

    public final a n() {
        j jVar = this.f11073j;
        return jVar != null ? jVar.f11080b : this.f11070g;
    }

    public final h o(int i10) {
        u(false);
        try {
            return (h) this.f11064a.get(i10);
        } finally {
            E(false);
        }
    }

    public final nb.b p(int i10) {
        u(false);
        try {
            return this.f11071h.s(i10, (h) this.f11064a.get(i10));
        } finally {
            E(false);
        }
    }

    public final String q(int i10) {
        u(false);
        try {
            e(i10);
            return ((h) this.f11064a.get(i10)).toString();
        } finally {
            E(false);
        }
    }

    public final void r(int i10, int i11, CharSequence charSequence) {
        u(true);
        this.f11069f.getAndIncrement();
        try {
            s(i10, i11, charSequence);
        } finally {
            E(true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0148  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void s(int i10, int i11, CharSequence charSequence) {
        l lVar;
        m mVar;
        int i12 = i11;
        int i13 = 1;
        f(i10, i12, 1);
        if (charSequence == null) {
            throw new IllegalArgumentException("text can not be null");
        }
        if (i12 > ((h) this.f11064a.get(i10)).f11076c) {
            i12 = ((h) this.f11064a.get(i10)).f11076c;
        }
        int i14 = i12;
        j jVar = this.f11073j;
        if (jVar != null) {
            jVar.f11083e = jVar.f11080b.A(i10, i14).a();
        }
        j();
        h hVarV = v(i10);
        synchronized (l.class) {
            int i15 = 0;
            while (true) {
                l[] lVarArr = l.f11087e;
                if (i15 >= 8) {
                    lVar = new l();
                    break;
                }
                lVar = lVarArr[i15];
                if (lVar != null) {
                    lVarArr[i15] = null;
                    break;
                }
                i15++;
            }
        }
        lVar.f11088a = charSequence;
        lVar.f11089b = -1;
        lVar.f11090c = 0;
        lVar.f11091d = charSequence.length();
        LinkedList linkedList = new LinkedList();
        m mVarD = hVarV.d();
        int i16 = i10;
        int i17 = i14;
        boolean z = false;
        int iA = 2;
        while (true) {
            int iA2 = z ? iA : lVar.a();
            if (iA2 == 2) {
                hVarV.f11078e = mVarD;
                this.f11064a.addAll(i13 + i10, linkedList);
                lVar.b();
                this.f11067d = charSequence.length() + this.f11067d;
                this.f11072i.c(this, i10, i14, i16, i17, charSequence);
                j jVar2 = this.f11073j;
                if (jVar2 != null) {
                    jVar2.f11080b.c(jVar2.f11079a, i10, i14, i16, i17, charSequence);
                    int i18 = jVar2.f11083e.f11056a;
                    int i19 = jVar2.f11081c.f11056a;
                    a aVar = jVar2.f11080b;
                    if (i19 >= i18) {
                        jVar2.f11081c = aVar.z(charSequence.length() + i19).a();
                    }
                    int i20 = jVar2.f11082d.f11056a;
                    if (i20 >= i18) {
                        jVar2.f11082d = aVar.z(charSequence.length() + i20).a();
                    }
                }
                a aVar2 = this.f11070g;
                if (aVar2 instanceof i) {
                    aVar2.c(this, i10, i14, i16, i17, charSequence);
                }
                Iterator it = this.f11065b.iterator();
                while (it.hasNext()) {
                    ((i) it.next()).c(this, i10, i14, i16, i17, charSequence);
                }
                return;
            }
            if (iA2 == 0) {
                hVarV.e(i17, lVar.f11089b, lVar.f11090c, charSequence);
                i17 += lVar.f11090c - lVar.f11089b;
                z = false;
            } else {
                int i21 = lVar.f11089b;
                int i22 = lVar.f11090c;
                m mVar2 = m.NONE;
                if (i22 == i21) {
                    mVar = m.NONE;
                } else {
                    int i23 = i22 - i21;
                    if (i23 == i13) {
                        char cCharAt = charSequence.charAt(i21);
                        if (cCharAt == '\r') {
                            mVar = m.CR;
                        } else if (cCharAt == '\n') {
                            mVar = m.LF;
                        }
                    } else if (i23 != 2 || charSequence.charAt(i21) != '\r' || charSequence.charAt(i21 + 1) != '\n') {
                        break;
                    } else {
                        mVar = m.CRLF;
                    }
                }
                hVarV.f11078e = mVar;
                iA = lVar.a();
                h hVar = new h((((hVarV.f11076c - i17) + lVar.f11090c) - lVar.f11089b) + 10);
                hVar.e(0, i17, hVarV.f11076c, hVarV);
                hVarV.c(i17, hVarV.f11076c);
                linkedList.add(hVar);
                i16++;
                hVarV = hVar;
                i13 = 1;
                z = true;
                i17 = 0;
            }
        }
        throw new IllegalArgumentException("unknown line separator type");
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i10, int i11) {
        if (i10 > i11) {
            throw new StringIndexOutOfBoundsException("start > end");
        }
        u(false);
        try {
            b bVarZ = n().z(i10);
            b bVarZ2 = n().z(i11);
            return A(bVarZ.f11057b, bVarZ.f11058c, bVarZ2.f11057b, bVarZ2.f11058c);
        } finally {
            E(false);
        }
    }

    public final boolean t(int i10, int i11) {
        nb.b bVarP = p(i10);
        for (int i12 = 0; i12 < bVarP.f11333a.length; i12++) {
            if (i11 >= bVarP.j(i12) && i11 < bVarP.o(i12)) {
                return bVarP.q(i12);
            }
        }
        return false;
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return D().toString();
    }

    public final void u(boolean z) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f11066c;
        if (reentrantReadWriteLock == null) {
            return;
        }
        (z ? reentrantReadWriteLock.writeLock() : reentrantReadWriteLock.readLock()).lock();
    }

    public final h v(int i10) {
        h hVar = (h) this.f11064a.get(i10);
        hVar.getClass();
        return hVar;
    }

    public final void w(int i10, int i11, CharSequence charSequence, int i12, int i13) {
        if (charSequence == null) {
            throw new IllegalArgumentException("text can not be null");
        }
        u(true);
        this.f11069f.getAndIncrement();
        try {
            this.f11072i.j(this);
            j jVar = this.f11073j;
            if (jVar != null) {
                jVar.f11080b.getClass();
            }
            a aVar = this.f11070g;
            if (aVar instanceof i) {
                aVar.getClass();
            }
            Iterator it = this.f11065b.iterator();
            while (it.hasNext()) {
                ((i) it.next()).j(this);
            }
            i(i10, i11, i12, i13);
            s(i10, i11, charSequence);
        } finally {
            E(true);
        }
    }

    public final void x(int i10, int i11, e eVar) {
        u(false);
        try {
            ag.h hVar = new ag.h((byte) 0);
            while (i10 <= i11) {
                if (hVar.f680a) {
                    break;
                }
                eVar.c(i10, (h) this.f11064a.get(i10), hVar);
                i10++;
            }
        } finally {
            E(false);
        }
    }

    public final void y(int i10, f fVar) {
        u(false);
        for (int i11 = 0; i11 <= i10; i11++) {
            try {
                h hVar = (h) this.f11064a.get(i11);
                fVar.f(i11, hVar, this.f11071h.s(i11, hVar));
            } finally {
                E(false);
            }
        }
    }

    public final void z(boolean z) {
        w wVar = this.f11072i;
        wVar.f11126b = z;
        if (z) {
            return;
        }
        wVar.s();
    }
}

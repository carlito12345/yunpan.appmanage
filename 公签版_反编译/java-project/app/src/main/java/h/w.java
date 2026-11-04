package h;

import com.hsae.autosdk.p001os.SocConst;
import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes.dex */
public final class w implements Principal {

    /* renamed from: a, reason: collision with root package name */
    public String f6297a;

    /* renamed from: b, reason: collision with root package name */
    public String f6298b;

    /* renamed from: c, reason: collision with root package name */
    public final t[] f6299c;

    /* renamed from: d, reason: collision with root package name */
    public final X500Principal f6300d;

    /* renamed from: e, reason: collision with root package name */
    public static final HashMap f6281e = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    public static final g.h f6282f = d(g.h.d(new int[]{2, 5, 4, 3}));

    /* renamed from: x, reason: collision with root package name */
    public static final g.h f6296x = d(g.h.d(new int[]{2, 5, 4, 5}));

    /* renamed from: g, reason: collision with root package name */
    public static final g.h f6283g = d(g.h.d(new int[]{2, 5, 4, 6}));

    /* renamed from: h, reason: collision with root package name */
    public static final g.h f6284h = d(g.h.d(new int[]{2, 5, 4, 7}));

    /* renamed from: i, reason: collision with root package name */
    public static final g.h f6285i = d(g.h.d(new int[]{2, 5, 4, 10}));

    /* renamed from: j, reason: collision with root package name */
    public static final g.h f6286j = d(g.h.d(new int[]{2, 5, 4, 11}));

    /* renamed from: k, reason: collision with root package name */
    public static final g.h f6287k = d(g.h.d(new int[]{2, 5, 4, 8}));
    public static final g.h l = d(g.h.d(new int[]{2, 5, 4, 9}));

    /* renamed from: m, reason: collision with root package name */
    public static final g.h f6288m = d(g.h.d(new int[]{2, 5, 4, 12}));

    /* renamed from: n, reason: collision with root package name */
    public static final g.h f6289n = d(g.h.d(new int[]{2, 5, 4, 46}));

    /* renamed from: p, reason: collision with root package name */
    public static final g.h f6290p = d(g.h.d(new int[]{2, 5, 4, 4}));

    /* renamed from: q, reason: collision with root package name */
    public static final g.h f6291q = d(g.h.d(new int[]{2, 5, 4, 42}));
    public static final g.h r = d(g.h.d(new int[]{2, 5, 4, 43}));

    /* renamed from: s, reason: collision with root package name */
    public static final g.h f6292s = d(g.h.d(new int[]{2, 5, 4, 44}));

    /* renamed from: t, reason: collision with root package name */
    public static final g.h f6293t = d(g.h.d(new int[]{1, 3, 6, 1, 4, 1, 42, 2, 11, 2, 1}));

    /* renamed from: v, reason: collision with root package name */
    public static final g.h f6294v = d(g.h.d(new int[]{0, 9, 2342, 19200300, 100, 1, 25}));

    /* renamed from: w, reason: collision with root package name */
    public static final g.h f6295w = d(g.h.d(new int[]{0, 9, 2342, 19200300, 100, 1, 1}));

    public w() {
        Map mapEmptyMap = Collections.emptyMap();
        this.f6300d = new X500Principal("CN=app manage", mapEmptyMap);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new t("CN=app manage".substring(0), mapEmptyMap));
        Collections.reverse(arrayList);
        this.f6299c = (t[]) arrayList.toArray(new t[0]);
    }

    public static int a(int i10, int i11, String str) {
        int i12 = 0;
        for (int i13 = i10; i13 < i11; i13++) {
            if ((str.charAt(i13) == '\"' && i13 == i10) || (str.charAt(i13) == '\"' && str.charAt(i13 - 1) != '\\')) {
                i12++;
            }
        }
        return i12;
    }

    public static g.h d(g.h hVar) {
        HashMap map = f6281e;
        g.h hVar2 = (g.h) map.get(hVar);
        if (hVar2 != null) {
            return hVar2;
        }
        map.put(hVar, hVar);
        return hVar;
    }

    public final void b(g.f fVar) throws IOException {
        g.f fVar2 = new g.f();
        for (t tVar : this.f6299c) {
            tVar.getClass();
            a5.a aVar = g.f.f5921a;
            a[] aVarArr = tVar.f6277a;
            int length = aVarArr.length;
            g.f[] fVarArr = new g.f[length];
            for (int i10 = 0; i10 < aVarArr.length; i10++) {
                g.f fVar3 = new g.f();
                fVarArr[i10] = fVar3;
                a aVar2 = aVarArr[i10];
                aVar2.getClass();
                g.f fVar4 = new g.f();
                g.f fVar5 = new g.f();
                fVar4.K((byte) 6, aVar2.f6205a.f5926a);
                aVar2.f6206b.c(fVar4);
                fVar5.J((byte) 48, fVar4);
                fVar3.write(fVar5.toByteArray());
            }
            byte[][] bArr = new byte[length][];
            for (int i11 = 0; i11 < length; i11++) {
                bArr[i11] = fVarArr[i11].toByteArray();
            }
            Arrays.sort(bArr, aVar);
            g.f fVar6 = new g.f();
            for (int i12 = 0; i12 < length; i12++) {
                fVar6.write(bArr[i12]);
            }
            fVar2.J(SocConst.Upgrade.CUPID_CMD, fVar6);
        }
        fVar.J((byte) 48, fVar2);
    }

    public final String c() {
        String str = this.f6298b;
        if (str != null) {
            return str;
        }
        if (this.f6299c.length == 0) {
            this.f6298b = "";
            return "";
        }
        StringBuilder sb2 = new StringBuilder(48);
        for (int length = this.f6299c.length - 1; length >= 0; length--) {
            if (length < this.f6299c.length - 1) {
                sb2.append(',');
            }
            sb2.append(this.f6299c[length].a());
        }
        String string = sb2.toString();
        this.f6298b = string;
        return string;
    }

    @Override // java.security.Principal
    public final boolean equals(Object obj) {
        String str;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        String str2 = this.f6298b;
        if (str2 != null && (str = wVar.f6298b) != null) {
            return str2.equals(str);
        }
        int length = this.f6299c.length;
        if (length != wVar.f6299c.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (this.f6299c[i10].f6277a.length != wVar.f6299c[i10].f6277a.length) {
                return false;
            }
        }
        return c().equals(wVar.c());
    }

    @Override // java.security.Principal
    public final String getName() {
        return toString();
    }

    @Override // java.security.Principal
    public final int hashCode() {
        return c().hashCode();
    }

    @Override // java.security.Principal
    public final String toString() {
        if (this.f6297a == null) {
            t[] tVarArr = this.f6299c;
            if (tVarArr.length == 1) {
                this.f6297a = tVarArr[0].toString();
            } else {
                StringBuilder sb2 = new StringBuilder(48);
                t[] tVarArr2 = this.f6299c;
                if (tVarArr2 != null) {
                    for (int length = tVarArr2.length - 1; length >= 0; length--) {
                        if (length != this.f6299c.length - 1) {
                            sb2.append(", ");
                        }
                        sb2.append(this.f6299c[length].toString());
                    }
                }
                this.f6297a = sb2.toString();
            }
        }
        return this.f6297a;
    }
}

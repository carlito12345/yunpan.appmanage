package jg;

import a2.w0;
import java.util.BitSet;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public long f9892a;

    /* renamed from: c, reason: collision with root package name */
    public BitSet f9894c;

    /* renamed from: d, reason: collision with root package name */
    public long[] f9895d;

    /* renamed from: f, reason: collision with root package name */
    public v3.f f9897f;

    /* renamed from: h, reason: collision with root package name */
    public w0 f9899h;

    /* renamed from: b, reason: collision with root package name */
    public long[] f9893b = new long[0];

    /* renamed from: e, reason: collision with root package name */
    public m[] f9896e = m.f9914j;

    /* renamed from: g, reason: collision with root package name */
    public n[] f9898g = n.f9924s;

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Archive with packed streams starting at offset ");
        sb2.append(this.f9892a);
        sb2.append(", ");
        sb2.append(Integer.toString(this.f9893b.length));
        sb2.append(" pack sizes, ");
        long[] jArr = this.f9895d;
        sb2.append(jArr == null ? "(null)" : Integer.toString(jArr.length));
        sb2.append(" CRCs, ");
        sb2.append(Integer.toString(this.f9896e.length));
        sb2.append(" folders, ");
        n[] nVarArr = this.f9898g;
        sb2.append(nVarArr != null ? Integer.toString(nVarArr.length) : "(null)");
        sb2.append(" files and ");
        sb2.append(this.f9899h);
        return sb2.toString();
    }
}

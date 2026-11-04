package jg;

import j$.util.Objects;
import java.nio.file.attribute.FileTime;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: s, reason: collision with root package name */
    public static final n[] f9924s = new n[0];

    /* renamed from: a, reason: collision with root package name */
    public String f9925a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f9926b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f9927c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f9928d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f9929e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f9930f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9931g;

    /* renamed from: h, reason: collision with root package name */
    public FileTime f9932h;

    /* renamed from: i, reason: collision with root package name */
    public FileTime f9933i;

    /* renamed from: j, reason: collision with root package name */
    public FileTime f9934j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f9935k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f9936m;

    /* renamed from: n, reason: collision with root package name */
    public long f9937n;

    /* renamed from: o, reason: collision with root package name */
    public long f9938o;

    /* renamed from: p, reason: collision with root package name */
    public long f9939p;

    /* renamed from: q, reason: collision with root package name */
    public long f9940q;
    public List r;

    /* JADX WARN: Removed duplicated region for block: B:49:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        if (Objects.equals(this.f9925a, nVar.f9925a) && this.f9926b == nVar.f9926b && this.f9927c == nVar.f9927c && this.f9928d == nVar.f9928d && this.f9929e == nVar.f9929e && this.f9930f == nVar.f9930f && this.f9931g == nVar.f9931g && Objects.equals(this.f9932h, nVar.f9932h) && Objects.equals(this.f9933i, nVar.f9933i) && Objects.equals(this.f9934j, nVar.f9934j) && this.f9935k == nVar.f9935k && this.l == nVar.l && this.f9936m == nVar.f9936m && this.f9937n == nVar.f9937n && this.f9938o == nVar.f9938o && this.f9939p == nVar.f9939p && this.f9940q == nVar.f9940q) {
            List<v> list = this.r;
            List list2 = nVar.r;
            if (list == null) {
                if (list2 != null) {
                    z = false;
                    break;
                }
                z = true;
                if (!z) {
                    return true;
                }
            } else if (list2 != null) {
                Iterator it = list2.iterator();
                for (v vVar : list) {
                    if (!it.hasNext() || !vVar.equals(it.next())) {
                        z = false;
                        break;
                    }
                }
                z = !it.hasNext();
                if (!z) {
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f9925a;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }
}

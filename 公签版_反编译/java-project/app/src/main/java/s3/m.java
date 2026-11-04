package s3;

import android.util.SparseArray;
import l2.j0;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final j0 f14135a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14136b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f14137c;

    /* renamed from: f, reason: collision with root package name */
    public final t3.e f14140f;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f14141g;

    /* renamed from: h, reason: collision with root package name */
    public int f14142h;

    /* renamed from: i, reason: collision with root package name */
    public int f14143i;

    /* renamed from: j, reason: collision with root package name */
    public long f14144j;
    public long l;

    /* renamed from: p, reason: collision with root package name */
    public long f14149p;

    /* renamed from: q, reason: collision with root package name */
    public long f14150q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f14151s;

    /* renamed from: d, reason: collision with root package name */
    public final SparseArray f14138d = new SparseArray();

    /* renamed from: e, reason: collision with root package name */
    public final SparseArray f14139e = new SparseArray();

    /* renamed from: m, reason: collision with root package name */
    public l f14146m = new l();

    /* renamed from: n, reason: collision with root package name */
    public l f14147n = new l();

    /* renamed from: k, reason: collision with root package name */
    public boolean f14145k = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f14148o = false;

    public m(j0 j0Var, boolean z, boolean z4) {
        this.f14135a = j0Var;
        this.f14136b = z;
        this.f14137c = z4;
        byte[] bArr = new byte[128];
        this.f14141g = bArr;
        this.f14140f = new t3.e(bArr, 0, 0);
        l lVar = this.f14147n;
        lVar.f14121b = false;
        lVar.f14120a = false;
    }
}

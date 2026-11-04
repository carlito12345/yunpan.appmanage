package androidx.recyclerview.widget;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class x2 {

    /* renamed from: a, reason: collision with root package name */
    public int f2353a;

    /* renamed from: b, reason: collision with root package name */
    public int f2354b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2355c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2356d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2357e;

    /* renamed from: f, reason: collision with root package name */
    public int[] f2358f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f2359g;

    public x2(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f2359g = staggeredGridLayoutManager;
        a();
    }

    public final void a() {
        this.f2353a = -1;
        this.f2354b = Integer.MIN_VALUE;
        this.f2355c = false;
        this.f2356d = false;
        this.f2357e = false;
        int[] iArr = this.f2358f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}

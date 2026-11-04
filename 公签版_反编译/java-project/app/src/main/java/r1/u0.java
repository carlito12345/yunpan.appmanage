package r1;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class u0 {

    /* renamed from: a, reason: collision with root package name */
    public int f13571a;

    /* renamed from: b, reason: collision with root package name */
    public int f13572b;

    /* renamed from: c, reason: collision with root package name */
    public int f13573c;

    /* renamed from: d, reason: collision with root package name */
    public int f13574d;

    /* renamed from: e, reason: collision with root package name */
    public int f13575e;

    /* renamed from: f, reason: collision with root package name */
    public int f13576f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f13577g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f13578h;

    /* renamed from: i, reason: collision with root package name */
    public u7.y0 f13579i;

    /* renamed from: j, reason: collision with root package name */
    public u7.y0 f13580j;

    /* renamed from: k, reason: collision with root package name */
    public u7.y0 f13581k;
    public u7.y0 l;

    /* renamed from: m, reason: collision with root package name */
    public u7.y0 f13582m;

    /* renamed from: n, reason: collision with root package name */
    public int f13583n;

    /* renamed from: o, reason: collision with root package name */
    public int f13584o;

    /* renamed from: p, reason: collision with root package name */
    public u7.y0 f13585p;

    /* renamed from: q, reason: collision with root package name */
    public t0 f13586q;
    public u7.y0 r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f13587s;

    /* renamed from: t, reason: collision with root package name */
    public u7.y0 f13588t;

    /* renamed from: u, reason: collision with root package name */
    public int f13589u;

    /* renamed from: v, reason: collision with root package name */
    public HashMap f13590v;

    /* renamed from: w, reason: collision with root package name */
    public HashSet f13591w;

    public u0() {
        this.f13571a = Integer.MAX_VALUE;
        this.f13572b = Integer.MAX_VALUE;
        this.f13573c = Integer.MAX_VALUE;
        this.f13574d = Integer.MAX_VALUE;
        this.f13575e = Integer.MAX_VALUE;
        this.f13576f = Integer.MAX_VALUE;
        this.f13577g = true;
        this.f13578h = true;
        u7.e0 e0Var = u7.g0.f15471b;
        u7.y0 y0Var = u7.y0.f15549e;
        this.f13579i = y0Var;
        this.f13580j = y0Var;
        this.f13581k = y0Var;
        this.l = y0Var;
        this.f13582m = y0Var;
        this.f13583n = Integer.MAX_VALUE;
        this.f13584o = Integer.MAX_VALUE;
        this.f13585p = y0Var;
        this.f13586q = t0.f13565a;
        this.r = y0Var;
        this.f13587s = true;
        this.f13588t = y0Var;
        this.f13589u = 0;
        this.f13590v = new HashMap();
        this.f13591w = new HashSet();
    }

    public v0 a() {
        return new v0(this);
    }

    public u0 b(int i10) {
        Iterator it = this.f13590v.values().iterator();
        while (it.hasNext()) {
            if (((s0) it.next()).f13558a.f13555c == i10) {
                it.remove();
            }
        }
        return this;
    }

    public final void c(v0 v0Var) {
        this.f13571a = v0Var.f13597a;
        this.f13572b = v0Var.f13598b;
        this.f13573c = v0Var.f13599c;
        this.f13574d = v0Var.f13600d;
        this.f13575e = v0Var.f13601e;
        this.f13576f = v0Var.f13602f;
        this.f13577g = v0Var.f13603g;
        this.f13578h = v0Var.f13604h;
        this.f13580j = v0Var.f13606j;
        this.f13579i = v0Var.f13605i;
        this.f13581k = v0Var.f13607k;
        this.l = v0Var.l;
        this.f13582m = v0Var.f13608m;
        this.f13583n = v0Var.f13609n;
        this.f13584o = v0Var.f13610o;
        this.f13585p = v0Var.f13611p;
        this.f13586q = v0Var.f13612q;
        this.r = v0Var.r;
        this.f13587s = v0Var.f13614t;
        this.f13588t = v0Var.f13613s;
        this.f13589u = v0Var.f13615u;
        this.f13591w = new HashSet(v0Var.f13617w);
        this.f13590v = new HashMap(v0Var.f13616v);
    }

    public u0 d() {
        this.f13589u = -3;
        return this;
    }

    public u0 e(s0 s0Var) {
        r0 r0Var = s0Var.f13558a;
        b(r0Var.f13555c);
        this.f13590v.put(r0Var, s0Var);
        return this;
    }

    public u0 f() {
        return g(new String[0]);
    }

    public u0 g(String... strArr) {
        u7.e0 e0Var = u7.g0.f15471b;
        u7.q.c(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int length = strArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            String str = strArr[i10];
            str.getClass();
            String strH = u1.f0.H(str);
            strH.getClass();
            int i12 = i11 + 1;
            int iF = u7.a0.f(objArrCopyOf.length, i12);
            if (iF > objArrCopyOf.length) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iF);
            }
            objArrCopyOf[i11] = strH;
            i10++;
            i11 = i12;
        }
        this.r = u7.g0.i(i11, objArrCopyOf);
        this.f13587s = false;
        return this;
    }

    public u0 h() {
        this.f13587s = false;
        return this;
    }

    public u0 i(int i10, boolean z) {
        if (z) {
            this.f13591w.add(Integer.valueOf(i10));
        } else {
            this.f13591w.remove(Integer.valueOf(i10));
        }
        return this;
    }

    public u0(v0 v0Var) {
        c(v0Var);
    }
}

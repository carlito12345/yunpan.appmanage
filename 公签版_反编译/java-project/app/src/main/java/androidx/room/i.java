package androidx.room;

import android.content.ContextWrapper;
import android.net.ConnectivityManager;
import android.opengl.Matrix;
import android.os.Build;
import android.os.Looper;
import android.util.SparseArray;
import androidx.recyclerview.widget.m1;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.yunpan.appmanage.ui.ActivityAppDetails;
import ha.db;
import java.io.File;
import java.util.List;
import l2.j0;
import okhttp3.Dns;
import u1.b0;
import u1.c0;
import u1.z;

/* loaded from: classes.dex */
public final class i implements a6.j, com.bumptech.glide.manager.n, l2.q {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2404a;

    /* renamed from: b, reason: collision with root package name */
    public Object f2405b;

    /* renamed from: c, reason: collision with root package name */
    public Object f2406c;

    /* renamed from: d, reason: collision with root package name */
    public Object f2407d;

    public i(int i10, boolean z) {
        switch (i10) {
            case 6:
                this.f2405b = null;
                this.f2406c = null;
                this.f2407d = Dns.SYSTEM;
                this.f2404a = true;
                break;
            default:
                this.f2405b = new float[16];
                this.f2406c = new float[16];
                this.f2407d = new c0();
                break;
        }
    }

    public static void d(float[] fArr, float[] fArr2) {
        Matrix.setIdentityM(fArr, 0);
        float f10 = fArr2[10];
        float f11 = fArr2[8];
        float fSqrt = (float) Math.sqrt((f11 * f11) + (f10 * f10));
        float f12 = fArr2[10] / fSqrt;
        fArr[0] = f12;
        float f13 = fArr2[8];
        fArr[2] = f13 / fSqrt;
        fArr[8] = (-f13) / fSqrt;
        fArr[10] = f12;
    }

    @Override // com.bumptech.glide.manager.n
    public boolean a() {
        a6.i iVar = (a6.i) this.f2406c;
        this.f2404a = ((ConnectivityManager) iVar.get()).getActiveNetwork() != null;
        try {
            ((ConnectivityManager) iVar.get()).registerDefaultNetworkCallback((com.bumptech.glide.manager.p) this.f2407d);
            return true;
        } catch (RuntimeException unused) {
            return false;
        }
    }

    @Override // com.bumptech.glide.manager.n
    public void b() {
        ((ConnectivityManager) ((a6.i) this.f2406c).get()).unregisterNetworkCallback((com.bumptech.glide.manager.p) this.f2407d);
    }

    public void c() {
        d5.d.r((d5.d) this.f2407d, this, false);
    }

    public File e() {
        File file;
        synchronized (((d5.d) this.f2407d)) {
            try {
                d5.c cVar = (d5.c) this.f2405b;
                if (cVar.f4471f != this) {
                    throw new IllegalStateException();
                }
                if (!cVar.f4470e) {
                    ((boolean[]) this.f2406c)[0] = true;
                }
                file = cVar.f4469d[0];
                ((d5.d) this.f2407d).f4473a.mkdirs();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return file;
    }

    public int[] f() {
        synchronized (this) {
            try {
                if (!this.f2404a) {
                    return null;
                }
                long[] jArr = (long[]) this.f2405b;
                int length = jArr.length;
                int i10 = 0;
                int i11 = 0;
                while (i10 < length) {
                    int i12 = i11 + 1;
                    int i13 = 1;
                    boolean z = jArr[i10] > 0;
                    boolean[] zArr = (boolean[]) this.f2406c;
                    if (z != zArr[i11]) {
                        int[] iArr = (int[]) this.f2407d;
                        if (!z) {
                            i13 = 2;
                        }
                        iArr[i11] = i13;
                    } else {
                        ((int[]) this.f2407d)[i11] = 0;
                    }
                    zArr[i11] = z;
                    i10++;
                    i11 = i12;
                }
                this.f2404a = false;
                return (int[]) ((int[]) this.f2407d).clone();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void g() {
        TabLayout tabLayout = (TabLayout) this.f2405b;
        tabLayout.i();
        m1 m1Var = (m1) this.f2407d;
        if (m1Var != null) {
            int iB = m1Var.b();
            for (int i10 = 0; i10 < iB; i10++) {
                p7.h hVarG = tabLayout.g();
                int i11 = ActivityAppDetails.E;
                if (i10 == 0) {
                    hVarG.a("页面");
                } else if (i10 == 1) {
                    hVarG.a("服务");
                } else if (i10 == 2) {
                    hVarG.a("广播接收器");
                } else if (i10 == 3) {
                    hVarG.a("内容提供器");
                }
                tabLayout.a(hVarG, false);
            }
            if (iB > 0) {
                int iMin = Math.min(((ViewPager2) this.f2406c).getCurrentItem(), tabLayout.getTabCount() - 1);
                if (iMin != tabLayout.getSelectedTabPosition()) {
                    tabLayout.j(tabLayout.f(iMin), true);
                }
            }
        }
    }

    @Override // a6.j
    public Object get() {
        if (this.f2404a) {
            throw new IllegalStateException("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
        }
        if (Build.VERSION.SDK_INT >= 18) {
            g4.a.a("Glide registry");
        }
        this.f2404a = true;
        try {
            return nh.b.p((com.bumptech.glide.b) this.f2405b, (List) this.f2406c, (q4.a) this.f2407d);
        } finally {
            this.f2404a = false;
            d.b.r();
        }
    }

    public void h() {
        if (this.f2404a) {
            ((b0) this.f2407d).d(new db(13, this));
            this.f2404a = false;
        }
    }

    @Override // l2.q
    public void q() {
        ((l2.q) this.f2405b).q();
        if (!this.f2404a) {
            return;
        }
        int i10 = 0;
        while (true) {
            SparseArray sparseArray = (SparseArray) this.f2407d;
            if (i10 >= sparseArray.size()) {
                return;
            }
            ((i3.l) sparseArray.valueAt(i10)).f8510i = true;
            i10++;
        }
    }

    @Override // l2.q
    public void s(l2.c0 c0Var) {
        ((l2.q) this.f2405b).s(c0Var);
    }

    @Override // l2.q
    public j0 z(int i10, int i11) {
        if (i11 != 3 && i11 != 5) {
            this.f2404a = true;
        }
        l2.q qVar = (l2.q) this.f2405b;
        if (i11 != 3) {
            return qVar.z(i10, i11);
        }
        SparseArray sparseArray = (SparseArray) this.f2407d;
        i3.l lVar = (i3.l) sparseArray.get(i10);
        if (lVar != null) {
            return lVar;
        }
        i3.l lVar2 = new i3.l(qVar.z(i10, i11), (i3.h) this.f2406c);
        sparseArray.put(i10, lVar2);
        return lVar2;
    }

    public i(l2.q qVar, i3.h hVar) {
        this.f2405b = qVar;
        this.f2406c = hVar;
        this.f2407d = new SparseArray();
    }

    public i(ContextWrapper contextWrapper, Looper looper, Looper looper2, y1.t tVar, z zVar) {
        this.f2405b = contextWrapper.getApplicationContext();
        this.f2407d = zVar.a(looper, null);
        this.f2406c = new s1.a(this, zVar.a(looper2, null), tVar);
    }

    public i(com.bumptech.glide.b bVar, List list, q4.a aVar) {
        this.f2405b = bVar;
        this.f2406c = list;
        this.f2407d = aVar;
    }

    public i(TabLayout tabLayout, ViewPager2 viewPager2, tb.v vVar) {
        this.f2405b = tabLayout;
        this.f2406c = viewPager2;
    }

    public i(a6.i iVar, com.bumptech.glide.manager.m mVar) {
        this.f2407d = new com.bumptech.glide.manager.p(this);
        this.f2406c = iVar;
        this.f2405b = mVar;
    }

    public i(int i10) {
        this.f2405b = new long[i10];
        this.f2406c = new boolean[i10];
        this.f2407d = new int[i10];
    }

    public i(d5.d dVar, d5.c cVar) {
        this.f2407d = dVar;
        this.f2405b = cVar;
        this.f2406c = cVar.f4470e ? null : new boolean[dVar.f4479g];
    }
}

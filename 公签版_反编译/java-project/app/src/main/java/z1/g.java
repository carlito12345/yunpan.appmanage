package z1;

import androidx.media3.exoplayer.video.r;
import f2.c0;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import r1.o0;
import r1.p0;
import r1.q0;
import u1.f0;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: h, reason: collision with root package name */
    public static final r f19356h = new r(3);

    /* renamed from: i, reason: collision with root package name */
    public static final Random f19357i = new Random();

    /* renamed from: d, reason: collision with root package name */
    public h f19361d;

    /* renamed from: f, reason: collision with root package name */
    public String f19363f;

    /* renamed from: a, reason: collision with root package name */
    public final p0 f19358a = new p0();

    /* renamed from: b, reason: collision with root package name */
    public final o0 f19359b = new o0();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f19360c = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public q0 f19362e = q0.f13551a;

    /* renamed from: g, reason: collision with root package name */
    public long f19364g = -1;

    public final void a(f fVar) {
        long j10 = fVar.f19351c;
        if (j10 != -1 && fVar.f19353e) {
            this.f19364g = j10;
        }
        this.f19363f = null;
    }

    public final synchronized void b(a aVar) {
        h hVar;
        try {
            String str = this.f19363f;
            if (str != null) {
                f fVar = (f) this.f19360c.get(str);
                fVar.getClass();
                a(fVar);
            }
            Iterator it = this.f19360c.values().iterator();
            while (it.hasNext()) {
                f fVar2 = (f) it.next();
                it.remove();
                if (fVar2.f19353e && (hVar = this.f19361d) != null) {
                    hVar.f(aVar, fVar2.f19349a);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x009f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final f c(int i10, c0 c0Var) {
        long j10;
        HashMap map = this.f19360c;
        f fVar = null;
        long j11 = Long.MAX_VALUE;
        for (f fVar2 : map.values()) {
            if (fVar2.f19351c == -1 && i10 == fVar2.f19350b && c0Var != null) {
                g gVar = fVar2.f19355g;
                f fVar3 = (f) gVar.f19360c.get(gVar.f19363f);
                if (fVar3 != null) {
                    long j12 = fVar3.f19351c;
                    if (j12 == -1) {
                        j12 = 1 + gVar.f19364g;
                    }
                    long j13 = c0Var.f5239d;
                    if (j13 >= j12) {
                        fVar2.f19351c = j13;
                    }
                }
            }
            c0 c0Var2 = fVar2.f19352d;
            if (c0Var != null) {
                long j14 = c0Var.f5239d;
                if (j14 != -1) {
                    if (c0Var2 == null) {
                        if (!c0Var.b() && j14 == fVar2.f19351c) {
                            j10 = fVar2.f19351c;
                            if (j10 == -1 || j10 < j11) {
                                fVar = fVar2;
                                j11 = j10;
                            } else if (j10 == j11) {
                                String str = f0.f15206a;
                                if (fVar.f19352d != null && c0Var2 != null) {
                                    fVar = fVar2;
                                }
                            }
                        }
                    } else if (j14 == c0Var2.f5239d && c0Var.f5237b == c0Var2.f5237b && c0Var.f5238c == c0Var2.f5238c) {
                        j10 = fVar2.f19351c;
                        if (j10 == -1) {
                        }
                        fVar = fVar2;
                        j11 = j10;
                    }
                }
            }
            if (i10 == fVar2.f19350b) {
                j10 = fVar2.f19351c;
                if (j10 == -1) {
                }
                fVar = fVar2;
                j11 = j10;
            }
        }
        if (fVar != null) {
            return fVar;
        }
        String str2 = (String) f19356h.get();
        f fVar4 = new f(this, str2, i10, c0Var);
        map.put(str2, fVar4);
        return fVar4;
    }

    public final synchronized String d(q0 q0Var, c0 c0Var) {
        return c(q0Var.g(c0Var.f5236a, this.f19359b).f13505c, c0Var).f19349a;
    }

    public final void e(a aVar) {
        c0 c0Var;
        boolean zP = aVar.f19329b.p();
        HashMap map = this.f19360c;
        if (zP) {
            String str = this.f19363f;
            if (str != null) {
                f fVar = (f) map.get(str);
                fVar.getClass();
                a(fVar);
                return;
            }
            return;
        }
        f fVar2 = (f) map.get(this.f19363f);
        int i10 = aVar.f19330c;
        c0 c0Var2 = aVar.f19331d;
        this.f19363f = c(i10, c0Var2).f19349a;
        f(aVar);
        if (c0Var2 == null || !c0Var2.b()) {
            return;
        }
        long j10 = c0Var2.f5239d;
        if (fVar2 != null && fVar2.f19351c == j10 && (c0Var = fVar2.f19352d) != null && c0Var.f5237b == c0Var2.f5237b && c0Var.f5238c == c0Var2.f5238c) {
            return;
        }
        c(i10, new c0(c0Var2.f5236a, j10));
        this.f19361d.getClass();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f A[Catch: all -> 0x0054, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0010, B:9:0x0014, B:11:0x001c, B:13:0x0028, B:16:0x002f, B:22:0x003a, B:24:0x0046, B:26:0x004c, B:32:0x0057, B:34:0x0063, B:35:0x0067, B:37:0x006c, B:39:0x0072, B:41:0x0089, B:42:0x00b6, B:44:0x00ba, B:45:0x00c1, B:47:0x00cb, B:49:0x00cf), top: B:54:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void f(a aVar) {
        this.f19361d.getClass();
        if (aVar.f19329b.p()) {
            return;
        }
        c0 c0Var = aVar.f19331d;
        if (c0Var != null) {
            long j10 = c0Var.f5239d;
            if (j10 != -1) {
                f fVar = (f) this.f19360c.get(this.f19363f);
                if (fVar != null) {
                    long j11 = fVar.f19351c;
                    if (j11 == -1) {
                        j11 = this.f19364g + 1;
                    }
                    if (j10 < j11) {
                        return;
                    }
                }
            }
            f fVar2 = (f) this.f19360c.get(this.f19363f);
            if (fVar2 != null && fVar2.f19351c == -1 && fVar2.f19350b != aVar.f19330c) {
                return;
            }
        }
        f fVarC = c(aVar.f19330c, aVar.f19331d);
        if (this.f19363f == null) {
            this.f19363f = fVarC.f19349a;
        }
        c0 c0Var2 = aVar.f19331d;
        if (c0Var2 != null && c0Var2.b()) {
            c0 c0Var3 = aVar.f19331d;
            Object obj = c0Var3.f5236a;
            f fVarC2 = c(aVar.f19330c, new c0(c0Var3.f5237b, c0Var3.f5239d, obj));
            if (!fVarC2.f19353e) {
                fVarC2.f19353e = true;
                aVar.f19329b.g(aVar.f19331d.f5236a, this.f19359b);
                this.f19359b.d(aVar.f19331d.f5237b);
                Math.max(0L, f0.R(0L) + f0.R(this.f19359b.f13507e));
                this.f19361d.getClass();
            }
        }
        if (!fVarC.f19353e) {
            fVarC.f19353e = true;
            this.f19361d.getClass();
        }
        if (fVarC.f19349a.equals(this.f19363f) && !fVarC.f19354f) {
            fVarC.f19354f = true;
            this.f19361d.e(aVar, fVarC.f19349a);
        }
    }

    public final synchronized void g(a aVar, int i10) {
        try {
            this.f19361d.getClass();
            boolean z = i10 == 0;
            Iterator it = this.f19360c.values().iterator();
            while (it.hasNext()) {
                f fVar = (f) it.next();
                if (fVar.a(aVar)) {
                    it.remove();
                    boolean zEquals = fVar.f19349a.equals(this.f19363f);
                    if (zEquals) {
                        a(fVar);
                    }
                    if (fVar.f19353e) {
                        if (z && zEquals) {
                            boolean z4 = fVar.f19354f;
                        }
                        this.f19361d.f(aVar, fVar.f19349a);
                    }
                }
            }
            e(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }
}

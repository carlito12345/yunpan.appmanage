package j$.util.concurrent;

import java.util.concurrent.locks.LockSupport;

/* loaded from: classes2.dex */
final class q extends l {

    /* renamed from: h, reason: collision with root package name */
    private static final j$.sun.misc.a f9115h;

    /* renamed from: i, reason: collision with root package name */
    private static final long f9116i;

    /* renamed from: e, reason: collision with root package name */
    r f9117e;

    /* renamed from: f, reason: collision with root package name */
    volatile r f9118f;

    /* renamed from: g, reason: collision with root package name */
    volatile Thread f9119g;
    volatile int lockState;

    static int i(Object obj, Object obj2) {
        int iCompareTo;
        return (obj == null || obj2 == null || (iCompareTo = obj.getClass().getName().compareTo(obj2.getClass().getName())) == 0) ? System.identityHashCode(obj) <= System.identityHashCode(obj2) ? -1 : 1 : iCompareTo;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004b A[PHI: r7
  0x004b: PHI (r7v3 java.lang.Class<?>) = (r7v2 java.lang.Class<?>), (r7v4 java.lang.Class<?>) binds: [B:24:0x0049, B:16:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    q(r rVar) {
        int i10;
        super(-2, null, null);
        this.f9118f = rVar;
        r rVar2 = null;
        while (rVar != null) {
            r rVar3 = (r) rVar.f9102d;
            rVar.f9122g = null;
            rVar.f9121f = null;
            if (rVar2 == null) {
                rVar.f9120e = null;
                rVar.f9124i = false;
            } else {
                Object obj = rVar.f9100b;
                int i11 = rVar.f9099a;
                r rVar4 = rVar2;
                Class<?> clsC = null;
                while (true) {
                    Object obj2 = rVar4.f9100b;
                    int i12 = rVar4.f9099a;
                    if (i12 > i11) {
                        i10 = -1;
                    } else if (i12 < i11) {
                        i10 = 1;
                    } else if (clsC != null || (clsC = ConcurrentHashMap.c(obj)) != null) {
                        int i13 = ConcurrentHashMap.f9066g;
                        int iCompareTo = (obj2 == null || obj2.getClass() != clsC) ? 0 : ((Comparable) obj).compareTo(obj2);
                        i10 = iCompareTo == 0 ? i(obj, obj2) : iCompareTo;
                    }
                    r rVar5 = i10 <= 0 ? rVar4.f9121f : rVar4.f9122g;
                    if (rVar5 == null) {
                        break;
                    } else {
                        rVar4 = rVar5;
                    }
                }
                rVar.f9120e = rVar4;
                if (i10 <= 0) {
                    rVar4.f9121f = rVar;
                } else {
                    rVar4.f9122g = rVar;
                }
                rVar = c(rVar2, rVar);
            }
            rVar2 = rVar;
            rVar = rVar3;
        }
        this.f9117e = rVar2;
    }

    private final void d() {
        if (f9115h.c(this, f9116i, 0, 1)) {
            return;
        }
        boolean z = false;
        while (true) {
            int i10 = this.lockState;
            if ((i10 & (-3)) == 0) {
                if (f9115h.c(this, f9116i, i10, 1)) {
                    break;
                }
            } else if ((i10 & 2) == 0) {
                if (f9115h.c(this, f9116i, i10, i10 | 2)) {
                    this.f9119g = Thread.currentThread();
                    z = true;
                }
            } else if (z) {
                LockSupport.park(this);
            }
        }
        if (z) {
            this.f9119g = null;
        }
    }

    @Override // j$.util.concurrent.l
    final l a(Object obj, int i10) {
        Object obj2;
        Thread thread;
        Thread thread2;
        r rVarB = null;
        if (obj != null) {
            l lVar = this.f9118f;
            while (lVar != null) {
                int i11 = this.lockState;
                if ((i11 & 3) != 0) {
                    if (lVar.f9099a == i10 && ((obj2 = lVar.f9100b) == obj || (obj2 != null && obj.equals(obj2)))) {
                        return lVar;
                    }
                    lVar = lVar.f9102d;
                } else {
                    j$.sun.misc.a aVar = f9115h;
                    long j10 = f9116i;
                    if (aVar.c(this, j10, i11, i11 + 4)) {
                        try {
                            r rVar = this.f9117e;
                            if (rVar != null) {
                                rVarB = rVar.b(i10, obj, null);
                            }
                            if (aVar.f(this, j10) == 6 && (thread2 = this.f9119g) != null) {
                                LockSupport.unpark(thread2);
                            }
                            return rVarB;
                        } catch (Throwable th2) {
                            if (f9115h.f(this, f9116i) == 6 && (thread = this.f9119g) != null) {
                                LockSupport.unpark(thread);
                            }
                            throw th2;
                        }
                    }
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b3, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00bb, code lost:
    
        return r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005a A[PHI: r2
  0x005a: PHI (r2v5 java.lang.Class<?>) = (r2v4 java.lang.Class<?>), (r2v6 java.lang.Class<?>) binds: [B:26:0x0058, B:18:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final r e(int i10, Object obj, Object obj2) {
        int i11;
        r rVar;
        r rVar2 = this.f9117e;
        Class<?> clsC = null;
        boolean z = false;
        while (true) {
            if (rVar2 == null) {
                r rVar3 = new r(i10, obj, obj2, null, null);
                this.f9117e = rVar3;
                this.f9118f = rVar3;
                break;
            }
            int i12 = rVar2.f9099a;
            if (i12 > i10) {
                i11 = -1;
            } else if (i12 < i10) {
                i11 = 1;
            } else {
                Object obj3 = rVar2.f9100b;
                if (obj3 == obj || (obj3 != null && obj.equals(obj3))) {
                    break;
                }
                if (clsC != null || (clsC = ConcurrentHashMap.c(obj)) != null) {
                    int i13 = ConcurrentHashMap.f9066g;
                    int iCompareTo = (obj3 == null || obj3.getClass() != clsC) ? 0 : ((Comparable) obj).compareTo(obj3);
                    if (iCompareTo == 0) {
                        if (!z) {
                            r rVar4 = rVar2.f9121f;
                            if ((rVar4 != null && (r3 = rVar4.b(i10, obj, clsC)) != null) || ((rVar = rVar2.f9122g) != null && (r3 = rVar.b(i10, obj, clsC)) != null)) {
                                break;
                            }
                            z = true;
                        }
                        i11 = i(obj, obj3);
                    } else {
                        i11 = iCompareTo;
                    }
                }
            }
            r rVar5 = i11 <= 0 ? rVar2.f9121f : rVar2.f9122g;
            if (rVar5 == null) {
                r rVar6 = this.f9118f;
                r rVar7 = new r(i10, obj, obj2, rVar6, rVar2);
                this.f9118f = rVar7;
                if (rVar6 != null) {
                    rVar6.f9123h = rVar7;
                }
                if (i11 <= 0) {
                    rVar2.f9121f = rVar7;
                } else {
                    rVar2.f9122g = rVar7;
                }
                if (!rVar2.f9124i) {
                    rVar7.f9124i = true;
                } else {
                    d();
                    try {
                        this.f9117e = c(this.f9117e, rVar7);
                    } finally {
                        this.lockState = 0;
                    }
                }
            } else {
                rVar2 = rVar5;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x008e A[PHI: r0
  0x008e: PHI (r0v4 j$.util.concurrent.r) = (r0v3 j$.util.concurrent.r), (r0v12 j$.util.concurrent.r) binds: [B:55:0x008a, B:51:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final boolean f(r rVar) {
        r rVar2;
        r rVar3;
        r rVar4 = (r) rVar.f9102d;
        r rVar5 = rVar.f9123h;
        if (rVar5 == null) {
            this.f9118f = rVar4;
        } else {
            rVar5.f9102d = rVar4;
        }
        if (rVar4 != null) {
            rVar4.f9123h = rVar5;
        }
        if (this.f9118f == null) {
            this.f9117e = null;
            return true;
        }
        r rVarB = this.f9117e;
        if (rVarB == null || rVarB.f9122g == null || (rVar2 = rVarB.f9121f) == null || rVar2.f9121f == null) {
            return true;
        }
        d();
        try {
            r rVar6 = rVar.f9121f;
            r rVar7 = rVar.f9122g;
            if (rVar6 != null && rVar7 != null) {
                r rVar8 = rVar7;
                while (true) {
                    r rVar9 = rVar8.f9121f;
                    if (rVar9 == null) {
                        break;
                    }
                    rVar8 = rVar9;
                }
                boolean z = rVar8.f9124i;
                rVar8.f9124i = rVar.f9124i;
                rVar.f9124i = z;
                r rVar10 = rVar8.f9122g;
                r rVar11 = rVar.f9120e;
                if (rVar8 == rVar7) {
                    rVar.f9120e = rVar8;
                    rVar8.f9122g = rVar;
                } else {
                    r rVar12 = rVar8.f9120e;
                    rVar.f9120e = rVar12;
                    if (rVar12 != null) {
                        if (rVar8 == rVar12.f9121f) {
                            rVar12.f9121f = rVar;
                        } else {
                            rVar12.f9122g = rVar;
                        }
                    }
                    rVar8.f9122g = rVar7;
                    rVar7.f9120e = rVar8;
                }
                rVar.f9121f = null;
                rVar.f9122g = rVar10;
                if (rVar10 != null) {
                    rVar10.f9120e = rVar;
                }
                rVar8.f9121f = rVar6;
                rVar6.f9120e = rVar8;
                rVar8.f9120e = rVar11;
                if (rVar11 == null) {
                    rVarB = rVar8;
                } else if (rVar == rVar11.f9121f) {
                    rVar11.f9121f = rVar8;
                } else {
                    rVar11.f9122g = rVar8;
                }
                if (rVar10 != null) {
                    rVar6 = rVar10;
                }
            } else if (rVar6 == null) {
                rVar6 = rVar7 != null ? rVar7 : rVar;
            }
            if (rVar6 != rVar) {
                r rVar13 = rVar.f9120e;
                rVar6.f9120e = rVar13;
                if (rVar13 == null) {
                    rVarB = rVar6;
                } else if (rVar == rVar13.f9121f) {
                    rVar13.f9121f = rVar6;
                } else {
                    rVar13.f9122g = rVar6;
                }
                rVar.f9120e = null;
                rVar.f9122g = null;
                rVar.f9121f = null;
            }
            if (!rVar.f9124i) {
                rVarB = b(rVarB, rVar6);
            }
            this.f9117e = rVarB;
            if (rVar == rVar6 && (rVar3 = rVar.f9120e) != null) {
                if (rVar == rVar3.f9121f) {
                    rVar3.f9121f = null;
                } else if (rVar == rVar3.f9122g) {
                    rVar3.f9122g = null;
                }
                rVar.f9120e = null;
            }
            this.lockState = 0;
            return false;
        } catch (Throwable th2) {
            this.lockState = 0;
            throw th2;
        }
    }

    static r g(r rVar, r rVar2) {
        r rVar3;
        if (rVar2 != null && (rVar3 = rVar2.f9122g) != null) {
            r rVar4 = rVar3.f9121f;
            rVar2.f9122g = rVar4;
            if (rVar4 != null) {
                rVar4.f9120e = rVar2;
            }
            r rVar5 = rVar2.f9120e;
            rVar3.f9120e = rVar5;
            if (rVar5 == null) {
                rVar3.f9124i = false;
                rVar = rVar3;
            } else if (rVar5.f9121f == rVar2) {
                rVar5.f9121f = rVar3;
            } else {
                rVar5.f9122g = rVar3;
            }
            rVar3.f9121f = rVar2;
            rVar2.f9120e = rVar3;
        }
        return rVar;
    }

    static r h(r rVar, r rVar2) {
        r rVar3;
        if (rVar2 != null && (rVar3 = rVar2.f9121f) != null) {
            r rVar4 = rVar3.f9122g;
            rVar2.f9121f = rVar4;
            if (rVar4 != null) {
                rVar4.f9120e = rVar2;
            }
            r rVar5 = rVar2.f9120e;
            rVar3.f9120e = rVar5;
            if (rVar5 == null) {
                rVar3.f9124i = false;
                rVar = rVar3;
            } else if (rVar5.f9122g == rVar2) {
                rVar5.f9122g = rVar3;
            } else {
                rVar5.f9121f = rVar3;
            }
            rVar3.f9122g = rVar2;
            rVar2.f9120e = rVar3;
        }
        return rVar;
    }

    static r c(r rVar, r rVar2) {
        r rVar3;
        rVar2.f9124i = true;
        while (true) {
            r rVar4 = rVar2.f9120e;
            if (rVar4 == null) {
                rVar2.f9124i = false;
                return rVar2;
            }
            if (!rVar4.f9124i || (rVar3 = rVar4.f9120e) == null) {
                break;
            }
            r rVar5 = rVar3.f9121f;
            if (rVar4 == rVar5) {
                r rVar6 = rVar3.f9122g;
                if (rVar6 != null && rVar6.f9124i) {
                    rVar6.f9124i = false;
                    rVar4.f9124i = false;
                    rVar3.f9124i = true;
                    rVar2 = rVar3;
                } else {
                    if (rVar2 == rVar4.f9122g) {
                        rVar = g(rVar, rVar4);
                        r rVar7 = rVar4.f9120e;
                        rVar3 = rVar7 == null ? null : rVar7.f9120e;
                        rVar4 = rVar7;
                        rVar2 = rVar4;
                    }
                    if (rVar4 != null) {
                        rVar4.f9124i = false;
                        if (rVar3 != null) {
                            rVar3.f9124i = true;
                            rVar = h(rVar, rVar3);
                        }
                    }
                }
            } else if (rVar5 != null && rVar5.f9124i) {
                rVar5.f9124i = false;
                rVar4.f9124i = false;
                rVar3.f9124i = true;
                rVar2 = rVar3;
            } else {
                if (rVar2 == rVar4.f9121f) {
                    rVar = h(rVar, rVar4);
                    r rVar8 = rVar4.f9120e;
                    rVar3 = rVar8 == null ? null : rVar8.f9120e;
                    rVar4 = rVar8;
                    rVar2 = rVar4;
                }
                if (rVar4 != null) {
                    rVar4.f9124i = false;
                    if (rVar3 != null) {
                        rVar3.f9124i = true;
                        rVar = g(rVar, rVar3);
                    }
                }
            }
        }
        return rVar;
    }

    static r b(r rVar, r rVar2) {
        while (rVar2 != null && rVar2 != rVar) {
            r rVar3 = rVar2.f9120e;
            if (rVar3 == null) {
                rVar2.f9124i = false;
                return rVar2;
            }
            if (rVar2.f9124i) {
                rVar2.f9124i = false;
                return rVar;
            }
            r rVar4 = rVar3.f9121f;
            if (rVar4 == rVar2) {
                r rVar5 = rVar3.f9122g;
                if (rVar5 != null && rVar5.f9124i) {
                    rVar5.f9124i = false;
                    rVar3.f9124i = true;
                    rVar = g(rVar, rVar3);
                    rVar3 = rVar2.f9120e;
                    rVar5 = rVar3 == null ? null : rVar3.f9122g;
                }
                if (rVar5 != null) {
                    r rVar6 = rVar5.f9121f;
                    r rVar7 = rVar5.f9122g;
                    if ((rVar7 == null || !rVar7.f9124i) && (rVar6 == null || !rVar6.f9124i)) {
                        rVar5.f9124i = true;
                    } else {
                        if (rVar7 == null || !rVar7.f9124i) {
                            if (rVar6 != null) {
                                rVar6.f9124i = false;
                            }
                            rVar5.f9124i = true;
                            rVar = h(rVar, rVar5);
                            rVar3 = rVar2.f9120e;
                            rVar5 = rVar3 != null ? rVar3.f9122g : null;
                        }
                        if (rVar5 != null) {
                            rVar5.f9124i = rVar3 == null ? false : rVar3.f9124i;
                            r rVar8 = rVar5.f9122g;
                            if (rVar8 != null) {
                                rVar8.f9124i = false;
                            }
                        }
                        if (rVar3 != null) {
                            rVar3.f9124i = false;
                            rVar = g(rVar, rVar3);
                        }
                        rVar2 = rVar;
                    }
                }
                rVar2 = rVar3;
            } else {
                if (rVar4 != null && rVar4.f9124i) {
                    rVar4.f9124i = false;
                    rVar3.f9124i = true;
                    rVar = h(rVar, rVar3);
                    rVar3 = rVar2.f9120e;
                    rVar4 = rVar3 == null ? null : rVar3.f9121f;
                }
                if (rVar4 != null) {
                    r rVar9 = rVar4.f9121f;
                    r rVar10 = rVar4.f9122g;
                    if ((rVar9 == null || !rVar9.f9124i) && (rVar10 == null || !rVar10.f9124i)) {
                        rVar4.f9124i = true;
                    } else {
                        if (rVar9 == null || !rVar9.f9124i) {
                            if (rVar10 != null) {
                                rVar10.f9124i = false;
                            }
                            rVar4.f9124i = true;
                            rVar = g(rVar, rVar4);
                            rVar3 = rVar2.f9120e;
                            rVar4 = rVar3 != null ? rVar3.f9121f : null;
                        }
                        if (rVar4 != null) {
                            rVar4.f9124i = rVar3 == null ? false : rVar3.f9124i;
                            r rVar11 = rVar4.f9121f;
                            if (rVar11 != null) {
                                rVar11.f9124i = false;
                            }
                        }
                        if (rVar3 != null) {
                            rVar3.f9124i = false;
                            rVar = h(rVar, rVar3);
                        }
                        rVar2 = rVar;
                    }
                }
                rVar2 = rVar3;
            }
        }
        return rVar;
    }

    static {
        j$.sun.misc.a aVarH = j$.sun.misc.a.h();
        f9115h = aVarH;
        f9116i = aVarH.j(q.class, "lockState");
    }
}

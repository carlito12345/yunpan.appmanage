package w4;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f17443a;

    /* renamed from: b, reason: collision with root package name */
    public final g f17444b;

    /* renamed from: c, reason: collision with root package name */
    public final b5.e f17445c;

    /* renamed from: d, reason: collision with root package name */
    public final int f17446d;

    public a(int i10, g gVar, b5.e eVar, int i11) {
        int i12;
        if (i10 < 0) {
            throw new IllegalArgumentException("label < 0");
        }
        try {
            if (gVar.f2570a) {
                throw new b5.g("mutable instance");
            }
            int length = gVar.f2559b.length;
            if (length == 0) {
                throw new IllegalArgumentException("insns.size() == 0");
            }
            int i13 = length - 2;
            while (true) {
                if (i13 < 0) {
                    if (((f) gVar.d(length - 1)).f17458a.f17475e == 1) {
                        throw new IllegalArgumentException("insns does not end with a branch or throwing instruction");
                    }
                    try {
                        if (eVar.f2570a) {
                            throw new b5.g("mutable instance");
                        }
                        if (i11 < -1) {
                            throw new IllegalArgumentException("primarySuccessor < -1");
                        }
                        if (i11 >= 0) {
                            int i14 = eVar.f2568c;
                            if (!eVar.f2569d) {
                                i12 = 0;
                                while (true) {
                                    if (i12 >= i14) {
                                        i12 = -i14;
                                        break;
                                    } else if (eVar.f2567b[i12] == i11) {
                                        break;
                                    } else {
                                        i12++;
                                    }
                                }
                            } else {
                                i12 = i14;
                                int i15 = -1;
                                while (i12 > i15 + 1) {
                                    int i16 = ((i12 - i15) >> 1) + i15;
                                    if (i11 <= eVar.f2567b[i16]) {
                                        i12 = i16;
                                    } else {
                                        i15 = i16;
                                    }
                                }
                                if (i12 == i14) {
                                    i12 = (-i14) - 1;
                                } else if (i11 != eVar.f2567b[i12]) {
                                    i12 = (-i12) - 1;
                                }
                            }
                            if (!((i12 >= 0 ? i12 : -1) >= 0)) {
                                throw new IllegalArgumentException("primarySuccessor " + i11 + " not in successors " + eVar);
                            }
                        }
                        this.f17443a = i10;
                        this.f17444b = gVar;
                        this.f17445c = eVar;
                        this.f17446d = i11;
                        return;
                    } catch (NullPointerException unused) {
                        throw new NullPointerException("successors == null");
                    }
                }
                if (((f) gVar.d(i13)).f17458a.f17475e != 1) {
                    throw new IllegalArgumentException(g.b.i("insns[", i13, "] is a branch or can throw"));
                }
                i13--;
            }
        } catch (NullPointerException unused2) {
            throw new NullPointerException("insns == null");
        }
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        return "{" + qf.c.e0(this.f17443a) + '}';
    }
}

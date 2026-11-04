package f2;

/* loaded from: classes.dex */
public final class e extends r {

    /* renamed from: c, reason: collision with root package name */
    public final long f5245c;

    /* renamed from: d, reason: collision with root package name */
    public final long f5246d;

    /* renamed from: e, reason: collision with root package name */
    public final long f5247e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f5248f;

    public e(r1.q0 q0Var, long j10, long j11) throws f {
        super(q0Var);
        if (j11 != Long.MIN_VALUE && j11 < j10) {
            throw new f(2, j10, j11);
        }
        boolean z = false;
        if (q0Var.h() != 1) {
            throw new f(0);
        }
        r1.p0 p0VarM = q0Var.m(0, new r1.p0(), 0L);
        long jMax = Math.max(0L, j10);
        if (!p0VarM.f13544j && jMax != 0 && !p0VarM.f13541g) {
            throw new f(1);
        }
        long jMax2 = j11 == Long.MIN_VALUE ? p0VarM.l : Math.max(0L, j11);
        long j12 = p0VarM.l;
        if (j12 != -9223372036854775807L) {
            jMax2 = jMax2 > j12 ? j12 : jMax2;
            if (jMax > jMax2) {
                jMax = jMax2;
            }
        }
        this.f5245c = jMax;
        this.f5246d = jMax2;
        this.f5247e = jMax2 == -9223372036854775807L ? -9223372036854775807L : jMax2 - jMax;
        if (p0VarM.f13542h && (jMax2 == -9223372036854775807L || (j12 != -9223372036854775807L && jMax2 == j12))) {
            z = true;
        }
        this.f5248f = z;
    }

    @Override // f2.r, r1.q0
    public final r1.o0 f(int i10, r1.o0 o0Var, boolean z) {
        this.f5361b.f(0, o0Var, z);
        long j10 = o0Var.f13507e - this.f5245c;
        long j11 = this.f5247e;
        o0Var.h(o0Var.f13503a, o0Var.f13504b, 0, j11 == -9223372036854775807L ? -9223372036854775807L : j11 - j10, j10, r1.c.f13422c, false);
        return o0Var;
    }

    @Override // f2.r, r1.q0
    public final r1.p0 m(int i10, r1.p0 p0Var, long j10) {
        this.f5361b.m(0, p0Var, 0L);
        long j11 = p0Var.f13548o;
        long j12 = this.f5245c;
        p0Var.f13548o = j11 + j12;
        p0Var.l = this.f5247e;
        p0Var.f13542h = this.f5248f;
        long j13 = p0Var.f13545k;
        if (j13 != -9223372036854775807L) {
            long jMax = Math.max(j13, j12);
            p0Var.f13545k = jMax;
            long j14 = this.f5246d;
            if (j14 != -9223372036854775807L) {
                jMax = Math.min(jMax, j14);
            }
            p0Var.f13545k = jMax - j12;
        }
        long jR = u1.f0.R(j12);
        long j15 = p0Var.f13538d;
        if (j15 != -9223372036854775807L) {
            p0Var.f13538d = j15 + jR;
        }
        long j16 = p0Var.f13539e;
        if (j16 != -9223372036854775807L) {
            p0Var.f13539e = j16 + jR;
        }
        return p0Var;
    }
}

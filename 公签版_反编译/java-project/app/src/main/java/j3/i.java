package j3;

import a9.o;
import h5.m;
import ha.p7;
import java.util.ArrayDeque;
import u1.f0;

/* loaded from: classes.dex */
public abstract class i implements i3.e {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque f9734a = new ArrayDeque();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f9735b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f9736c;

    /* renamed from: d, reason: collision with root package name */
    public h f9737d;

    /* renamed from: e, reason: collision with root package name */
    public long f9738e;

    /* renamed from: f, reason: collision with root package name */
    public long f9739f;

    /* renamed from: g, reason: collision with root package name */
    public long f9740g;

    public i() {
        for (int i10 = 0; i10 < 10; i10++) {
            this.f9734a.add(new h());
        }
        this.f9735b = new ArrayDeque();
        for (int i11 = 0; i11 < 2; i11++) {
            this.f9735b.add(new i3.c(new p7(29, this)));
        }
        this.f9736c = new ArrayDeque();
        this.f9740g = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    @Override // x1.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(i3.g gVar) {
        o.k(gVar == this.f9737d);
        h hVar = (h) gVar;
        if (!hVar.c(4)) {
            long j10 = hVar.f18089g;
            if (j10 != Long.MIN_VALUE) {
                long j11 = this.f9740g;
                if (j11 == -9223372036854775807L || j10 >= j11) {
                    long j12 = this.f9739f;
                    this.f9739f = 1 + j12;
                    hVar.f9733k = j12;
                    this.f9736c.add(hVar);
                } else {
                    hVar.g();
                    this.f9734a.add(hVar);
                }
            }
        }
        this.f9737d = null;
    }

    @Override // x1.d
    public final void c(long j10) {
        this.f9740g = j10;
    }

    @Override // i3.e
    public final void d(long j10) {
        this.f9738e = j10;
    }

    @Override // x1.d
    public final Object f() {
        o.t(this.f9737d == null);
        ArrayDeque arrayDeque = this.f9734a;
        if (arrayDeque.isEmpty()) {
            return null;
        }
        h hVar = (h) arrayDeque.pollFirst();
        this.f9737d = hVar;
        return hVar;
    }

    @Override // x1.d
    public void flush() {
        ArrayDeque arrayDeque;
        this.f9739f = 0L;
        this.f9738e = 0L;
        while (true) {
            ArrayDeque arrayDeque2 = this.f9736c;
            boolean zIsEmpty = arrayDeque2.isEmpty();
            arrayDeque = this.f9734a;
            if (zIsEmpty) {
                break;
            }
            h hVar = (h) arrayDeque2.poll();
            String str = f0.f15206a;
            hVar.g();
            arrayDeque.add(hVar);
        }
        h hVar2 = this.f9737d;
        if (hVar2 != null) {
            hVar2.g();
            arrayDeque.add(hVar2);
            this.f9737d = null;
        }
    }

    public abstract m g();

    public abstract void h(h hVar);

    /* JADX WARN: Code restructure failed: missing block: B:18:0x006a, code lost:
    
        return null;
     */
    @Override // x1.d
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public i3.c e() {
        ArrayDeque arrayDeque = this.f9735b;
        if (!arrayDeque.isEmpty()) {
            while (true) {
                ArrayDeque arrayDeque2 = this.f9736c;
                if (!arrayDeque2.isEmpty()) {
                    h hVar = (h) arrayDeque2.peek();
                    String str = f0.f15206a;
                    if (hVar.f18089g > this.f9738e) {
                        break;
                    }
                    h hVar2 = (h) arrayDeque2.poll();
                    boolean zC = hVar2.c(4);
                    ArrayDeque arrayDeque3 = this.f9734a;
                    if (zC) {
                        i3.c cVar = (i3.c) arrayDeque.pollFirst();
                        cVar.a(4);
                        hVar2.g();
                        arrayDeque3.add(hVar2);
                        return cVar;
                    }
                    h(hVar2);
                    if (j()) {
                        m mVarG = g();
                        i3.c cVar2 = (i3.c) arrayDeque.pollFirst();
                        long j10 = hVar2.f18089g;
                        cVar2.f18092c = j10;
                        cVar2.f8491e = mVarG;
                        cVar2.f8492f = j10;
                        hVar2.g();
                        arrayDeque3.add(hVar2);
                        return cVar2;
                    }
                    hVar2.g();
                    arrayDeque3.add(hVar2);
                } else {
                    break;
                }
            }
        } else {
            return null;
        }
    }

    public abstract boolean j();

    @Override // x1.d
    public void a() {
    }
}

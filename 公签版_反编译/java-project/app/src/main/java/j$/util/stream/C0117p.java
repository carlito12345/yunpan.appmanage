package j$.util.stream;

import j$.util.C0031h;
import j$.util.C0032i;
import j$.util.C0034k;
import j$.util.C0035l;
import j$.util.C0036m;
import j$.util.C0037n;
import j$.util.Optional;
import j$.util.function.BiConsumer$CC;
import j$.util.function.Predicate$CC;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleFunction;
import java.util.function.IntBinaryOperator;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0117p implements ObjDoubleConsumer, BiConsumer, DoubleFunction, ToDoubleFunction, IntFunction, DoubleBinaryOperator, Supplier, Predicate, ToIntFunction, IntBinaryOperator, ObjIntConsumer, ObjLongConsumer, LongBinaryOperator, ToLongFunction, LongFunction {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9518a;

    public /* synthetic */ C0117p(int i10) {
        this.f9518a = i10;
    }

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d10) {
        ((C0031h) obj).accept(d10);
    }

    @Override // java.util.function.ObjLongConsumer
    public void accept(Object obj, long j10) {
        ((C0034k) obj).accept(j10);
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.f9518a) {
        }
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f9518a) {
            case 1:
                break;
            case 17:
                break;
            case 22:
                break;
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d10) {
        return Double.valueOf(d10);
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j10) {
        return Long.valueOf(j10);
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d10, double d11) {
        return Math.max(d10, d11);
    }

    @Override // java.util.function.IntBinaryOperator
    public int applyAsInt(int i10, int i11) {
        switch (this.f9518a) {
            case 15:
                return Math.min(i10, i11);
            case 18:
                return i10 + i11;
            default:
                return Math.max(i10, i11);
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j10, long j11) {
        return Math.min(j10, j11);
    }

    public /* synthetic */ Predicate negate() {
        switch (this.f9518a) {
        }
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.f9518a) {
        }
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        switch (this.f9518a) {
            case 7:
                return ((C0035l) obj).c();
            case 8:
                return ((C0036m) obj).c();
            case 9:
                return ((C0037n) obj).c();
            default:
                return ((Optional) obj).c();
        }
    }

    @Override // java.util.function.ToDoubleFunction
    public double applyAsDouble(Object obj) {
        return ((Double) obj).doubleValue();
    }

    @Override // java.util.function.ToLongFunction
    public long applyAsLong(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override // java.util.function.ToIntFunction
    public int applyAsInt(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f9518a) {
            case 6:
                return new double[3];
            case 20:
                return new long[2];
            default:
                return new long[2];
        }
    }

    @Override // java.util.function.ObjIntConsumer
    public void accept(Object obj, int i10) {
        switch (this.f9518a) {
            case 16:
                ((C0032i) obj).accept(i10);
                break;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + i10;
                break;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f9518a) {
            case 1:
                ((C0031h) obj).b((C0031h) obj2);
                break;
            case 17:
                ((C0032i) obj).b((C0032i) obj2);
                break;
            case 22:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                break;
            default:
                ((C0034k) obj).b((C0034k) obj2);
                break;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i10) {
        switch (this.f9518a) {
            case 4:
                return new Double[i10];
            case 11:
                return new Object[i10];
            case 12:
                return new Integer[i10];
            case 14:
                return Integer.valueOf(i10);
            default:
                return new Long[i10];
        }
    }
}

package j$.util.stream;

import j$.util.C0029f;
import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import j$.util.function.Function$CC;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.ArrayList;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.DoubleFunction;
import java.util.function.Function;
import java.util.function.LongFunction;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;

/* renamed from: j$.util.stream.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0042a implements Supplier, Consumer, BooleanSupplier, DoubleFunction, Function, LongFunction {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9390a;

    /* renamed from: b, reason: collision with root package name */
    public Object f9391b;

    public /* synthetic */ C0042a(Object obj, int i10) {
        this.f9390a = i10;
        this.f9391b = obj;
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f9390a) {
            case 1:
                ((InterfaceC0125q2) this.f9391b).accept((InterfaceC0125q2) obj);
                break;
            default:
                ((ArrayList) this.f9391b).add(obj);
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f9390a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo10andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f9390a) {
            case 0:
                return ((AbstractC0047b) this.f9391b).Q0();
            default:
                return (Spliterator) this.f9391b;
        }
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Object objApply = ((Function) this.f9391b).apply(obj);
        if (objApply == null) {
            return null;
        }
        if (objApply instanceof Stream) {
            return Stream.Wrapper.convert((Stream) objApply);
        }
        if (objApply instanceof java.util.stream.Stream) {
            return C0051b3.f((java.util.stream.Stream) objApply);
        }
        if (objApply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) objApply);
        }
        if (objApply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) objApply);
        }
        if (objApply instanceof E) {
            return D.f((E) objApply);
        }
        if (objApply instanceof DoubleStream) {
            return C.f((DoubleStream) objApply);
        }
        if (objApply instanceof LongStream) {
            return C0113o0.f((LongStream) objApply);
        }
        if (objApply instanceof java.util.stream.LongStream) {
            return C0108n0.f((java.util.stream.LongStream) objApply);
        }
        C0029f.a("java.util.stream.*Stream", objApply.getClass());
        throw null;
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d10) {
        Object objApply = ((DoubleFunction) this.f9391b).apply(d10);
        if (objApply == null) {
            return null;
        }
        if (objApply instanceof E) {
            return D.f((E) objApply);
        }
        if (objApply instanceof DoubleStream) {
            return C.f((DoubleStream) objApply);
        }
        C0029f.a("java.util.stream.DoubleStream", objApply.getClass());
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j10) {
        Object objApply = ((LongFunction) this.f9391b).apply(j10);
        if (objApply == null) {
            return null;
        }
        if (objApply instanceof LongStream) {
            return C0113o0.f((LongStream) objApply);
        }
        if (objApply instanceof java.util.stream.LongStream) {
            return C0108n0.f((java.util.stream.LongStream) objApply);
        }
        C0029f.a("java.util.stream.LongStream", objApply.getClass());
        throw null;
    }

    @Override // java.util.function.BooleanSupplier
    public boolean getAsBoolean() {
        switch (this.f9390a) {
            case 2:
                C0126q3 c0126q3 = (C0126q3) this.f9391b;
                return c0126q3.f9462d.tryAdvance(c0126q3.f9463e);
            case 3:
                C0135s3 c0135s3 = (C0135s3) this.f9391b;
                return c0135s3.f9462d.tryAdvance(c0135s3.f9463e);
            case 4:
                C0145u3 c0145u3 = (C0145u3) this.f9391b;
                return c0145u3.f9462d.tryAdvance(c0145u3.f9463e);
            default:
                J3 j32 = (J3) this.f9391b;
                return j32.f9462d.tryAdvance(j32.f9463e);
        }
    }
}

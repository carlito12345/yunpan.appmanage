package j$.util.stream;

import j$.util.C0029f;
import j$.util.stream.IntStream;
import java.util.function.IntFunction;
import java.util.function.LongFunction;

/* loaded from: classes2.dex */
public final /* synthetic */ class R0 implements LongFunction, IntFunction {

    /* renamed from: a, reason: collision with root package name */
    public IntFunction f9319a;

    public /* synthetic */ R0(IntFunction intFunction) {
        this.f9319a = intFunction;
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i10) {
        Object objApply = this.f9319a.apply(i10);
        if (objApply == null) {
            return null;
        }
        if (objApply instanceof IntStream) {
            return IntStream.Wrapper.convert((IntStream) objApply);
        }
        if (objApply instanceof java.util.stream.IntStream) {
            return IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) objApply);
        }
        C0029f.a("java.util.stream.IntStream", objApply.getClass());
        throw null;
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j10) {
        return AbstractC0167z0.b0(j10, this.f9319a);
    }
}

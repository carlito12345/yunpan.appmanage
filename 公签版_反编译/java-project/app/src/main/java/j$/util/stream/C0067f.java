package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.stream.DoubleStream;

/* renamed from: j$.util.stream.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0067f implements BaseStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ java.util.stream.BaseStream f9429a;

    private /* synthetic */ C0067f(java.util.stream.BaseStream baseStream) {
        this.f9429a = baseStream;
    }

    public static /* synthetic */ BaseStream f(java.util.stream.BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C0072g ? ((C0072g) baseStream).f9452a : baseStream instanceof DoubleStream ? C.f((DoubleStream) baseStream) : baseStream instanceof java.util.stream.IntStream ? IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) baseStream) : baseStream instanceof java.util.stream.LongStream ? C0108n0.f((java.util.stream.LongStream) baseStream) : baseStream instanceof java.util.stream.Stream ? C0051b3.f((java.util.stream.Stream) baseStream) : new C0067f(baseStream);
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f9429a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.BaseStream baseStream = this.f9429a;
        if (obj instanceof C0067f) {
            obj = ((C0067f) obj).f9429a;
        }
        return baseStream.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.f9429a.hashCode();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f9429a.isParallel();
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ Iterator iterator() {
        return this.f9429a.iterator();
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return f(this.f9429a.onClose(runnable));
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream parallel() {
        return f(this.f9429a.parallel());
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.E
    public final /* synthetic */ BaseStream sequential() {
        return f(this.f9429a.sequential());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.P.a(this.f9429a.spliterator());
    }

    @Override // j$.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return f(this.f9429a.unordered());
    }
}

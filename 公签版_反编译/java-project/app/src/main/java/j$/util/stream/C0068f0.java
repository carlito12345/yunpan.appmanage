package j$.util.stream;

import j$.util.function.BiConsumer$CC;
import j$.util.function.Consumer$CC;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.ObjLongConsumer;

/* renamed from: j$.util.stream.f0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0068f0 implements ObjLongConsumer, BiConsumer, LongBinaryOperator, Consumer, IntFunction {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9430a;

    public /* synthetic */ C0068f0(int i10) {
        this.f9430a = i10;
    }

    private final void accept$j$$util$stream$Node$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1(Object obj) {
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        int i10 = this.f9430a;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f9430a) {
            case 4:
                break;
            case 10:
                break;
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j10, long j11) {
        switch (this.f9430a) {
            case 2:
                return Math.max(j10, j11);
            default:
                return j10 + j11;
        }
    }

    @Override // java.util.function.ObjLongConsumer
    public void accept(Object obj, long j10) {
        long[] jArr = (long[]) obj;
        jArr[0] = jArr[0] + 1;
        jArr[1] = jArr[1] + j10;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        long[] jArr = (long[]) obj;
        long[] jArr2 = (long[]) obj2;
        jArr[0] = jArr[0] + jArr2[0];
        jArr[1] = jArr[1] + jArr2[1];
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i10) {
        switch (this.f9430a) {
            case 5:
                return new Object[i10];
            case 6:
                return new Object[i10];
            case 7:
                return new Integer[i10];
            case 8:
                return new Long[i10];
            case 9:
                return new Double[i10];
            case 10:
            case 11:
            default:
                return new Double[i10];
            case 12:
                return new Integer[i10];
            case 13:
                return new Integer[i10];
            case 14:
                return new Long[i10];
            case 15:
                return new Long[i10];
            case 16:
                return new Double[i10];
        }
    }
}

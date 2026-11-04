package tg;

import j$.util.function.IntUnaryOperator$CC;
import java.nio.charset.Charset;
import java.nio.file.OpenOption;
import java.util.function.IntUnaryOperator;

/* loaded from: classes.dex */
public abstract class d extends b {

    /* renamed from: d, reason: collision with root package name */
    public static final OpenOption[] f15100d = ug.a.f16111a;

    /* renamed from: c, reason: collision with root package name */
    public final OpenOption[] f15101c;

    public d() {
        Charset.defaultCharset();
        Charset.defaultCharset();
        this.f15101c = f15100d;
        new IntUnaryOperator() { // from class: tg.c
            public final /* synthetic */ IntUnaryOperator andThen(IntUnaryOperator intUnaryOperator) {
                return IntUnaryOperator$CC.$default$andThen(this, intUnaryOperator);
            }

            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i10) {
                this.f15099a.getClass();
                if (i10 <= Integer.MAX_VALUE) {
                    return i10;
                }
                throw new IllegalArgumentException(String.format("Request %,d exceeds maximum %,d", Integer.valueOf(i10), Integer.MAX_VALUE));
            }

            public final /* synthetic */ IntUnaryOperator compose(IntUnaryOperator intUnaryOperator) {
                return IntUnaryOperator$CC.$default$compose(this, intUnaryOperator);
            }
        };
    }

    public OpenOption[] Q0() {
        return this.f15101c;
    }
}

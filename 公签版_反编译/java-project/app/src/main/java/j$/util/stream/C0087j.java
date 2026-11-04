package j$.util.stream;

import j$.util.C0031h;
import j$.util.C0032i;
import j$.util.C0034k;
import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Function$CC;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.LongFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0087j implements BinaryOperator, Function, BiConsumer, ObjDoubleConsumer, Supplier, LongFunction, IntFunction, DoubleBinaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9473a;

    public /* synthetic */ C0087j(int i10) {
        this.f9473a = i10;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f9473a) {
            case 3:
                break;
            case 5:
                break;
            case 20:
                break;
            case 22:
                break;
            case 26:
                break;
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.f9473a) {
            case 0:
                break;
            case 1:
                break;
            case 12:
                break;
            case 14:
                break;
            case 16:
                break;
        }
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    /* renamed from: andThen, reason: collision with other method in class */
    public /* synthetic */ Function mo10andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j10) {
        switch (this.f9473a) {
            case 11:
                return AbstractC0167z0.j0(j10);
            case 12:
            default:
                return AbstractC0167z0.v0(j10);
            case 13:
                return AbstractC0167z0.u0(j10);
        }
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        Set set = Collectors.f9204a;
        return obj;
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d10, double d11) {
        return Math.min(d10, d11);
    }

    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.f9473a) {
            case 0:
                Collection collection = (Collection) obj;
                Set set = Collectors.f9204a;
                collection.addAll((Collection) obj2);
                return collection;
            case 1:
                List list = (List) obj;
                Set set2 = Collectors.f9204a;
                list.addAll((List) obj2);
                return list;
            case 12:
                return new T0((F0) obj, (F0) obj2);
            case 14:
                return new U0((H0) obj, (H0) obj2);
            case 16:
                return new V0((J0) obj, (J0) obj2);
            default:
                return new X0((L0) obj, (L0) obj2);
        }
    }

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d10) {
        double[] dArr = (double[]) obj;
        switch (this.f9473a) {
            case 4:
                dArr[2] = dArr[2] + 1.0d;
                Collectors.a(dArr, d10);
                dArr[3] = dArr[3] + d10;
                break;
            default:
                Collectors.a(dArr, d10);
                dArr[2] = dArr[2] + d10;
                break;
        }
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.f9473a) {
            case 7:
                return new G();
            case 8:
                return new H();
            case 9:
                return new I();
            case 10:
                return new J();
            case 19:
                return new C0031h();
            case 21:
                return new ArrayList();
            case 23:
                return new C0032i();
            case 24:
                return new C0034k();
            case 25:
                return new LinkedHashSet();
            default:
                return new double[4];
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f9473a) {
            case 3:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                Collectors.a(dArr, dArr2[0]);
                Collectors.a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                break;
            case 5:
                double[] dArr3 = (double[]) obj;
                double[] dArr4 = (double[]) obj2;
                Collectors.a(dArr3, dArr4[0]);
                Collectors.a(dArr3, dArr4[1]);
                dArr3[2] = dArr3[2] + dArr4[2];
                dArr3[3] = dArr3[3] + dArr4[3];
                break;
            case 20:
                ((Collection) obj).add(obj2);
                break;
            case 22:
                ((List) obj).add(obj2);
                break;
            case 26:
                ((LinkedHashSet) obj).add(obj2);
                break;
            default:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                break;
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i10) {
        return new Object[i10];
    }
}

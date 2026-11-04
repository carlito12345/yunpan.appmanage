package j$.util.concurrent;

import j$.util.function.BiConsumer$CC;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import java.util.concurrent.ConcurrentMap;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final /* synthetic */ class t implements BiConsumer, BiFunction, Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9125a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9126b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f9127c;

    public /* synthetic */ t(int i10, Object obj, Object obj2) {
        this.f9125a = i10;
        this.f9126b = obj;
        this.f9127c = obj2;
    }

    public /* synthetic */ t(BiFunction biFunction, Function function) {
        this.f9125a = 2;
        this.f9127c = biFunction;
        this.f9126b = function;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f9125a) {
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        ((Consumer) this.f9126b).accept(obj);
        ((Consumer) this.f9127c).accept(obj);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f9126b).apply(((BiFunction) this.f9127c).apply(obj, obj2));
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f9125a) {
            case 0:
                break;
            default:
                ((BiConsumer) this.f9126b).accept(obj, obj2);
                ((BiConsumer) this.f9127c).accept(obj, obj2);
                return;
        }
        do {
            Object objApply = ((BiFunction) this.f9127c).apply(obj, obj2);
            ConcurrentMap concurrentMap = (ConcurrentMap) this.f9126b;
            if (concurrentMap.replace(obj, obj2, objApply)) {
                return;
            } else {
                obj2 = concurrentMap.get(obj);
            }
        } while (obj2 != null);
    }
}

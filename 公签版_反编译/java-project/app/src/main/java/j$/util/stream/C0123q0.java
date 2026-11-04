package j$.util.stream;

import j$.util.concurrent.ConcurrentHashMap;
import j$.util.function.Consumer$CC;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.q0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0123q0 implements Supplier, Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9534a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9535b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f9536c;

    public /* synthetic */ C0123q0(int i10, Object obj, Object obj2) {
        this.f9534a = i10;
        this.f9535b = obj;
        this.f9536c = obj2;
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f9534a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.Supplier
    public Object get() {
        return new C0127r0((EnumC0152w0) this.f9535b, (Predicate) this.f9536c);
    }

    @Override // java.util.function.Consumer
    public void accept(Object obj) {
        switch (this.f9534a) {
            case 1:
                ((C0116o3) this.f9535b).b((Consumer) this.f9536c, obj);
                break;
            case 2:
                if (obj != null) {
                    ((ConcurrentHashMap) this.f9536c).putIfAbsent(obj, Boolean.TRUE);
                    break;
                } else {
                    ((AtomicBoolean) this.f9535b).set(true);
                    break;
                }
            default:
                ((BiConsumer) this.f9535b).accept(this.f9536c, obj);
                break;
        }
    }
}

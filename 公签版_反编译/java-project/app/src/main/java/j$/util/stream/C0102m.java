package j$.util.stream;

import java.util.HashSet;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0102m extends AbstractC0105m2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9499b;

    /* renamed from: c, reason: collision with root package name */
    Object f9500c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0102m(AbstractC0047b abstractC0047b, InterfaceC0125q2 interfaceC0125q2, int i10) {
        super(interfaceC0125q2);
        this.f9499b = i10;
        this.f9500c = abstractC0047b;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0102m(InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9499b = 0;
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public void m() {
        switch (this.f9499b) {
            case 0:
                this.f9500c = null;
                this.f9501a.m();
                break;
            default:
                super.m();
                break;
        }
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public void n(long j10) {
        switch (this.f9499b) {
            case 0:
                this.f9500c = new HashSet();
                this.f9501a.n(-1L);
                break;
            case 1:
            default:
                super.n(j10);
                break;
            case 2:
                this.f9501a.n(-1L);
                break;
        }
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f9499b) {
            case 0:
                if (!((HashSet) this.f9500c).contains(obj)) {
                    ((HashSet) this.f9500c).add(obj);
                    this.f9501a.accept((InterfaceC0125q2) obj);
                    break;
                }
                break;
            case 1:
                ((Consumer) ((C0131s) this.f9500c).f9551t).accept(obj);
                this.f9501a.accept((InterfaceC0125q2) obj);
                break;
            case 2:
                if (((Predicate) ((C0131s) this.f9500c).f9551t).test(obj)) {
                    this.f9501a.accept((InterfaceC0125q2) obj);
                    break;
                }
                break;
            case 3:
                this.f9501a.accept((InterfaceC0125q2) ((Function) ((C0131s) this.f9500c).f9551t).apply(obj));
                break;
            case 4:
                this.f9501a.accept(((ToIntFunction) ((W) this.f9500c).f9368t).applyAsInt(obj));
                break;
            case 5:
                this.f9501a.accept(((ToLongFunction) ((Y) this.f9500c).f9374t).applyAsLong(obj));
                break;
            default:
                this.f9501a.accept(((ToDoubleFunction) ((C0156x) this.f9500c).f9582t).applyAsDouble(obj));
                break;
        }
    }
}

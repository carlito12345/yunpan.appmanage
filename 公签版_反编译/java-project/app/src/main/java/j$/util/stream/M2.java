package j$.util.stream;

import j$.util.Collection;
import j$.util.List;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes2.dex */
final class M2 extends E2 {

    /* renamed from: d, reason: collision with root package name */
    private ArrayList f9283d;

    M2(InterfaceC0125q2 interfaceC0125q2, Comparator comparator) {
        super(interfaceC0125q2, comparator);
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9283d = j10 >= 0 ? new ArrayList((int) j10) : new ArrayList();
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public final void m() {
        List.EL.sort(this.f9283d, this.f9215b);
        long size = this.f9283d.size();
        InterfaceC0125q2 interfaceC0125q2 = this.f9501a;
        interfaceC0125q2.n(size);
        if (this.f9216c) {
            Iterator it = this.f9283d.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (interfaceC0125q2.p()) {
                    break;
                } else {
                    interfaceC0125q2.accept((InterfaceC0125q2) next);
                }
            }
        } else {
            java.util.List list = this.f9283d;
            Objects.requireNonNull(interfaceC0125q2);
            C0042a c0042a = new C0042a(interfaceC0125q2, 1);
            if (list instanceof Collection) {
                ((Collection) list).forEach(c0042a);
            } else {
                Objects.requireNonNull(c0042a);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    c0042a.accept(it2.next());
                }
            }
        }
        interfaceC0125q2.m();
        this.f9283d = null;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f9283d.add(obj);
    }
}

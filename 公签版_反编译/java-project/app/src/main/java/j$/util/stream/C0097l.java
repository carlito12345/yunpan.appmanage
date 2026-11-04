package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0097l extends AbstractC0105m2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9492b = 2;

    /* renamed from: c, reason: collision with root package name */
    boolean f9493c;

    /* renamed from: d, reason: collision with root package name */
    Object f9494d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0097l(S3 s32, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9494d = s32;
        this.f9493c = true;
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        switch (this.f9492b) {
            case 0:
                this.f9493c = false;
                this.f9494d = null;
                this.f9501a.n(-1L);
                break;
            case 1:
                this.f9501a.n(-1L);
                break;
            default:
                this.f9501a.n(-1L);
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) throws Exception {
        switch (this.f9492b) {
            case 0:
                InterfaceC0125q2 interfaceC0125q2 = this.f9501a;
                if (obj == null) {
                    if (this.f9493c) {
                        return;
                    }
                    this.f9493c = true;
                    this.f9494d = null;
                    interfaceC0125q2.q((InterfaceC0125q2) null);
                    return;
                }
                Object obj2 = this.f9494d;
                if (obj2 == null || !obj.equals(obj2)) {
                    this.f9494d = obj;
                    interfaceC0125q2.q((InterfaceC0125q2) obj);
                    return;
                }
                return;
            case 1:
                Stream stream = (Stream) ((C0042a) ((C0131s) this.f9494d).f9551t).apply((C0042a) obj);
                if (stream != null) {
                    try {
                        boolean z = this.f9493c;
                        InterfaceC0125q2 interfaceC0125q22 = this.f9501a;
                        if (!z) {
                            ((Stream) stream.sequential()).forEach(interfaceC0125q22);
                        } else {
                            Spliterator spliterator = ((Stream) stream.sequential()).spliterator();
                            while (!interfaceC0125q22.p() && spliterator.tryAdvance(interfaceC0125q22)) {
                            }
                        }
                    } catch (Throwable th2) {
                        try {
                            stream.close();
                        } catch (Throwable th3) {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        }
                        throw th2;
                    }
                }
                if (stream != null) {
                    stream.close();
                    return;
                }
                return;
            default:
                if (this.f9493c) {
                    boolean zTest = ((S3) this.f9494d).f9344s.test(obj);
                    this.f9493c = zTest;
                    if (zTest) {
                        this.f9501a.q((InterfaceC0125q2) obj);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public boolean p() {
        switch (this.f9492b) {
            case 1:
                this.f9493c = true;
                return this.f9501a.p();
            case 2:
                return !this.f9493c || this.f9501a.p();
            default:
                return super.p();
        }
    }

    public C0097l(InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public void m() {
        switch (this.f9492b) {
            case 0:
                this.f9493c = false;
                this.f9494d = null;
                this.f9501a.m();
                break;
            default:
                super.m();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0097l(C0131s c0131s, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9494d = c0131s;
    }
}

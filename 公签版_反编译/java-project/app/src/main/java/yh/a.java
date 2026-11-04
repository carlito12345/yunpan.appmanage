package yh;

import java.io.InputStream;

/* loaded from: classes3.dex */
public final class a extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19202a;

    public a(int i10) {
        this.f19202a = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // yh.o
    public final InputStream a(InputStream inputStream, b bVar) {
        switch (this.f19202a) {
            case 0:
                return new y(inputStream, new gi.a(0, 1, false));
            case 1:
                return new y(inputStream, new gi.a(0, 2, false));
            case 2:
                return new y(inputStream, new gi.a(0, 0, 0 == true ? 1 : 0, false));
            case 3:
                return new y(inputStream, new gi.a(0, 3, 0 == true ? 1 : 0, false));
            case 4:
                return new y(inputStream, new gi.a(0, 4, 0 == true ? 1 : 0, false));
            default:
                return new y(inputStream, new gi.c(0, false));
        }
    }

    @Override // yh.o
    public final p b(q qVar, b bVar) {
        switch (this.f19202a) {
            case 0:
                return new z(qVar, new gi.a(0, 1, true));
            case 1:
                return new z(qVar, new gi.a(0, 2, true));
            case 2:
                return new z(qVar, new gi.a(0, 0, true, false));
            case 3:
                return new z(qVar, new gi.a(0, 3, true, false));
            case 4:
                return new z(qVar, new gi.a(0, 4, true, false));
            default:
                return new z(qVar, new gi.c(0, true));
        }
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new RuntimeException();
        }
    }
}

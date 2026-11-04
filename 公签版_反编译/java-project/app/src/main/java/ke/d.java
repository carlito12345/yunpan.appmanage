package ke;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class d extends h1.c implements Iterator, ve.a {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f10248e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(f fVar, int i10) {
        super(fVar);
        this.f10248e = i10;
        switch (i10) {
            case 1:
                ue.d.e(fVar, "map");
                super(fVar);
                break;
            case 2:
                ue.d.e(fVar, "map");
                super(fVar);
                break;
            default:
                ue.d.e(fVar, "map");
                break;
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f10248e) {
            case 0:
                b();
                int i10 = this.f6320a;
                f fVar = (f) this.f6323d;
                if (i10 >= fVar.f10258f) {
                    throw new NoSuchElementException();
                }
                this.f6320a = i10 + 1;
                this.f6321b = i10;
                e eVar = new e(fVar, i10);
                e();
                return eVar;
            case 1:
                b();
                int i11 = this.f6320a;
                f fVar2 = (f) this.f6323d;
                if (i11 >= fVar2.f10258f) {
                    throw new NoSuchElementException();
                }
                this.f6320a = i11 + 1;
                this.f6321b = i11;
                Object obj = fVar2.f10253a[i11];
                e();
                return obj;
            default:
                b();
                int i12 = this.f6320a;
                f fVar3 = (f) this.f6323d;
                if (i12 >= fVar3.f10258f) {
                    throw new NoSuchElementException();
                }
                this.f6320a = i12 + 1;
                this.f6321b = i12;
                Object[] objArr = fVar3.f10254b;
                ue.d.b(objArr);
                Object obj2 = objArr[this.f6321b];
                e();
                return obj2;
        }
    }
}

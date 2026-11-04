package ei;

/* loaded from: classes3.dex */
public final class c extends a {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f5012e;

    public c(f fVar) {
        this.f5012e = fVar;
    }

    public final int b(int i10) {
        f fVar = this.f5012e;
        fi.a aVar = fVar.f5019n;
        short[] sArr = this.f4997a;
        return aVar.o0(sArr, 0) == 0 ? fVar.f5019n.p0(this.f4998b[i10]) + 2 : fVar.f5019n.o0(sArr, 1) == 0 ? fVar.f5019n.p0(this.f4999c[i10]) + 10 : fVar.f5019n.p0(this.f5000d) + 18;
    }
}

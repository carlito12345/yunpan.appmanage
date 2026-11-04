package eh;

/* loaded from: classes.dex */
public final class a extends dh.h {

    /* renamed from: a, reason: collision with root package name */
    public final dh.h[] f4976a;

    /* renamed from: b, reason: collision with root package name */
    public dh.h f4977b = null;

    public a(dh.h[] hVarArr) {
        this.f4976a = hVarArr;
    }

    @Override // dh.h
    public final dh.g b(String str) {
        dh.h hVar = this.f4977b;
        if (hVar != null) {
            return hVar.b(str);
        }
        for (dh.h hVar2 : this.f4976a) {
            dh.g gVarB = hVar2.b(str);
            if (gVarB != null) {
                this.f4977b = hVar2;
                return gVarB;
            }
        }
        return null;
    }
}

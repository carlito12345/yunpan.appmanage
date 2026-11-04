package l5;

import java.io.File;

/* loaded from: classes.dex */
public final class c implements q {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10569a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10570b;

    public /* synthetic */ c(int i10, Object obj) {
        this.f10569a = i10;
        this.f10570b = obj;
    }

    @Override // l5.q
    public final boolean a(Object obj) {
        switch (this.f10569a) {
            case 0:
                return true;
            case 1:
                return obj.toString().startsWith("data:image");
            default:
                return true;
        }
    }

    @Override // l5.q
    public final p b(Object obj, int i10, int i11, f5.i iVar) {
        switch (this.f10569a) {
            case 0:
                byte[] bArr = (byte[]) obj;
                return new p(new z5.d(bArr), new l(bArr, 1, (a0) this.f10570b));
            case 1:
                return new p(new z5.d(obj), new g5.b(1, obj.toString(), (a0) this.f10570b));
            default:
                File file = (File) obj;
                return new p(new z5.d(file), new g5.b(2, file, (a0) this.f10570b));
        }
    }
}

package l5;

import java.io.File;

/* loaded from: classes.dex */
public final class b0 implements q {

    /* renamed from: b, reason: collision with root package name */
    public static final b0 f10567b = new b0(0);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10568a;

    public /* synthetic */ b0(int i10) {
        this.f10568a = i10;
    }

    @Override // l5.q
    public final boolean a(Object obj) {
        switch (this.f10568a) {
            case 0:
                return true;
            case 1:
                return true;
            default:
                return false;
        }
    }

    @Override // l5.q
    public final p b(Object obj, int i10, int i11, f5.i iVar) {
        switch (this.f10568a) {
            case 0:
                return new p(new z5.d(obj), new d(1, obj));
            case 1:
                File file = (File) obj;
                return new p(new z5.d(file), new d(0, file));
            default:
                return null;
        }
    }
}

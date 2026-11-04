package pb;

import android.icu.lang.UCharacter;

/* loaded from: classes.dex */
public final class a implements b {

    /* renamed from: b, reason: collision with root package name */
    public static final a f12660b = new a(0);

    /* renamed from: c, reason: collision with root package name */
    public static final a f12661c = new a(1);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12662a;

    public /* synthetic */ a(int i10) {
        this.f12662a = i10;
    }

    @Override // pb.b
    public final boolean a(int i10) {
        switch (this.f12662a) {
            case 0:
                return c.a(i10, c.f12663a);
            default:
                return UCharacter.hasBinaryProperty(i10, 57);
        }
    }

    @Override // pb.b
    public final boolean b(int i10) {
        switch (this.f12662a) {
            case 0:
                return c.a(i10, c.f12666d);
            default:
                return UCharacter.hasBinaryProperty(i10, 36);
        }
    }

    @Override // pb.b
    public final boolean c(int i10) {
        switch (this.f12662a) {
            case 0:
                return c.a(i10, c.f12665c);
            default:
                return UCharacter.hasBinaryProperty(i10, 60);
        }
    }

    @Override // pb.b
    public final boolean d(int i10) {
        switch (this.f12662a) {
            case 0:
                return c.a(i10, c.f12664b);
            default:
                return UCharacter.hasBinaryProperty(i10, 59);
        }
    }
}

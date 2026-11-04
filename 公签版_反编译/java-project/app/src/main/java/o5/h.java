package o5;

import android.graphics.ImageDecoder;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class h implements f5.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11598a;

    /* renamed from: b, reason: collision with root package name */
    public final c f11599b;

    public h(int i10) {
        this.f11598a = i10;
        switch (i10) {
            case 1:
                this.f11599b = new c();
                break;
            default:
                this.f11599b = new c();
                break;
        }
    }

    @Override // f5.k
    public final h5.z a(Object obj, int i10, int i11, f5.i iVar) {
        switch (this.f11598a) {
            case 0:
                return this.f11599b.c(ImageDecoder.createSource((ByteBuffer) obj), i10, i11, iVar);
            default:
                return this.f11599b.c(ImageDecoder.createSource(a6.c.b((InputStream) obj)), i10, i11, iVar);
        }
    }

    @Override // f5.k
    public final /* bridge */ /* synthetic */ boolean b(Object obj, f5.i iVar) {
        switch (this.f11598a) {
            case 0:
                break;
            default:
                break;
        }
        return true;
    }
}

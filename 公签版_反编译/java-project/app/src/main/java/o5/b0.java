package o5;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.io.File;

/* loaded from: classes.dex */
public final class b0 implements f5.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11582a;

    public /* synthetic */ b0(int i10) {
        this.f11582a = i10;
    }

    @Override // f5.k
    public final h5.z a(Object obj, int i10, int i11, f5.i iVar) {
        switch (this.f11582a) {
            case 0:
                return new a0(0, (Bitmap) obj);
            case 1:
                Drawable drawable = (Drawable) obj;
                if (drawable != null) {
                    return new q5.b(drawable, 0);
                }
                return null;
            default:
                return new a0((File) obj);
        }
    }

    @Override // f5.k
    public final /* bridge */ /* synthetic */ boolean b(Object obj, f5.i iVar) {
        switch (this.f11582a) {
            case 0:
                break;
            case 1:
                break;
            default:
                break;
        }
        return true;
    }
}

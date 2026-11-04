package o5;

import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class f implements f5.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11596a;

    /* renamed from: b, reason: collision with root package name */
    public final p f11597b;

    public /* synthetic */ f(p pVar, int i10) {
        this.f11596a = i10;
        this.f11597b = pVar;
    }

    @Override // f5.k
    public final h5.z a(Object obj, int i10, int i11, f5.i iVar) {
        switch (this.f11596a) {
            case 0:
                p pVar = this.f11597b;
                return pVar.a(new v3.f(21, (ByteBuffer) obj, pVar.f11622d, pVar.f11621c, false), i10, i11, iVar, p.f11617k);
            default:
                p pVar2 = this.f11597b;
                return pVar2.a(new v3.f((ParcelFileDescriptor) obj, pVar2.f11622d, pVar2.f11621c), i10, i11, iVar, p.f11617k);
        }
    }

    @Override // f5.k
    public final boolean b(Object obj, f5.i iVar) {
        switch (this.f11596a) {
            case 0:
                this.f11597b.getClass();
                return true;
            default:
                ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
                String str = Build.MANUFACTURER;
                if ((!"HUAWEI".equalsIgnoreCase(str) && !"HONOR".equalsIgnoreCase(str)) || parcelFileDescriptor.getStatSize() <= 536870912) {
                    this.f11597b.getClass();
                    if (com.bumptech.glide.load.data.i.e()) {
                        return true;
                    }
                }
                return false;
        }
    }
}

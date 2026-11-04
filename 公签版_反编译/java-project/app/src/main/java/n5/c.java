package n5;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import f5.h;
import f5.i;
import f5.j;
import o5.n;
import o5.p;
import o5.v;

/* loaded from: classes.dex */
public final class c implements ImageDecoder.OnHeaderDecodedListener {

    /* renamed from: a, reason: collision with root package name */
    public final v f11299a = v.a();

    /* renamed from: b, reason: collision with root package name */
    public final int f11300b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11301c;

    /* renamed from: d, reason: collision with root package name */
    public final f5.b f11302d;

    /* renamed from: e, reason: collision with root package name */
    public final n f11303e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f11304f;

    /* renamed from: g, reason: collision with root package name */
    public final j f11305g;

    public c(int i10, int i11, i iVar) {
        this.f11300b = i10;
        this.f11301c = i11;
        this.f11302d = (f5.b) iVar.c(p.f11612f);
        this.f11303e = (n) iVar.c(n.f11609g);
        h hVar = p.f11615i;
        this.f11304f = iVar.c(hVar) != null && ((Boolean) iVar.c(hVar)).booleanValue();
        this.f11305g = (j) iVar.c(p.f11613g);
    }

    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        if (this.f11299a.c(this.f11300b, this.f11301c, this.f11304f, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f11302d == f5.b.PREFER_RGB_565) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new b());
        Size size = imageInfo.getSize();
        int width = this.f11300b;
        if (width == Integer.MIN_VALUE) {
            width = size.getWidth();
        }
        int height = this.f11301c;
        if (height == Integer.MIN_VALUE) {
            height = size.getHeight();
        }
        float fB = this.f11303e.b(size.getWidth(), size.getHeight(), width, height);
        int iRound = Math.round(size.getWidth() * fB);
        int iRound2 = Math.round(fB * size.getHeight());
        if (Log.isLoggable("ImageDecoder", 2)) {
            size.getWidth();
            size.getHeight();
        }
        imageDecoder.setTargetSize(iRound, iRound2);
        j jVar = this.f11305g;
        if (jVar != null) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 28) {
                imageDecoder.setTargetColorSpace(ColorSpace.get((jVar == j.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            } else if (i10 >= 26) {
                imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
            }
        }
    }
}

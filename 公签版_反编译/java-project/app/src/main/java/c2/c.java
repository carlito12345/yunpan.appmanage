package c2;

import a9.o;
import android.content.ContextWrapper;
import android.graphics.Point;
import java.io.IOException;
import java.nio.ByteBuffer;
import r1.p;
import u1.f0;
import x1.j;

/* loaded from: classes.dex */
public final class c extends j {

    /* renamed from: n, reason: collision with root package name */
    public final ContextWrapper f2857n;

    /* renamed from: o, reason: collision with root package name */
    public final int f2858o;

    public c(ContextWrapper contextWrapper) {
        super(new x1.g[1], new a[1]);
        this.f2857n = contextWrapper;
        this.f2858o = -1;
    }

    @Override // x1.j
    public final x1.g g() {
        return new x1.g(1);
    }

    @Override // x1.j
    public final x1.h h() {
        return new a(this);
    }

    @Override // x1.j
    public final x1.e i(Throwable th2) {
        return new d("Unexpected decode error", th2);
    }

    @Override // x1.j
    public final x1.e j(x1.g gVar, x1.h hVar, boolean z) throws NumberFormatException {
        d dVar;
        a aVar = (a) hVar;
        ByteBuffer byteBuffer = gVar.f18087e;
        byteBuffer.getClass();
        o.t(byteBuffer.hasArray());
        o.k(byteBuffer.arrayOffset() == 0);
        try {
            int iMax = this.f2858o;
            if (iMax == -1) {
                ContextWrapper contextWrapper = this.f2857n;
                if (contextWrapper != null) {
                    Point pointP = f0.p(contextWrapper);
                    int i10 = pointP.x;
                    int i11 = pointP.y;
                    p pVar = gVar.f18085c;
                    if (pVar != null) {
                        int i12 = pVar.N;
                        if (i12 != -1) {
                            i10 *= i12;
                        }
                        int i13 = pVar.O;
                        if (i13 != -1) {
                            i11 *= i13;
                        }
                    }
                    iMax = (Math.max(i10, i11) * 2) - 1;
                } else {
                    iMax = 4096;
                }
            }
            aVar.f2854e = o.F(byteBuffer.remaining(), iMax, byteBuffer.array());
            aVar.f18092c = gVar.f18089g;
            return null;
        } catch (r1.f0 e7) {
            dVar = new d("Could not decode image data with BitmapFactory.", e7);
            return dVar;
        } catch (IOException e10) {
            dVar = new d(e10);
            return dVar;
        }
    }
}

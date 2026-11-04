package o5;

import a2.k1;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.InputStream;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class a implements f5.k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11574a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11575b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f11576c;

    public /* synthetic */ a(Object obj, int i10, Object obj2) {
        this.f11574a = i10;
        this.f11575b = obj;
        this.f11576c = obj2;
    }

    @Override // f5.k
    public final h5.z a(Object obj, int i10, int i11, f5.i iVar) throws PackageManager.NameNotFoundException, NumberFormatException {
        w wVar;
        boolean z;
        a6.f fVar;
        switch (this.f11574a) {
            case 0:
                h5.z zVarA = ((f5.k) this.f11575b).a(obj, i10, i11, iVar);
                if (zVarA == null) {
                    return null;
                }
                return new d((Resources) this.f11576c, zVarA);
            case 1:
                h5.z zVarC = ((q5.c) this.f11575b).c((Uri) obj, iVar);
                if (zVarC == null) {
                    return null;
                }
                return r.a((i5.c) this.f11576c, (Drawable) ((q5.b) zVarC).get(), i10, i11);
            default:
                InputStream inputStream = (InputStream) obj;
                if (inputStream instanceof w) {
                    wVar = (w) inputStream;
                    z = false;
                } else {
                    wVar = new w(inputStream, (k1) this.f11576c);
                    z = true;
                }
                ArrayDeque arrayDeque = a6.f.f426c;
                synchronized (arrayDeque) {
                    fVar = (a6.f) arrayDeque.poll();
                }
                if (fVar == null) {
                    fVar = new a6.f();
                }
                fVar.f427a = wVar;
                a6.n nVar = new a6.n(fVar);
                kf.d dVar = new kf.d(wVar, 7, fVar);
                try {
                    p pVar = (p) this.f11575b;
                    return pVar.a(new v3.f(nVar, pVar.f11622d, pVar.f11621c), i10, i11, iVar, dVar);
                } finally {
                    fVar.r();
                    if (z) {
                        wVar.A();
                    }
                }
        }
    }

    @Override // f5.k
    public final boolean b(Object obj, f5.i iVar) {
        switch (this.f11574a) {
            case 0:
                return ((f5.k) this.f11575b).b(obj, iVar);
            case 1:
                return "android.resource".equals(((Uri) obj).getScheme());
            default:
                ((p) this.f11575b).getClass();
                return true;
        }
    }

    public a(Resources resources, f5.k kVar) {
        this.f11574a = 0;
        this.f11576c = resources;
        this.f11575b = kVar;
    }
}

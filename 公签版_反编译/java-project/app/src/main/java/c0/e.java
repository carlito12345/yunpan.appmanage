package c0;

/* loaded from: classes.dex */
public final class e extends com.bumptech.glide.c {
    @Override // com.bumptech.glide.c
    public final void U(f fVar, f fVar2) {
        fVar.f2834b = fVar2;
    }

    @Override // com.bumptech.glide.c
    public final void V(f fVar, Thread thread) {
        fVar.f2833a = thread;
    }

    @Override // com.bumptech.glide.c
    public final boolean f(g gVar, c cVar, c cVar2) {
        synchronized (gVar) {
            try {
                if (gVar.f2840b != cVar) {
                    return false;
                }
                gVar.f2840b = cVar2;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bumptech.glide.c
    public final boolean g(g gVar, Object obj, Object obj2) {
        synchronized (gVar) {
            try {
                if (gVar.f2839a != obj) {
                    return false;
                }
                gVar.f2839a = obj2;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bumptech.glide.c
    public final boolean h(g gVar, f fVar, f fVar2) {
        synchronized (gVar) {
            try {
                if (gVar.f2841c != fVar) {
                    return false;
                }
                gVar.f2841c = fVar2;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}

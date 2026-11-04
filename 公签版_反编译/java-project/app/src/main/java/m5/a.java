package m5;

import com.bumptech.glide.load.data.l;
import f5.h;
import f5.i;
import h5.m;
import java.util.ArrayDeque;
import l5.g;
import l5.n;
import l5.o;
import l5.p;
import l5.q;

/* loaded from: classes.dex */
public final class a implements q {

    /* renamed from: b, reason: collision with root package name */
    public static final h f10877b = h.a(2500, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout");

    /* renamed from: a, reason: collision with root package name */
    public final m f10878a;

    public a(m mVar) {
        this.f10878a = mVar;
    }

    @Override // l5.q
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // l5.q
    public final p b(Object obj, int i10, int i11, i iVar) {
        g gVar = (g) obj;
        m mVar = this.f10878a;
        if (mVar != null) {
            o oVarA = o.a(gVar);
            n nVar = (n) mVar.f6611b;
            Object objA = nVar.a(oVarA);
            ArrayDeque arrayDeque = o.f10602b;
            synchronized (arrayDeque) {
                arrayDeque.offer(oVarA);
            }
            g gVar2 = (g) objA;
            if (gVar2 == null) {
                nVar.d(o.a(gVar), gVar);
            } else {
                gVar = gVar2;
            }
        }
        return new p(gVar, new l(gVar, ((Integer) iVar.c(f10877b)).intValue()));
    }
}

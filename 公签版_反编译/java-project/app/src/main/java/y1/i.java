package y1;

import a2.g1;
import a2.j1;
import a2.n1;
import a2.o1;
import a2.q1;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import com.hsae.autosdk.popup.constant.PopupConst;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final ContextWrapper f18703a;

    /* renamed from: b, reason: collision with root package name */
    public final c2.b f18704b;

    public i(ContextWrapper contextWrapper) {
        this.f18703a = contextWrapper;
        this.f18704b = new c2.b(contextWrapper, 1);
    }

    public final a[] a(Handler handler, t tVar, t tVar2, t tVar3, t tVar4) {
        ArrayList arrayList = new ArrayList();
        ContextWrapper contextWrapper = this.f18703a;
        androidx.media3.exoplayer.video.j jVar = new androidx.media3.exoplayer.video.j(contextWrapper);
        c2.b bVar = this.f18704b;
        jVar.f1910c = bVar;
        jVar.f1911d = PopupConst.DURATION_POPUP;
        jVar.f1912e = handler;
        jVar.f1913f = tVar;
        jVar.f1914g = 50;
        a9.o.t(!jVar.f1909b);
        Handler handler2 = jVar.f1912e;
        a9.o.t((handler2 == null && jVar.f1913f == null) || !(handler2 == null || jVar.f1913f == null));
        jVar.f1909b = true;
        arrayList.add(new androidx.media3.exoplayer.video.m(jVar));
        j1 j1Var = new j1(contextWrapper);
        a9.o.t(!j1Var.f200d);
        j1Var.f200d = true;
        if (j1Var.f199c == null) {
            j1Var.f199c = new v3.f(new s1.l[0]);
        }
        if (j1Var.f202f == null) {
            if (j1Var.f203g == null) {
                j1Var.f203g = new g1(contextWrapper);
            }
            if (j1Var.f201e == null) {
                j1Var.f201e = o1.f266a;
            }
            a2.c1 c1Var = new a2.c1(contextWrapper);
            a2.g gVar = contextWrapper != null ? null : j1Var.f198b;
            Context context = c1Var.f108a;
            if (context == null) {
                c1Var.f111d = gVar;
            }
            g1 g1Var = j1Var.f203g;
            c1Var.f109b = g1Var;
            c1Var.f110c = j1Var.f201e;
            if (g1Var == null) {
                c1Var.f109b = new g1(context);
            }
            j1Var.f202f = new a2.d1(c1Var);
        } else {
            a9.o.t(j1Var.f203g == null);
            a9.o.t(j1Var.f201e == null);
        }
        arrayList.add(new q1(contextWrapper, bVar, handler, tVar2, new n1(j1Var)));
        arrayList.add(new g2.f(tVar3, handler.getLooper()));
        Looper looper = handler.getLooper();
        for (int i10 = 0; i10 < 4; i10++) {
            arrayList.add(new e2.b(tVar4, looper));
        }
        arrayList.add(new k2.b());
        arrayList.add(new c2.h(new c2.b(contextWrapper, 0)));
        return (a[]) arrayList.toArray(new a[0]);
    }
}

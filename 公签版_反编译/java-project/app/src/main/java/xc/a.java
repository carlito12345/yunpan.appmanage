package xc;

import a0.h;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import sd.f;
import ua.i8;
import vc.c;
import vc.k;
import vc.o;
import vd.b0;
import vd.d;
import vd.d0;
import vd.g;
import vd.j;

/* loaded from: classes.dex */
public class a extends Thread implements vc.b {

    /* renamed from: i, reason: collision with root package name */
    public static final Logger f18429i = LoggerFactory.getLogger((Class<?>) a.class);

    /* renamed from: a, reason: collision with root package name */
    public boolean f18430a;

    /* renamed from: b, reason: collision with root package name */
    public final wc.a f18431b;

    /* renamed from: c, reason: collision with root package name */
    public final d f18432c;

    /* renamed from: d, reason: collision with root package name */
    public final g f18433d;

    /* renamed from: e, reason: collision with root package name */
    public final f f18434e;

    /* renamed from: f, reason: collision with root package name */
    public final h f18435f;

    /* renamed from: g, reason: collision with root package name */
    public final d0 f18436g;

    /* renamed from: h, reason: collision with root package name */
    public final j f18437h;

    public a(wc.a aVar) {
        Runtime.getRuntime().addShutdownHook(this);
        this.f18431b = aVar;
        this.f18432c = new d();
        new s9.a(17);
        this.f18433d = new g(this);
        this.f18434e = new f(this);
        this.f18435f = new h(aVar);
        this.f18436g = new d0();
        String str = aVar.R;
        if (str != null) {
            this.f18437h = new j(aVar.Q, str, aVar.S);
        } else {
            this.f18437h = new j();
        }
    }

    public final void a() {
        LinkedList linkedList;
        if (!this.f18430a) {
            Runtime.getRuntime().removeShutdownHook(this);
        }
        d0 d0Var = this.f18436g;
        synchronized (d0Var.f16821a) {
            d0Var.a();
            d0.f16820e.debug("Closing pool");
            linkedList = new LinkedList(d0Var.f16821a);
            linkedList.addAll(d0Var.f16822b);
            d0Var.f16821a.clear();
            d0Var.f16822b.clear();
        }
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            try {
                ((b0) it.next()).K(false, false);
            } catch (IOException e7) {
                d0.f16820e.warn("Failed to close connection", (Throwable) e7);
            }
        }
        synchronized (d0Var.f16821a) {
            d0Var.a();
        }
    }

    @Override // vc.b
    public final o b() {
        return this.f18436g;
    }

    @Override // vc.b
    public final vc.b d() {
        return new i8(9, (Object) this, (Object) new j(), false);
    }

    @Override // vc.b
    public final vc.f e() {
        return this.f18431b;
    }

    @Override // vc.b
    public final vd.a g() {
        return this.f18437h;
    }

    @Override // vc.b
    public final h h() {
        return this.f18435f;
    }

    @Override // vc.b
    public final k i() {
        return this.f18434e;
    }

    @Override // vc.b
    public final vc.h k() {
        return this.f18432c;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            this.f18430a = true;
            a();
        } catch (c e7) {
            f18429i.warn("Failed to close context on shutdown", (Throwable) e7);
        }
    }
}

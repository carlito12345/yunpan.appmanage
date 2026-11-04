package l5;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class u implements com.bumptech.glide.load.data.e, com.bumptech.glide.load.data.d {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10610a;

    /* renamed from: b, reason: collision with root package name */
    public final v3.f f10611b;

    /* renamed from: c, reason: collision with root package name */
    public int f10612c;

    /* renamed from: d, reason: collision with root package name */
    public com.bumptech.glide.i f10613d;

    /* renamed from: e, reason: collision with root package name */
    public com.bumptech.glide.load.data.d f10614e;

    /* renamed from: f, reason: collision with root package name */
    public List f10615f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f10616g;

    public u(ArrayList arrayList, v3.f fVar) {
        this.f10611b = fVar;
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.f10610a = arrayList;
        this.f10612c = 0;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void B(Object obj) {
        if (obj != null) {
            this.f10614e.B(obj);
        } else {
            e();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        return ((com.bumptech.glide.load.data.e) this.f10610a.get(0)).a();
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        List list = this.f10615f;
        if (list != null) {
            this.f10611b.L(list);
        }
        this.f10615f = null;
        Iterator it = this.f10610a.iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.load.data.e) it.next()).b();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final f5.a c() {
        return ((com.bumptech.glide.load.data.e) this.f10610a.get(0)).c();
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
        this.f10616g = true;
        Iterator it = this.f10610a.iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.load.data.e) it.next()).cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void d(com.bumptech.glide.i iVar, com.bumptech.glide.load.data.d dVar) {
        this.f10613d = iVar;
        this.f10614e = dVar;
        this.f10615f = (List) this.f10611b.l();
        ((com.bumptech.glide.load.data.e) this.f10610a.get(this.f10612c)).d(iVar, this);
        if (this.f10616g) {
            cancel();
        }
    }

    public final void e() {
        if (this.f10616g) {
            return;
        }
        if (this.f10612c < this.f10610a.size() - 1) {
            this.f10612c++;
            d(this.f10613d, this.f10614e);
        } else {
            a6.h.b(this.f10615f);
            this.f10614e.i(new h5.v("Fetch failed", new ArrayList(this.f10615f)));
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void i(Exception exc) {
        List list = this.f10615f;
        a6.h.c(list, "Argument must not be null");
        list.add(exc);
        e();
    }
}

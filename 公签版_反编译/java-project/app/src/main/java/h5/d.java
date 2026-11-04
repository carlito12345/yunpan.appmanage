package h5;

import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
public final class d implements g, com.bumptech.glide.load.data.d {

    /* renamed from: a, reason: collision with root package name */
    public final List f6537a;

    /* renamed from: b, reason: collision with root package name */
    public final h f6538b;

    /* renamed from: c, reason: collision with root package name */
    public final f f6539c;

    /* renamed from: d, reason: collision with root package name */
    public int f6540d = -1;

    /* renamed from: e, reason: collision with root package name */
    public f5.f f6541e;

    /* renamed from: f, reason: collision with root package name */
    public List f6542f;

    /* renamed from: g, reason: collision with root package name */
    public int f6543g;

    /* renamed from: h, reason: collision with root package name */
    public volatile l5.p f6544h;

    /* renamed from: i, reason: collision with root package name */
    public File f6545i;

    public d(List list, h hVar, f fVar) {
        this.f6537a = list;
        this.f6538b = hVar;
        this.f6539c = fVar;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void B(Object obj) {
        this.f6539c.a(this.f6541e, obj, this.f6544h.f10606c, f5.a.DATA_DISK_CACHE, this.f6541e);
    }

    @Override // h5.g
    public final boolean b() {
        while (true) {
            List list = this.f6542f;
            boolean z = false;
            if (list != null && this.f6543g < list.size()) {
                this.f6544h = null;
                while (!z && this.f6543g < this.f6542f.size()) {
                    List list2 = this.f6542f;
                    int i10 = this.f6543g;
                    this.f6543g = i10 + 1;
                    l5.q qVar = (l5.q) list2.get(i10);
                    File file = this.f6545i;
                    h hVar = this.f6538b;
                    this.f6544h = qVar.b(file, hVar.f6561e, hVar.f6562f, hVar.f6565i);
                    if (this.f6544h != null && this.f6538b.c(this.f6544h.f10606c.a()) != null) {
                        this.f6544h.f10606c.d(this.f6538b.f6570o, this);
                        z = true;
                    }
                }
                return z;
            }
            int i11 = this.f6540d + 1;
            this.f6540d = i11;
            if (i11 >= this.f6537a.size()) {
                return false;
            }
            f5.f fVar = (f5.f) this.f6537a.get(this.f6540d);
            h hVar2 = this.f6538b;
            File fileY = hVar2.f6564h.a().y(new e(fVar, hVar2.f6569n));
            this.f6545i = fileY;
            if (fileY != null) {
                this.f6541e = fVar;
                this.f6542f = this.f6538b.f6559c.b().g(fileY);
                this.f6543g = 0;
            }
        }
    }

    @Override // h5.g
    public final void cancel() {
        l5.p pVar = this.f6544h;
        if (pVar != null) {
            pVar.f10606c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void i(Exception exc) {
        this.f6539c.c(this.f6541e, exc, this.f6544h.f10606c, f5.a.DATA_DISK_CACHE);
    }
}

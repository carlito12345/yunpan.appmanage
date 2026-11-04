package ha;

import com.yunpan.appmanage.bean.NameContentSelectBean;

/* loaded from: classes.dex */
public final class a implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6709a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ NameContentSelectBean f6710b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c6.g f6711c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f6712d;

    public /* synthetic */ a(NameContentSelectBean nameContentSelectBean, c6.g gVar, int i10, int i11) {
        this.f6709a = i11;
        this.f6710b = nameContentSelectBean;
        this.f6711c = gVar;
        this.f6712d = i10;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f6709a) {
            case 0:
                com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                boolean z = !wVar.S;
                wVar.S = z;
                try {
                    wVar.f4123i.k("Accessibility_root_mode", Boolean.valueOf(z));
                } catch (Exception unused) {
                }
                wVar.m();
                this.f6710b.isSelect = wVar.S;
                this.f6711c.e(this.f6712d);
                break;
            case 1:
                wa.u uVar = wa.t.f17728a;
                uVar.h(!uVar.f17743h);
                this.f6710b.isSelect = uVar.f17743h;
                this.f6711c.e(this.f6712d);
                break;
            default:
                wa.u uVar2 = wa.t.f17728a;
                uVar2.h(!uVar2.f17743h);
                this.f6710b.isSelect = uVar2.f17743h;
                this.f6711c.e(this.f6712d);
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        int i10 = this.f6709a;
    }

    private final void a() {
    }

    private final void b() {
    }

    private final void c() {
    }
}

package ff;

import java.util.ArrayList;
import m7.i;
import m7.j;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public Object f5802a;

    /* renamed from: b, reason: collision with root package name */
    public Object f5803b;

    /* renamed from: c, reason: collision with root package name */
    public Object f5804c;

    /* renamed from: d, reason: collision with root package name */
    public Object f5805d;

    /* renamed from: e, reason: collision with root package name */
    public Object f5806e;

    /* renamed from: f, reason: collision with root package name */
    public Object f5807f;

    /* renamed from: g, reason: collision with root package name */
    public Object f5808g;

    /* renamed from: h, reason: collision with root package name */
    public Object f5809h;

    /* renamed from: i, reason: collision with root package name */
    public Object f5810i;

    /* renamed from: j, reason: collision with root package name */
    public final Object f5811j;

    /* renamed from: k, reason: collision with root package name */
    public final Object f5812k;
    public final Object l;

    public b(j jVar) {
        this.f5802a = new i();
        this.f5803b = new i();
        this.f5804c = new i();
        this.f5805d = new i();
        this.f5806e = new m7.a(0.0f);
        this.f5807f = new m7.a(0.0f);
        this.f5808g = new m7.a(0.0f);
        this.f5809h = new m7.a(0.0f);
        this.f5810i = new m7.e(0);
        this.f5811j = new m7.e(0);
        this.f5812k = new m7.e(0);
        this.l = new m7.e(0);
        this.f5802a = jVar.f10941a;
        this.f5803b = jVar.f10942b;
        this.f5804c = jVar.f10943c;
        this.f5805d = jVar.f10944d;
        this.f5806e = jVar.f10945e;
        this.f5807f = jVar.f10946f;
        this.f5808g = jVar.f10947g;
        this.f5809h = jVar.f10948h;
        this.f5810i = jVar.f10949i;
        this.f5811j = jVar.f10950j;
        this.f5812k = jVar.f10951k;
        this.l = jVar.l;
    }

    public static void a(qf.c cVar) {
        if (cVar instanceof i) {
            ((i) cVar).getClass();
        } else if (cVar instanceof m7.d) {
            ((m7.d) cVar).getClass();
        }
    }

    public b(int i10) {
        switch (i10) {
            case 1:
                this.f5802a = new i();
                this.f5803b = new i();
                this.f5804c = new i();
                this.f5805d = new i();
                this.f5806e = new m7.a(0.0f);
                this.f5807f = new m7.a(0.0f);
                this.f5808g = new m7.a(0.0f);
                this.f5809h = new m7.a(0.0f);
                this.f5810i = new m7.e(0);
                this.f5811j = new m7.e(0);
                this.f5812k = new m7.e(0);
                this.l = new m7.e(0);
                break;
            default:
                this.f5811j = new ArrayList();
                this.f5812k = new ArrayList();
                this.l = new ArrayList();
                break;
        }
    }
}

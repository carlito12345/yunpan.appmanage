package u;

import android.view.View;
import w.n3;

/* loaded from: classes.dex */
public final class j extends com.bumptech.glide.d {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f15151e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f15152f;

    /* renamed from: g, reason: collision with root package name */
    public int f15153g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f15154h;

    public j(k kVar) {
        this.f15151e = 0;
        this.f15154h = kVar;
        this.f15152f = false;
        this.f15153g = 0;
    }

    @Override // com.bumptech.glide.d, x0.m1
    public void a(View view) {
        switch (this.f15151e) {
            case 1:
                this.f15152f = true;
                break;
        }
    }

    @Override // com.bumptech.glide.d, x0.m1
    public final void b() {
        switch (this.f15151e) {
            case 0:
                if (!this.f15152f) {
                    this.f15152f = true;
                    com.bumptech.glide.d dVar = ((k) this.f15154h).f15158d;
                    if (dVar != null) {
                        dVar.b();
                        break;
                    }
                }
                break;
            default:
                ((n3) this.f15154h).f17162a.setVisibility(0);
                break;
        }
    }

    @Override // x0.m1
    public final void c() {
        switch (this.f15151e) {
            case 0:
                int i10 = this.f15153g + 1;
                this.f15153g = i10;
                k kVar = (k) this.f15154h;
                if (i10 == kVar.f15155a.size()) {
                    com.bumptech.glide.d dVar = kVar.f15158d;
                    if (dVar != null) {
                        dVar.c();
                    }
                    this.f15153g = 0;
                    this.f15152f = false;
                    kVar.f15159e = false;
                    break;
                }
                break;
            default:
                if (!this.f15152f) {
                    ((n3) this.f15154h).f17162a.setVisibility(this.f15153g);
                    break;
                }
                break;
        }
    }

    public j(n3 n3Var, int i10) {
        this.f15151e = 1;
        this.f15154h = n3Var;
        this.f15153g = i10;
        this.f15152f = false;
    }
}

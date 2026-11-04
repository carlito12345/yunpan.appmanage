package com.bumptech.glide.manager;

import androidx.media3.ui.AspectRatioFrameLayout;

/* loaded from: classes.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3396a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3397b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f3398c;

    public /* synthetic */ o(Object obj, boolean z, int i10) {
        this.f3396a = i10;
        this.f3398c = obj;
        this.f3397b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f3398c;
        switch (this.f3396a) {
            case 0:
                p pVar = (p) obj;
                pVar.getClass();
                a6.q.a();
                androidx.room.i iVar = pVar.f3399a;
                boolean z = iVar.f2404a;
                boolean z4 = this.f3397b;
                iVar.f2404a = z4;
                if (z != z4) {
                    ((m) iVar.f2405b).a(z4);
                    break;
                }
                break;
            case 1:
                ((r) obj).f3404b.a(this.f3397b);
                break;
            default:
                this.f3397b = false;
                int i10 = AspectRatioFrameLayout.f1999d;
                ((AspectRatioFrameLayout) obj).getClass();
                break;
        }
    }

    public o(AspectRatioFrameLayout aspectRatioFrameLayout) {
        this.f3396a = 2;
        this.f3398c = aspectRatioFrameLayout;
    }
}

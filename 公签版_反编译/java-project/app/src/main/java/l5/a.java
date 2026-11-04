package l5;

import android.content.res.AssetManager;

/* loaded from: classes.dex */
public final class a implements r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10560a;

    /* renamed from: b, reason: collision with root package name */
    public final AssetManager f10561b;

    public /* synthetic */ a(AssetManager assetManager, int i10) {
        this.f10560a = i10;
        this.f10561b = assetManager;
    }

    @Override // l5.r
    public final q l(w wVar) {
        switch (this.f10560a) {
        }
        return new b(this.f10561b, 0, this);
    }
}

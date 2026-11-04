package j2;

import android.media.Spatializer;

/* loaded from: classes.dex */
public final class c implements Spatializer.OnSpatializerStateChangedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f9661a;

    public c(Runnable runnable) {
        this.f9661a = runnable;
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        this.f9661a.run();
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        this.f9661a.run();
    }
}

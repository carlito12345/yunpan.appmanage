package com.yunpan.appmanage.carsdk;

import com.autolink.adapterinterface.IPowerCallback;

/* loaded from: classes.dex */
public final class a0 extends IPowerCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h0 f3786e;

    public a0(h0 h0Var) {
        this.f3786e = h0Var;
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onBrightnessModeChanged(int i10) {
        this.f3786e.f3819h.onBrightnessModeChanged(i10);
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onClusterNightModeSwitchChanged(int i10) {
        this.f3786e.f3819h.onClusterNightModeSwitchChanged(i10);
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onDisplayDayNightModeChanged(int i10) {
        this.f3786e.f3819h.onDisplayDayNightModeChanged(i10);
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onHmiBrightnessChanged(int i10) {
        this.f3786e.f3819h.onHmiBrightnessChanged(i10);
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onIviBrightnessChanged(int i10) {
        this.f3786e.f3819h.onIviBrightnessChanged(i10);
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onIviDisplayPowerStateChanged(int i10) {
        this.f3786e.f3819h.onIviDisplayPowerStateChanged(i10);
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onPowerEventChanged(int i10, int i11) {
        this.f3786e.f3819h.onPowerEventChanged(i10, i11);
    }

    @Override // com.autolink.adapterinterface.IPowerCallback
    public final void onScreensaverChanged(boolean z) {
        this.f3786e.f3819h.onScreensaverChanged(z);
    }
}

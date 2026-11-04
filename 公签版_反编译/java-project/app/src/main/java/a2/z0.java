package a2;

import android.media.AudioTrack;

/* loaded from: classes.dex */
public final class z0 extends AudioTrack.StreamEventCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v3.f f367a;

    public z0(v3.f fVar) {
        this.f367a = fVar;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i10) {
        ((a1) this.f367a.f16476d).f92j.e(-1, new u0(2));
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onPresentationEnded(AudioTrack audioTrack) {
        ((a1) this.f367a.f16476d).f92j.e(-1, new u0(3));
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        ((a1) this.f367a.f16476d).f92j.e(-1, new u0(2));
    }
}

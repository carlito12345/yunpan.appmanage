package a2;

import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class i extends AudioDeviceCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f183a;

    public i(l lVar) {
        this.f183a = lVar;
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
        this.f183a.c();
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
        AudioDeviceInfo audioDeviceInfo = this.f183a.f220i;
        String str = u1.f0.f15206a;
        int length = audioDeviceInfoArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            if (Objects.equals(audioDeviceInfoArr[i10], audioDeviceInfo)) {
                this.f183a.f220i = null;
                break;
            }
            i10++;
        }
        this.f183a.c();
    }
}

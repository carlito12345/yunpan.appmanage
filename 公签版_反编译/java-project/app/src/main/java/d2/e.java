package d2;

import android.os.HandlerThread;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements t7.n {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4251a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4252b;

    public /* synthetic */ e(int i10, int i11) {
        this.f4251a = i11;
        this.f4252b = i10;
    }

    @Override // t7.n
    public final Object get() {
        switch (this.f4251a) {
            case 0:
                return new HandlerThread(f.c(this.f4252b, "ExoPlayer:MediaCodecAsyncAdapter:"));
            default:
                return new HandlerThread(f.c(this.f4252b, "ExoPlayer:MediaCodecQueueingThread:"));
        }
    }
}

package d2;

import a2.g1;
import android.media.MediaCodec;
import android.os.Build;
import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4248a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ androidx.media3.exoplayer.video.l f4249b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ n f4250c;

    public /* synthetic */ d(n nVar, androidx.media3.exoplayer.video.l lVar, int i10) {
        this.f4248a = i10;
        this.f4250c = nVar;
        this.f4249b = lVar;
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j10, long j11) {
        switch (this.f4248a) {
            case 0:
                f fVar = (f) this.f4250c;
                androidx.media3.exoplayer.video.l lVar = this.f4249b;
                fVar.getClass();
                if (Build.VERSION.SDK_INT >= 30) {
                    lVar.a(j10);
                    break;
                } else {
                    Handler handler = lVar.f1918a;
                    handler.sendMessageAtFrontOfQueue(Message.obtain(handler, 0, (int) (j10 >> 32), (int) j10));
                    break;
                }
            default:
                g1 g1Var = (g1) this.f4250c;
                androidx.media3.exoplayer.video.l lVar2 = this.f4249b;
                g1Var.getClass();
                if (Build.VERSION.SDK_INT >= 30) {
                    lVar2.a(j10);
                    break;
                } else {
                    Handler handler2 = lVar2.f1918a;
                    handler2.sendMessageAtFrontOfQueue(Message.obtain(handler2, 0, (int) (j10 >> 32), (int) j10));
                    break;
                }
        }
    }
}

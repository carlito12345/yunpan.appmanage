package d2;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* loaded from: classes.dex */
public interface n {
    ByteBuffer C(int i10);

    void E(Surface surface);

    ByteBuffer H(int i10);

    void I(ArrayList arrayList);

    void L(ArrayList arrayList);

    void a();

    void d(int i10, x1.c cVar, long j10, int i11);

    void e(Bundle bundle);

    void flush();

    void g(int i10, int i11, long j10, int i12);

    void h(int i10);

    void j(androidx.media3.exoplayer.video.l lVar, Handler handler);

    MediaFormat k();

    void l(a2.c0 c0Var);

    boolean m(a1.i iVar);

    void n();

    void o(int i10, long j10);

    int p();

    int u(MediaCodec.BufferInfo bufferInfo);

    void y(int i10);
}

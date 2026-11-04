package d2;

import android.media.MediaCodec;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static /* bridge */ /* synthetic */ boolean A(Throwable th2) {
        return th2 instanceof MediaCodec.CodecException;
    }

    public static /* bridge */ /* synthetic */ MediaCodec.CodecException d(Exception exc) {
        return (MediaCodec.CodecException) exc;
    }

    public static /* bridge */ /* synthetic */ MediaCodec.CodecException e(IllegalStateException illegalStateException) {
        return (MediaCodec.CodecException) illegalStateException;
    }

    public static /* bridge */ /* synthetic */ MediaCodec.CodecException f(Throwable th2) {
        return (MediaCodec.CodecException) th2;
    }

    public static /* bridge */ /* synthetic */ boolean y(Exception exc) {
        return exc instanceof MediaCodec.CodecException;
    }

    public static /* bridge */ /* synthetic */ boolean z(IllegalStateException illegalStateException) {
        return illegalStateException instanceof MediaCodec.CodecException;
    }
}

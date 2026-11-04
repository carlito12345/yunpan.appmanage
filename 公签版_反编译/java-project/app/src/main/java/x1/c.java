package x1;

import android.media.MediaCodec;
import android.os.Build;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public byte[] f18075a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f18076b;

    /* renamed from: c, reason: collision with root package name */
    public int f18077c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f18078d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f18079e;

    /* renamed from: f, reason: collision with root package name */
    public int f18080f;

    /* renamed from: g, reason: collision with root package name */
    public int f18081g;

    /* renamed from: h, reason: collision with root package name */
    public int f18082h;

    /* renamed from: i, reason: collision with root package name */
    public final MediaCodec.CryptoInfo f18083i;

    /* renamed from: j, reason: collision with root package name */
    public final b f18084j;

    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f18083i = cryptoInfo;
        this.f18084j = Build.VERSION.SDK_INT >= 24 ? new b(cryptoInfo) : null;
    }
}

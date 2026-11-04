package x;

import a9.o;

/* loaded from: classes.dex */
public final class a extends o {

    /* renamed from: c, reason: collision with root package name */
    public static volatile a f17937c;

    /* renamed from: d, reason: collision with root package name */
    public static final androidx.media3.exoplayer.video.a f17938d = new androidx.media3.exoplayer.video.a(2);

    /* renamed from: b, reason: collision with root package name */
    public final c f17939b = new c();

    public static a d0() {
        if (f17937c != null) {
            return f17937c;
        }
        synchronized (a.class) {
            try {
                if (f17937c == null) {
                    f17937c = new a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f17937c;
    }
}

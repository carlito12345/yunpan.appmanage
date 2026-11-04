package c0;

import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final a f2821b;

    /* renamed from: c, reason: collision with root package name */
    public static final a f2822c;

    /* renamed from: a, reason: collision with root package name */
    public final CancellationException f2823a;

    static {
        if (g.f2835d) {
            f2822c = null;
            f2821b = null;
        } else {
            f2822c = new a(false, null);
            f2821b = new a(true, null);
        }
    }

    public a(boolean z, CancellationException cancellationException) {
        this.f2823a = cancellationException;
    }
}

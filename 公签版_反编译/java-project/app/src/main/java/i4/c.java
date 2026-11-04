package i4;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class c implements Drawable.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8523a = 1;

    /* renamed from: b, reason: collision with root package name */
    public Object f8524b;

    public c(f fVar) {
        this.f8524b = fVar;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        switch (this.f8523a) {
            case 0:
                ((f) this.f8524b).invalidateSelf();
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        switch (this.f8523a) {
            case 0:
                ((f) this.f8524b).scheduleSelf(runnable, j10);
                break;
            default:
                Drawable.Callback callback = (Drawable.Callback) this.f8524b;
                if (callback != null) {
                    callback.scheduleDrawable(drawable, runnable, j10);
                    break;
                }
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        switch (this.f8523a) {
            case 0:
                ((f) this.f8524b).unscheduleSelf(runnable);
                break;
            default:
                Drawable.Callback callback = (Drawable.Callback) this.f8524b;
                if (callback != null) {
                    callback.unscheduleDrawable(drawable, runnable);
                    break;
                }
                break;
        }
    }

    public c() {
    }

    private final void a(Drawable drawable) {
    }
}

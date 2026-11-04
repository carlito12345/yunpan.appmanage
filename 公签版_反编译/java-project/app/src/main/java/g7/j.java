package g7;

import android.content.Context;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: c, reason: collision with root package name */
    public float f6113c;

    /* renamed from: d, reason: collision with root package name */
    public float f6114d;

    /* renamed from: f, reason: collision with root package name */
    public final WeakReference f6116f;

    /* renamed from: g, reason: collision with root package name */
    public j7.d f6117g;

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f6111a = new TextPaint(1);

    /* renamed from: b, reason: collision with root package name */
    public final b7.b f6112b = new b7.b(1, this);

    /* renamed from: e, reason: collision with root package name */
    public boolean f6115e = true;

    public j(i iVar) {
        this.f6116f = new WeakReference(null);
        this.f6116f = new WeakReference(iVar);
    }

    public final void a(String str) {
        TextPaint textPaint = this.f6111a;
        this.f6113c = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        this.f6114d = str != null ? Math.abs(textPaint.getFontMetrics().ascent) : 0.0f;
        this.f6115e = false;
    }

    public final void b(j7.d dVar, Context context) {
        if (this.f6117g != dVar) {
            this.f6117g = dVar;
            if (dVar != null) {
                TextPaint textPaint = this.f6111a;
                b7.b bVar = this.f6112b;
                dVar.f(context, textPaint, bVar);
                i iVar = (i) this.f6116f.get();
                if (iVar != null) {
                    textPaint.drawableState = iVar.getState();
                }
                dVar.e(context, textPaint, bVar);
                this.f6115e = true;
            }
            i iVar2 = (i) this.f6116f.get();
            if (iVar2 != null) {
                iVar2.a();
                iVar2.onStateChange(iVar2.getState());
            }
        }
    }
}

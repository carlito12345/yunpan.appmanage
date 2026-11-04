package tb;

import android.view.MotionEvent;
import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final float f15007a;

    /* renamed from: b, reason: collision with root package name */
    public float f15008b;

    /* renamed from: c, reason: collision with root package name */
    public float f15009c;

    /* renamed from: d, reason: collision with root package name */
    public float f15010d;

    /* renamed from: e, reason: collision with root package name */
    public float f15011e;

    /* renamed from: f, reason: collision with root package name */
    public float f15012f;

    /* renamed from: g, reason: collision with root package name */
    public float f15013g;

    /* renamed from: h, reason: collision with root package name */
    public long f15014h = 0;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ u f15015i;

    public t(u uVar, int i10) {
        this.f15015i = uVar;
        float f10 = i10;
        this.f15009c = f10;
        this.f15008b = f10;
        this.f15007a = f10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        float f10;
        u uVar = this.f15015i;
        int i10 = uVar.z;
        float f11 = ((i10 & 1) != 0 ? -this.f15008b : 0.0f) + ((i10 & 2) != 0 ? this.f15008b : 0.0f);
        float f12 = ((i10 & 4) != 0 ? -this.f15009c : 0.0f) + ((i10 & 8) != 0 ? this.f15009c : 0.0f);
        CodeEditor codeEditor = uVar.f15016a;
        if (f11 > 0.0f) {
            int i11 = uVar.f15020e;
            int i12 = (i11 == 0 || i11 == 1) ? codeEditor.getCursor().f11081c.f11057b : codeEditor.getCursor().f11082d.f11057b;
            if (uVar.f15017b.f14985b.getCurrX() > (codeEditor.S() + codeEditor.f8719j.s(i12, codeEditor.getText().o(i12).f11076c)[1]) - (codeEditor.getWidth() * 0.85f)) {
                f11 = 0.0f;
            }
        }
        uVar.j(f11, f12, false);
        if (uVar.f15019d.f16777b.isShowing()) {
            uVar.f15019d.a();
        }
        boolean zA = u.a(uVar, f11, this.f15010d);
        float f13 = this.f15007a;
        if (zA) {
            float f14 = this.f15012f;
            f10 = f11;
            if (f14 < 32.0f && (this.f15014h & 1) == 0) {
                this.f15012f = f14 + 1.0f;
                this.f15008b *= 1.06f;
            }
        } else {
            f10 = f11;
            this.f15008b = f13;
            this.f15012f = 0.0f;
        }
        if (u.a(uVar, f12, this.f15011e)) {
            float f15 = this.f15013g;
            if (f15 < 32.0f && (this.f15014h & 1) == 0) {
                this.f15013g = f15 + 1.0f;
                this.f15009c *= 1.06f;
            }
        } else {
            this.f15009c = f13;
            this.f15013g = 0.0f;
        }
        this.f15010d = f10;
        this.f15011e = f12;
        MotionEvent motionEvent = uVar.B;
        if (motionEvent != null && !uVar.f(motionEvent, true)) {
            MotionEvent motionEvent2 = uVar.B;
            int i13 = uVar.f15020e;
            if (i13 == 0) {
                uVar.f15018c.f(motionEvent2);
            } else if (i13 == 1) {
                uVar.f15034w.f(motionEvent2);
            } else if (i13 == 2) {
                uVar.f15035x.f(motionEvent2);
            }
        }
        this.f15014h++;
        if (uVar.z != 0) {
            codeEditor.Y(this, 10L);
        }
    }
}

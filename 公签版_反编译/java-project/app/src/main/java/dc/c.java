package dc;

import android.animation.ValueAnimator;
import io.github.rosemoe.sora.widget.CodeEditor;

/* loaded from: classes.dex */
public final class c implements cc.a, ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final CodeEditor f4574a;

    /* renamed from: g, reason: collision with root package name */
    public float f4580g;

    /* renamed from: h, reason: collision with root package name */
    public float f4581h;

    /* renamed from: i, reason: collision with root package name */
    public float f4582i;

    /* renamed from: j, reason: collision with root package name */
    public float f4583j;

    /* renamed from: k, reason: collision with root package name */
    public long f4584k;

    /* renamed from: c, reason: collision with root package name */
    public ValueAnimator f4576c = new ValueAnimator();

    /* renamed from: d, reason: collision with root package name */
    public ValueAnimator f4577d = new ValueAnimator();

    /* renamed from: f, reason: collision with root package name */
    public ValueAnimator f4579f = new ValueAnimator();

    /* renamed from: e, reason: collision with root package name */
    public ValueAnimator f4578e = new ValueAnimator();

    /* renamed from: b, reason: collision with root package name */
    public final long f4575b = 120;

    public c(CodeEditor codeEditor) {
        this.f4574a = codeEditor;
    }

    public final void a() {
        this.f4576c.cancel();
        this.f4577d.cancel();
        this.f4579f.cancel();
        this.f4578e.cancel();
    }

    public final boolean b() {
        return this.f4576c.isRunning() || this.f4577d.isRunning() || this.f4579f.isRunning() || this.f4578e.isRunning();
    }

    public final void c() {
        CodeEditor codeEditor = this.f4574a;
        if (codeEditor.Q0) {
            if (b()) {
                this.f4580g = ((Float) this.f4576c.getAnimatedValue()).floatValue();
                this.f4581h = ((Float) this.f4577d.getAnimatedValue()).floatValue();
                this.f4582i = ((Float) this.f4579f.getAnimatedValue()).floatValue();
                this.f4583j = ((Float) this.f4578e.getAnimatedValue()).floatValue();
                a();
            }
            if (System.currentTimeMillis() - this.f4584k < 100) {
                return;
            }
            int i10 = codeEditor.getCursor().f11081c.f11057b;
            this.f4576c.removeAllUpdateListeners();
            float[] fArrS = ((wb.c) codeEditor.getLayout()).s(codeEditor.getCursor().f11081c.f11057b, codeEditor.getCursor().f11081c.f11058c);
            this.f4576c = ValueAnimator.ofFloat(this.f4580g, codeEditor.S() + fArrS[1]);
            float f10 = this.f4581h;
            float f11 = fArrS[0];
            codeEditor.getProps().getClass();
            this.f4577d = ValueAnimator.ofFloat(f10, f11 - 0.0f);
            this.f4579f = ValueAnimator.ofFloat(this.f4582i, codeEditor.getRowHeight() * codeEditor.getLayout().h(codeEditor.getCursor().f11081c.f11057b));
            this.f4578e = ValueAnimator.ofFloat(this.f4583j, ((wb.c) codeEditor.getLayout()).s(i10, codeEditor.getText().o(i10).f11076c)[0]);
            this.f4576c.addUpdateListener(this);
            ValueAnimator valueAnimator = this.f4576c;
            long j10 = this.f4575b;
            valueAnimator.setDuration(j10);
            this.f4577d.setDuration(j10);
            this.f4579f.setDuration(j10);
            this.f4578e.setDuration(j10);
        }
    }

    public final void d() {
        CodeEditor codeEditor = this.f4574a;
        int i10 = codeEditor.getCursor().f11081c.f11057b;
        float[] fArrS = ((wb.c) codeEditor.getLayout()).s(i10, codeEditor.getCursor().f11081c.f11058c);
        this.f4580g = codeEditor.S() + fArrS[1];
        float f10 = fArrS[0];
        codeEditor.getProps().getClass();
        this.f4581h = f10 - 0.0f;
        this.f4582i = codeEditor.getRowHeight() * codeEditor.getLayout().h(i10);
        this.f4583j = ((wb.c) codeEditor.getLayout()).s(i10, codeEditor.getText().o(i10).f11076c)[0];
    }

    public final void e() {
        if (!this.f4574a.Q0 || System.currentTimeMillis() - this.f4584k < 100) {
            this.f4584k = System.currentTimeMillis();
            return;
        }
        this.f4576c.start();
        this.f4577d.start();
        this.f4579f.start();
        this.f4578e.start();
        this.f4584k = System.currentTimeMillis();
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f4574a.postInvalidateOnAnimation();
    }
}

package ha;

import android.widget.SeekBar;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class w0 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7977a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x0 f7978b;

    public /* synthetic */ w0(x0 x0Var, int i10) {
        this.f7977a = i10;
        this.f7978b = x0Var;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z) {
        switch (this.f7977a) {
            case 0:
                this.f7978b.f8029t.setText(String.valueOf(i10));
                break;
            default:
                TextView textView = this.f7978b.f8028s;
                StringBuilder sb2 = new StringBuilder();
                double d10 = i10;
                Double.isNaN(d10);
                sb2.append(d10 / 10.0d);
                sb2.append("x");
                textView.setText(sb2.toString());
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i10 = this.f7977a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i10 = this.f7977a;
    }

    private final void a(SeekBar seekBar) {
    }

    private final void b(SeekBar seekBar) {
    }

    private final void c(SeekBar seekBar) {
    }

    private final void d(SeekBar seekBar) {
    }
}

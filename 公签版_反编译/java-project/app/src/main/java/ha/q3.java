package ha;

import android.widget.SeekBar;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class q3 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7605a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r3 f7606b;

    public /* synthetic */ q3(r3 r3Var, int i10) {
        this.f7605a = i10;
        this.f7606b = r3Var;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z) {
        switch (this.f7605a) {
            case 0:
                this.f7606b.z.setText(String.valueOf(i10));
                break;
            default:
                TextView textView = this.f7606b.A;
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
        int i10 = this.f7605a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i10 = this.f7605a;
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

package ha;

import android.widget.SeekBar;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class g3 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7093a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j3 f7094b;

    public /* synthetic */ g3(j3 j3Var, int i10) {
        this.f7093a = i10;
        this.f7094b = j3Var;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z) {
        switch (this.f7093a) {
            case 0:
                try {
                    this.f7094b.B.setText(String.valueOf(i10));
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                try {
                    TextView textView = this.f7094b.C;
                    StringBuilder sb2 = new StringBuilder();
                    double d10 = i10;
                    Double.isNaN(d10);
                    sb2.append(d10 / 10.0d);
                    sb2.append("x");
                    textView.setText(sb2.toString());
                    break;
                } catch (Exception unused2) {
                    return;
                }
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i10 = this.f7093a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i10 = this.f7093a;
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

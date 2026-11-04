package ha;

import android.widget.SeekBar;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class ee implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6991a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ge f6992b;

    public /* synthetic */ ee(ge geVar, int i10) {
        this.f6991a = i10;
        this.f6992b = geVar;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z) {
        switch (this.f6991a) {
            case 0:
                this.f6992b.H.setText(String.valueOf(i10));
                break;
            default:
                TextView textView = this.f6992b.I;
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
        int i10 = this.f6991a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i10 = this.f6991a;
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

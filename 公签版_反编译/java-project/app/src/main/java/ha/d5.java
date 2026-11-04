package ha;

import android.view.ViewGroup;
import android.widget.SeekBar;

/* loaded from: classes.dex */
public final class d5 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup.LayoutParams f6888a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6889b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6890c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ e5 f6891d;

    public d5(e5 e5Var, ViewGroup.LayoutParams layoutParams, int i10, int i11) {
        this.f6891d = e5Var;
        this.f6888a = layoutParams;
        this.f6889b = i10;
        this.f6890c = i11;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z) {
        e5 e5Var = this.f6891d;
        int progress = e5Var.f6941i.getProgress();
        int i11 = this.f6889b;
        int i12 = this.f6890c;
        ViewGroup.LayoutParams layoutParams = this.f6888a;
        layoutParams.width = (progress * i11) + i12;
        layoutParams.height = (e5Var.f6941i.getProgress() * i11) + i12;
        e5Var.f6940h.setLayoutParams(layoutParams);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
    }
}

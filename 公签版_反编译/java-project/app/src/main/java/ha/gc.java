package ha;

import android.widget.SeekBar;

/* loaded from: classes.dex */
public final class gc implements SeekBar.OnSeekBarChangeListener {
    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        try {
            ta.l.q(seekBar.getProgress());
        } catch (Exception e7) {
            com.yunpan.appmanage.util.a0.u("设置失败：" + e7.getMessage());
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z) {
    }
}

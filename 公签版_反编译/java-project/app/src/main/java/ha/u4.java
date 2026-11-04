package ha;

import android.content.SharedPreferences;
import android.view.ViewGroup;
import android.widget.SeekBar;
import com.yunpan.appmanage.ui.ActivityFloatButtonSet;

/* loaded from: classes.dex */
public final class u4 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7856a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7857b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7858c;

    public /* synthetic */ u4(Object obj, int i10, Object obj2) {
        this.f7856a = i10;
        this.f7858c = obj;
        this.f7857b = obj2;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z) {
        switch (this.f7856a) {
            case 0:
                SharedPreferences.Editor editorEdit = ((SharedPreferences) this.f7857b).edit();
                editorEdit.putInt("size", i10);
                editorEdit.apply();
                ((v4) this.f7858c).f7904g.a();
                break;
            default:
                int i11 = i10 * 5;
                ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) this.f7857b;
                layoutParams.width = i11;
                layoutParams.height = i11;
                ((ActivityFloatButtonSet) this.f7858c).C.setLayoutParams(layoutParams);
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i10 = this.f7856a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i10 = this.f7856a;
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

package ha;

import android.widget.SeekBar;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.ui.ActivityFloatButtonSet;

/* loaded from: classes.dex */
public final class v implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7891a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7892b;

    public /* synthetic */ v(int i10, Object obj) {
        this.f7891a = i10;
        this.f7892b = obj;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z) {
        switch (this.f7891a) {
            case 0:
                w wVar = (w) this.f7892b;
                KeyMapSelectBean keyMapSelectBean = (KeyMapSelectBean) wVar.f7974n;
                if (keyMapSelectBean.gn_type == 0) {
                    keyMapSelectBean.gn_name = g.b.i("光照亮度上升到 ", i10, " 以上的时候");
                } else {
                    keyMapSelectBean.gn_name = g.b.i("光照亮度下降到 ", i10, " 以下的时候");
                }
                wVar.f7969h.setText(((KeyMapSelectBean) wVar.f7974n).gn_name);
                break;
            case 1:
                y yVar = (y) this.f7892b;
                KeyMapSelectBean keyMapSelectBean2 = yVar.f8071m;
                if (keyMapSelectBean2.gn_type == 0) {
                    keyMapSelectBean2.gn_name = g.b.i("屏幕亮度上升到 ", i10, " 以上的时候");
                } else {
                    keyMapSelectBean2.gn_name = g.b.i("屏幕亮度下降到 ", i10, " 以下的时候");
                }
                yVar.f8069j.setText(yVar.f8071m.gn_name);
                break;
            case 2:
                ((h1) this.f7892b).f7134h.e(i10);
                break;
            default:
                ((ActivityFloatButtonSet) this.f7892b).C.setImageAlpha(i10);
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i10 = this.f7891a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i10 = this.f7891a;
    }

    private final void a(SeekBar seekBar) {
    }

    private final void b(SeekBar seekBar) {
    }

    private final void c(SeekBar seekBar) {
    }

    private final void d(SeekBar seekBar) {
    }

    private final void e(SeekBar seekBar) {
    }

    private final void f(SeekBar seekBar) {
    }

    private final void g(SeekBar seekBar) {
    }

    private final void h(SeekBar seekBar) {
    }
}

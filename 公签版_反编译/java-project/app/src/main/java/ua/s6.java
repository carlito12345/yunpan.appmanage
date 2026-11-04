package ua;

import android.view.ViewGroup;
import android.widget.SeekBar;
import com.yunpan.appmanage.ui.ActivitySidebarSet;

/* loaded from: classes.dex */
public final class s6 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15950a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActivitySidebarSet f15951b;

    public /* synthetic */ s6(ActivitySidebarSet activitySidebarSet, int i10) {
        this.f15950a = i10;
        this.f15951b = activitySidebarSet;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i10, boolean z) {
        switch (this.f15950a) {
            case 0:
                ActivitySidebarSet activitySidebarSet = this.f15951b;
                ViewGroup.LayoutParams layoutParams = activitySidebarSet.D.getLayoutParams();
                layoutParams.width = i10;
                activitySidebarSet.D.setLayoutParams(layoutParams);
                break;
            case 1:
                ActivitySidebarSet activitySidebarSet2 = this.f15951b;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) activitySidebarSet2.D.getLayoutParams();
                marginLayoutParams.topMargin = i10;
                activitySidebarSet2.D.setLayoutParams(marginLayoutParams);
                break;
            case 2:
                ActivitySidebarSet activitySidebarSet3 = this.f15951b;
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) activitySidebarSet3.D.getLayoutParams();
                marginLayoutParams2.bottomMargin = i10;
                activitySidebarSet3.D.setLayoutParams(marginLayoutParams2);
                break;
            case 3:
                ActivitySidebarSet activitySidebarSet4 = this.f15951b;
                ViewGroup.LayoutParams layoutParams2 = activitySidebarSet4.E.getLayoutParams();
                layoutParams2.width = i10;
                activitySidebarSet4.E.setLayoutParams(layoutParams2);
                break;
            case 4:
                ActivitySidebarSet activitySidebarSet5 = this.f15951b;
                ViewGroup.MarginLayoutParams marginLayoutParams3 = (ViewGroup.MarginLayoutParams) activitySidebarSet5.E.getLayoutParams();
                marginLayoutParams3.topMargin = i10;
                activitySidebarSet5.E.setLayoutParams(marginLayoutParams3);
                break;
            case 5:
                ActivitySidebarSet activitySidebarSet6 = this.f15951b;
                ViewGroup.MarginLayoutParams marginLayoutParams4 = (ViewGroup.MarginLayoutParams) activitySidebarSet6.E.getLayoutParams();
                marginLayoutParams4.bottomMargin = i10;
                activitySidebarSet6.E.setLayoutParams(marginLayoutParams4);
                break;
            case 6:
                ActivitySidebarSet activitySidebarSet7 = this.f15951b;
                ViewGroup.LayoutParams layoutParams3 = activitySidebarSet7.F.getLayoutParams();
                layoutParams3.height = i10;
                activitySidebarSet7.F.setLayoutParams(layoutParams3);
                break;
            case 7:
                ActivitySidebarSet activitySidebarSet8 = this.f15951b;
                ViewGroup.MarginLayoutParams marginLayoutParams5 = (ViewGroup.MarginLayoutParams) activitySidebarSet8.F.getLayoutParams();
                marginLayoutParams5.leftMargin = i10;
                activitySidebarSet8.F.setLayoutParams(marginLayoutParams5);
                break;
            default:
                ActivitySidebarSet activitySidebarSet9 = this.f15951b;
                ViewGroup.MarginLayoutParams marginLayoutParams6 = (ViewGroup.MarginLayoutParams) activitySidebarSet9.F.getLayoutParams();
                marginLayoutParams6.rightMargin = i10;
                activitySidebarSet9.F.setLayoutParams(marginLayoutParams6);
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i10 = this.f15950a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i10 = this.f15950a;
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

    private final void i(SeekBar seekBar) {
    }

    private final void j(SeekBar seekBar) {
    }

    private final void k(SeekBar seekBar) {
    }

    private final void l(SeekBar seekBar) {
    }

    private final void m(SeekBar seekBar) {
    }

    private final void n(SeekBar seekBar) {
    }

    private final void o(SeekBar seekBar) {
    }

    private final void p(SeekBar seekBar) {
    }

    private final void q(SeekBar seekBar) {
    }

    private final void r(SeekBar seekBar) {
    }
}

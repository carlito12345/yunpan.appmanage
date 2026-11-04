package androidx.leanback.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public class SpeechOrbView extends SearchOrbView {

    /* renamed from: t, reason: collision with root package name */
    public final float f1600t;

    /* renamed from: v, reason: collision with root package name */
    public n0 f1601v;

    /* renamed from: w, reason: collision with root package name */
    public n0 f1602w;

    /* renamed from: x, reason: collision with root package name */
    public int f1603x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f1604y;

    public SpeechOrbView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1603x = 0;
        this.f1604y = false;
        Resources resources = context.getResources();
        this.f1600t = resources.getFraction(R.fraction.lb_search_bar_speech_orb_max_level_zoom, 1, 1);
        this.f1602w = new n0(resources.getColor(R.color.lb_speech_orb_not_recording), resources.getColor(R.color.lb_speech_orb_not_recording_pulsed), resources.getColor(R.color.lb_speech_orb_not_recording_icon));
        this.f1601v = new n0(resources.getColor(R.color.lb_speech_orb_recording), resources.getColor(R.color.lb_speech_orb_recording), 0);
        c();
    }

    public final void c() {
        setOrbColors(this.f1602w);
        setOrbIcon(getResources().getDrawable(R.drawable.lb_ic_search_mic_out));
        a(hasFocus());
        View view = this.f1573c;
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        this.f1604y = false;
    }

    @Override // androidx.leanback.widget.SearchOrbView
    public int getLayoutResourceId() {
        return R.layout.lb_speech_orb;
    }

    public void setListeningOrbColors(n0 n0Var) {
        this.f1601v = n0Var;
    }

    public void setNotListeningOrbColors(n0 n0Var) {
        this.f1602w = n0Var;
    }

    public void setSoundLevel(int i10) {
        if (this.f1604y) {
            int i11 = this.f1603x;
            if (i10 > i11) {
                this.f1603x = ta.q.g(i10, i11, 2, i11);
            } else {
                this.f1603x = (int) (i11 * 0.7f);
            }
            float focusedZoom = (((this.f1600t - getFocusedZoom()) * this.f1603x) / 100.0f) + 1.0f;
            View view = this.f1573c;
            view.setScaleX(focusedZoom);
            view.setScaleY(focusedZoom);
        }
    }
}

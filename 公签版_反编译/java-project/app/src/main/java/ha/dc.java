package ha;

import android.widget.ImageView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class dc implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6915a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImageView f6916b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImageView f6917c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ImageView f6918d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ fc f6919e;

    public /* synthetic */ dc(fc fcVar, ImageView imageView, ImageView imageView2, ImageView imageView3, int i10) {
        this.f6915a = i10;
        this.f6919e = fcVar;
        this.f6916b = imageView;
        this.f6917c = imageView2;
        this.f6918d = imageView3;
    }

    @Override // ha.wd
    public final void D() {
        switch (this.f6915a) {
            case 0:
                this.f6916b.setBackgroundResource(R.drawable.tp_radio_no1);
                this.f6917c.setBackgroundResource(R.drawable.tp_radio_yes1);
                this.f6918d.setBackgroundResource(R.drawable.tp_radio_no1);
                com.yunpan.appmanage.util.v.f4106a.p(1);
                if (!fa.g0.f5682a.f()) {
                    fa.b0.f5652a.getClass();
                    if (a2.w0.P()) {
                        com.yunpan.appmanage.util.a0.v("需重新打开" + this.f6919e.f6725b.getString(R.string.app_name) + "方可生效", false);
                        break;
                    }
                }
                break;
            case 1:
                this.f6916b.setBackgroundResource(R.drawable.tp_radio_no1);
                this.f6917c.setBackgroundResource(R.drawable.tp_radio_no1);
                this.f6918d.setBackgroundResource(R.drawable.tp_radio_yes1);
                com.yunpan.appmanage.util.v.f4106a.p(2);
                if (!fa.g0.f5682a.f()) {
                    fa.b0.f5652a.getClass();
                    if (a2.w0.P()) {
                        com.yunpan.appmanage.util.a0.v("需重新打开" + this.f6919e.f6725b.getString(R.string.app_name) + "方可生效", false);
                        break;
                    }
                }
                break;
            default:
                this.f6916b.setBackgroundResource(R.drawable.tp_radio_no1);
                this.f6917c.setBackgroundResource(R.drawable.tp_radio_yes1);
                this.f6918d.setBackgroundResource(R.drawable.tp_radio_no1);
                com.yunpan.appmanage.util.v.f4106a.o(1);
                if (!fa.g0.f5682a.f()) {
                    fa.b0.f5652a.getClass();
                    if (a2.w0.P()) {
                        com.yunpan.appmanage.util.a0.v("需重新打开" + this.f6919e.f6725b.getString(R.string.app_name) + "方可生效", false);
                        break;
                    }
                }
                break;
        }
    }

    @Override // ha.wd
    public final void t() {
        int i10 = this.f6915a;
    }

    private final void a() {
    }

    private final void b() {
    }

    private final void c() {
    }
}

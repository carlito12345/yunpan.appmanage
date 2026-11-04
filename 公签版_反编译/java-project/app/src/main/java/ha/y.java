package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class y extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final y8 f8066g;

    /* renamed from: h, reason: collision with root package name */
    public AppCompatSeekBar f8067h;

    /* renamed from: i, reason: collision with root package name */
    public ConstraintLayout f8068i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f8069j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f8070k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public KeyMapSelectBean f8071m;

    /* renamed from: n, reason: collision with root package name */
    public c1.a f8072n;

    public y(Activity activity, Context context, y8 y8Var) {
        super(activity, context, R.layout.dialog_add_event_screent_brightness);
        this.f8066g = y8Var;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f6725b.getContentResolver().unregisterContentObserver(this.f8072n);
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek);
        this.f8067h = appCompatSeekBar;
        appCompatSeekBar.setMax(255);
        this.f8067h.setProgress(50);
        this.f8067h.setOnSeekBarChangeListener(new v(1, this));
        this.f8068i = (ConstraintLayout) findViewById(R.id.v_type_vol);
        this.f8069j = (TextView) findViewById(R.id.v_type_vol_name);
        this.f8070k = (TextView) findViewById(R.id.v_btn_yes);
        TextView textView = (TextView) findViewById(R.id.v_current_value);
        this.l = textView;
        Context context = this.f6725b;
        textView.setText(String.valueOf(Settings.System.getInt(context.getContentResolver(), "screen_brightness", 255)));
        final int i10 = 0;
        KeyMapSelectBean keyMapSelectBean = new KeyMapSelectBean("屏幕亮度上升到 50 以上的时候", 0);
        this.f8071m = keyMapSelectBean;
        this.f8069j.setText(keyMapSelectBean.gn_name);
        this.f8068i.setOnClickListener(new View.OnClickListener(this) { // from class: ha.x

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y f8018b;

            {
                this.f8018b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        y yVar = this.f8018b;
                        yVar.getClass();
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new KeyMapSelectBean("屏幕亮度上升到 " + yVar.f8067h.getProgress() + " 以上的时候", 0));
                        arrayList.add(new KeyMapSelectBean("屏幕亮度下降到 " + yVar.f8067h.getProgress() + " 以下的时候", 1));
                        new ie(yVar.f6724a, yVar.f6725b, arrayList, new d2.w(yVar, 5, arrayList)).show();
                        break;
                    default:
                        y yVar2 = this.f8018b;
                        yVar2.getClass();
                        z7.s sVar = new z7.s();
                        sVar.l("type", 503);
                        sVar.m("name", yVar2.f8071m.gn_name);
                        sVar.k("isDesc", Boolean.valueOf(yVar2.f8071m.gn_type == 1));
                        sVar.l("value", Integer.valueOf(yVar2.f8067h.getProgress()));
                        yVar2.f8066g.k(sVar);
                        yVar2.dismiss();
                        break;
                }
            }
        });
        this.f8072n = new c1.a(this, new Handler(), 1);
        final int i11 = 1;
        context.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness"), true, this.f8072n);
        this.f8070k.setOnClickListener(new View.OnClickListener(this) { // from class: ha.x

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y f8018b;

            {
                this.f8018b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        y yVar = this.f8018b;
                        yVar.getClass();
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(new KeyMapSelectBean("屏幕亮度上升到 " + yVar.f8067h.getProgress() + " 以上的时候", 0));
                        arrayList.add(new KeyMapSelectBean("屏幕亮度下降到 " + yVar.f8067h.getProgress() + " 以下的时候", 1));
                        new ie(yVar.f6724a, yVar.f6725b, arrayList, new d2.w(yVar, 5, arrayList)).show();
                        break;
                    default:
                        y yVar2 = this.f8018b;
                        yVar2.getClass();
                        z7.s sVar = new z7.s();
                        sVar.l("type", 503);
                        sVar.m("name", yVar2.f8071m.gn_name);
                        sVar.k("isDesc", Boolean.valueOf(yVar2.f8071m.gn_type == 1));
                        sVar.l("value", Integer.valueOf(yVar2.f8067h.getProgress()));
                        yVar2.f8066g.k(sVar);
                        yVar2.dismiss();
                        break;
                }
            }
        });
    }
}

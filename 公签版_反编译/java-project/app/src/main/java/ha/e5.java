package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class e5 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final h8 f6939g;

    /* renamed from: h, reason: collision with root package name */
    public ImageView f6940h;

    /* renamed from: i, reason: collision with root package name */
    public AppCompatSeekBar f6941i;

    /* renamed from: j, reason: collision with root package name */
    public RecyclerView f6942j;

    /* renamed from: k, reason: collision with root package name */
    public RecyclerView f6943k;
    public int l;

    public e5(Activity activity, Context context, h8 h8Var) {
        super(activity, context, R.layout.dialog_cursor, false);
        this.l = 0;
        this.f6939g = h8Var;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f6940h = (ImageView) findViewById(R.id.v_ico);
        AppCompatSeekBar appCompatSeekBar = (AppCompatSeekBar) findViewById(R.id.v_seek);
        this.f6941i = appCompatSeekBar;
        appCompatSeekBar.setMax(20);
        int i10 = p000if.a.R(this.f6725b).y;
        final int i11 = i10 / 32;
        final int i12 = ((i10 / 16) - i11) / 10;
        this.f6941i.setProgress(10);
        ViewGroup.LayoutParams layoutParams = this.f6940h.getLayoutParams();
        layoutParams.width = (this.f6941i.getProgress() * i12) + i11;
        layoutParams.height = (this.f6941i.getProgress() * i12) + i11;
        this.f6940h.setLayoutParams(layoutParams);
        this.f6940h.setBackgroundResource(R.drawable.bg_cursor1);
        this.f6940h.setImageDrawable(null);
        this.f6941i.setOnSeekBarChangeListener(new d5(this, layoutParams, i12, i11));
        final TextView textView = (TextView) findViewById(R.id.v_ts5);
        findViewById(R.id.v_btn_select).setOnClickListener(new c6.c(this, 7, textView));
        this.f6942j = (RecyclerView) findViewById(R.id.v_list_ico);
        x9.t4 t4Var = new x9.t4();
        t4Var.q(new x9.u4("样式1", true));
        for (int i13 = 0; i13 < 17; i13++) {
            t4Var.q(new x9.u4("样式" + (i13 + 2), false));
        }
        t4Var.F(0);
        this.f6942j.setLayoutManager(new LinearLayoutManager(0, false));
        this.f6942j.setAdapter(t4Var);
        t4Var.f2881e = new d2.w(this, 13, t4Var);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_gn);
        this.f6943k = recyclerView;
        recyclerView.setLayoutManager(new GridLayoutManager(2));
        final x9.y0 y0Var = new x9.y0(true);
        y0Var.q(new x9.x0("10秒没有操作时-隐藏光标", true));
        fa.b0.f5652a.getClass();
        if (a2.w0.O()) {
            y0Var.q(new x9.x0("频道切换键改为上下键", true));
        }
        this.f6943k.setAdapter(y0Var);
        y0Var.f2881e = new a1.d(18, y0Var);
        findViewById(R.id.v_btn_yes).setOnClickListener(new View.OnClickListener() { // from class: ha.c5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e5 e5Var = this.f6850a;
                e5Var.getClass();
                z7.s sVar = new z7.s();
                sVar.l("cursor_style", Integer.valueOf(e5Var.l));
                sVar.l("cursor_size", Integer.valueOf((e5Var.f6941i.getProgress() * i12) + i11));
                x9.y0 y0Var2 = y0Var;
                sVar.k("isAutoHideCursor", Boolean.valueOf(((x9.x0) y0Var2.t(0)).f18384b));
                if (y0Var2.b() > 1) {
                    sVar.k("isChannelSwitchToDownUp", Boolean.valueOf(((x9.x0) y0Var2.t(1)).f18384b));
                }
                TextView textView2 = textView;
                if (!textView2.getText().toString().isEmpty()) {
                    sVar.l("cursor_close_key_code", Integer.valueOf(Integer.parseInt(textView2.getText().toString())));
                }
                e5Var.f6939g.k(sVar);
                e5Var.dismiss();
            }
        });
    }
}

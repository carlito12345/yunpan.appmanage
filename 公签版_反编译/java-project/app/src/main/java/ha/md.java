package ha;

import android.content.Context;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityHome;
import io.github.muntashirakon.adb.android.AdbMdns;

/* loaded from: classes.dex */
public final class md extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public AdbMdns f7446g;

    /* renamed from: h, reason: collision with root package name */
    public EditText f7447h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7448i;

    /* renamed from: j, reason: collision with root package name */
    public TvRecyclerView f7449j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f7450k;
    public final x9.r2 l;

    public md(ActivityHome activityHome, ActivityHome activityHome2) {
        super(activityHome, activityHome2, R.layout.dialog_telnet);
        this.f7450k = false;
        this.l = new x9.r2();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f7446g.stop();
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7447h = (EditText) findViewById(R.id.v_edit);
        this.f7448i = (TextView) findViewById(R.id.v_btn_yes);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7449j = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        TvRecyclerView tvRecyclerView2 = this.f7449j;
        x9.r2 r2Var = this.l;
        tvRecyclerView2.setAdapter(r2Var);
        r2Var.f2881e = new ld(this);
        this.f7448i.setOnClickListener(new g9(15, this));
        AdbMdns adbMdns = new AdbMdns(context, AdbMdns.SERVICE_TYPE_TELNET, new ld(this));
        this.f7446g = adbMdns;
        adbMdns.start();
    }
}

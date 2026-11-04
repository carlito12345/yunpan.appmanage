package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class qc extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final p7 f7633g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f7634h;

    /* renamed from: i, reason: collision with root package name */
    public x9.r2 f7635i;

    /* renamed from: j, reason: collision with root package name */
    public com.yunpan.appmanage.util.f f7636j;

    public qc(Activity activity, Context context, p7 p7Var) {
        super(activity, context, R.layout.dialog_ip);
        this.f7633g = p7Var;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        this.f7636j.f4015c.set(true);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((TextView) findViewById(R.id.v_ts1)).setText("smb服务器-搜寻");
        TextView textView = (TextView) findViewById(R.id.v_btn_found);
        textView.setText("关闭");
        textView.setOnClickListener(new g9(13, this));
        this.f7634h = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7635i = new x9.r2();
        this.f7634h.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        this.f7634h.setAdapter(this.f7635i);
        this.f7635i.f2881e = new p7(18, this);
        this.f7634h.setOnInBorderKeyEventListener(new g2.c(27));
        this.f7634h.setOnItemListener(new pc());
    }

    @Override // ha.a4, android.app.Dialog
    public final void show() {
        super.show();
        com.yunpan.appmanage.util.f fVar = new com.yunpan.appmanage.util.f(new h5.m(17, this));
        this.f7636j = fVar;
        if (fVar.f4018f) {
            return;
        }
        fVar.f4018f = true;
        fVar.f4015c.set(false);
        new Thread(new com.yunpan.appmanage.util.e(fVar, 0)).start();
    }
}

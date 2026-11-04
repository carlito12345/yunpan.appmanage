package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.hierynomus.smbj.SMBClient;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class te extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7841g;

    /* renamed from: h, reason: collision with root package name */
    public x9.o5 f7842h;

    /* renamed from: i, reason: collision with root package name */
    public ua.r8 f7843i;

    public te(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_wp_add);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7841g = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        x9.o5 o5Var = new x9.o5();
        this.f7842h = o5Var;
        this.f7841g.setAdapter(o5Var);
        x9.o5 o5Var2 = this.f7842h;
        o5Var2.f2881e = new p7(23, this);
        o5Var2.q(new x9.n5(1, "蓝奏云"));
        this.f7842h.q(new x9.n5(2, "123云盘"));
        this.f7842h.q(new x9.n5(3, "SMB", SMBClient.DEFAULT_PORT));
        this.f7842h.q(new x9.n5(4, "FTP", 21));
        this.f7842h.q(new x9.n5(5, "FTPS", 21));
        this.f7842h.q(new x9.n5(6, "SFTP", 22));
        this.f7842h.q(new x9.n5(7, "WebDAV"));
        this.f7842h.q(new x9.n5(20, "小飞机"));
        this.f7842h.q(new x9.n5(21, "光鸭云盘"));
    }
}

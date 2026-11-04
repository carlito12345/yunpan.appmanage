package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;
import java.util.List;

/* loaded from: classes.dex */
public final class fa extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public RecyclerView f7034g;

    /* renamed from: h, reason: collision with root package name */
    public x9.m1 f7035h;

    /* renamed from: i, reason: collision with root package name */
    public final List f7036i;

    /* renamed from: j, reason: collision with root package name */
    public final ea f7037j;

    /* renamed from: k, reason: collision with root package name */
    public final String f7038k;

    public fa(Activity activity, Context context, String str, List list, ea eaVar) {
        super(activity, context, R.layout.dialog_menu);
        this.f7036i = list;
        this.f7037j = eaVar;
        this.f7038k = str;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String str = this.f7038k;
        if (str != null && !str.isEmpty()) {
            TextView textView = (TextView) findViewById(R.id.v_title);
            textView.setVisibility(0);
            textView.setText(str);
        }
        this.f7034g = (RecyclerView) findViewById(R.id.v_list);
        x9.m1 m1Var = new x9.m1();
        this.f7035h = m1Var;
        m1Var.E(this.f7036i);
        this.f7034g.setLayoutManager(new LinearLayoutManager());
        this.f7034g.setAdapter(this.f7035h);
        this.f7034g.postDelayed(new a2.h(27, this), 100L);
        this.f7035h.f2881e = new p7(5, this);
    }
}

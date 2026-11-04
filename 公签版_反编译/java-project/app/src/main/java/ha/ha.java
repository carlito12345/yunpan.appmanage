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
public final class ha extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public RecyclerView f7161g;

    /* renamed from: h, reason: collision with root package name */
    public x9.n1 f7162h;

    /* renamed from: i, reason: collision with root package name */
    public final List f7163i;

    /* renamed from: j, reason: collision with root package name */
    public final ga f7164j;

    /* renamed from: k, reason: collision with root package name */
    public final String f7165k;

    public ha(Activity activity, Context context, String str, List list, ga gaVar) {
        super(activity, context, R.layout.dialog_menu);
        this.f7163i = list;
        this.f7164j = gaVar;
        this.f7165k = str;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String str = this.f7165k;
        if (str != null && !str.isEmpty()) {
            ((TextView) findViewById(R.id.v_title)).setText(str);
        }
        this.f7161g = (RecyclerView) findViewById(R.id.v_list);
        x9.n1 n1Var = new x9.n1();
        this.f7162h = n1Var;
        n1Var.E(this.f7163i);
        this.f7161g.setLayoutManager(new LinearLayoutManager());
        this.f7161g.setAdapter(this.f7162h);
        this.f7161g.postDelayed(new a2.h(28, this), 100L);
        this.f7162h.f2881e = new p7(6, this);
    }
}

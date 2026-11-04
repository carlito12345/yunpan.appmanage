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
public final class ie extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final String f7222g;

    /* renamed from: h, reason: collision with root package name */
    public RecyclerView f7223h;

    /* renamed from: i, reason: collision with root package name */
    public x9.i5 f7224i;

    /* renamed from: j, reason: collision with root package name */
    public final List f7225j;

    /* renamed from: k, reason: collision with root package name */
    public final he f7226k;

    public ie(Activity activity, Context context, List list, he heVar) {
        super(activity, context, R.layout.dialog_menu);
        this.f7222g = "";
        this.f7225j = list;
        this.f7226k = heVar;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String str = this.f7222g;
        if (!str.isEmpty()) {
            ((TextView) findViewById(R.id.v_title)).setText(str);
        }
        this.f7223h = (RecyclerView) findViewById(R.id.v_list);
        x9.i5 i5Var = new x9.i5();
        this.f7224i = i5Var;
        i5Var.E(this.f7225j);
        this.f7223h.setLayoutManager(new LinearLayoutManager());
        this.f7223h.setAdapter(this.f7224i);
        this.f7223h.postDelayed(new db(2, this), 100L);
        this.f7224i.f2881e = new p7(21, this);
    }
}

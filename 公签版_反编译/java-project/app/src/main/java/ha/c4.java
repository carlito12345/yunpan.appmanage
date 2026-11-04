package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class c4 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public RecyclerView f6845g;

    /* renamed from: h, reason: collision with root package name */
    public x9.z5 f6846h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f6847i;

    /* renamed from: j, reason: collision with root package name */
    public ua.u8 f6848j;

    /* renamed from: k, reason: collision with root package name */
    public x9.w3 f6849k;
    public String l;

    public c4(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_bd_file_menu);
        this.l = "";
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_cancel_default_text);
        this.f6847i = textView;
        textView.setVisibility(8);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_menu);
        this.f6845g = recyclerView;
        recyclerView.setLayoutManager(new GridLayoutManager(2));
        x9.z5 z5Var = new x9.z5();
        this.f6846h = z5Var;
        this.f6845g.setAdapter(z5Var);
        x9.z5 z5Var2 = this.f6846h;
        z5Var2.f2881e = new b4(this);
        z5Var2.f2882f = new b4(this);
    }
}

package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import java.io.File;

/* loaded from: classes.dex */
public final class ke extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final je f7334g;

    /* renamed from: h, reason: collision with root package name */
    public final String f7335h;

    /* renamed from: i, reason: collision with root package name */
    public String f7336i;

    public ke(Activity activity, Context context, String str, je jeVar) {
        super(activity, context, R.layout.dialog_unfile);
        this.f7336i = ".zip";
        this.f7334g = jeVar;
        this.f7335h = str;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_review_gs);
        EditText editText = (EditText) findViewById(R.id.v_edit);
        String str = this.f7335h;
        String name = new File(str).getName();
        int iLastIndexOf = name.lastIndexOf(".");
        if (new File(str).isFile() && iLastIndexOf > 2) {
            name = name.substring(0, iLastIndexOf);
        }
        editText.setText(name);
        editText.setOnKeyListener(new c0(tvRecyclerView, 7));
        EditText editText2 = (EditText) findViewById(R.id.v_password);
        editText2.setOnKeyListener(new e2(this, tvRecyclerView, 4));
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 0, false));
        x9.j5 j5Var = new x9.j5();
        tvRecyclerView.setAdapter(j5Var);
        j5Var.q(new x9.k5(".zip", "", true));
        j5Var.q(new x9.k5(".7z", "", false));
        j5Var.f2881e = new d2.w(this, 27, j5Var);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_btn_yes);
        linearLayout.requestFocus();
        linearLayout.setOnClickListener(new s6(this, editText, editText2, 5));
        findViewById(R.id.v_btn_no).setOnClickListener(new g9(16, this));
    }
}

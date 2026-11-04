package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.FileCopyBean;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class y4 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public final FileCopyBean f8083g;

    /* renamed from: h, reason: collision with root package name */
    public final x4 f8084h;

    /* renamed from: i, reason: collision with root package name */
    public x9.i1 f8085i;

    public y4(Activity activity, Context context, FileCopyBean fileCopyBean, x4 x4Var) {
        super(activity, context, R.layout.dialog_copy);
        this.f8083g = fileCopyBean;
        this.f8084h = x4Var;
    }

    public static void a(y4 y4Var) {
        int i10 = 0;
        while (true) {
            FileCopyBean fileCopyBean = y4Var.f8083g;
            if (i10 >= fileCopyBean.files.size()) {
                super.dismiss();
                y4Var.f8084h.a();
                return;
            } else {
                if (fileCopyBean.files.get(i10).f18373j.equals("重复")) {
                    fileCopyBean.files.get(i10).f18373j = "跳过";
                }
                i10++;
            }
        }
    }

    public static void b(y4 y4Var) {
        super.dismiss();
        y4Var.f8084h.c();
    }

    public static void c(y4 y4Var) {
        int i10 = 0;
        while (true) {
            FileCopyBean fileCopyBean = y4Var.f8083g;
            if (i10 >= fileCopyBean.files.size()) {
                super.dismiss();
                y4Var.f8084h.a();
                return;
            } else {
                if (fileCopyBean.files.get(i10).f18373j.equals("重复")) {
                    fileCopyBean.files.get(i10).f18373j = "";
                }
                i10++;
            }
        }
    }

    public final void d() {
        super.dismiss();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i10 = 0;
        findViewById(R.id.v_btn_cover).setOnClickListener(new View.OnClickListener(this) { // from class: ha.w4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y4 f7998b;

            {
                this.f7998b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        y4.c(this.f7998b);
                        break;
                    case 1:
                        y4.a(this.f7998b);
                        break;
                    default:
                        y4.b(this.f7998b);
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_skip).setOnClickListener(new View.OnClickListener(this) { // from class: ha.w4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y4 f7998b;

            {
                this.f7998b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        y4.c(this.f7998b);
                        break;
                    case 1:
                        y4.a(this.f7998b);
                        break;
                    default:
                        y4.b(this.f7998b);
                        break;
                }
            }
        });
        final int i12 = 2;
        findViewById(R.id.v_btn_cancel).setOnClickListener(new View.OnClickListener(this) { // from class: ha.w4

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y4 f7998b;

            {
                this.f7998b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i12) {
                    case 0:
                        y4.c(this.f7998b);
                        break;
                    case 1:
                        y4.a(this.f7998b);
                        break;
                    default:
                        y4.b(this.f7998b);
                        break;
                }
            }
        });
        h5.m mVar = new h5.m(7, this);
        FileCopyBean fileCopyBean = this.f8083g;
        this.f8085i = new x9.i1(mVar, fileCopyBean.fromDir, fileCopyBean.toDir);
        for (int i13 = 0; i13 < fileCopyBean.files.size(); i13++) {
            if (fileCopyBean.files.get(i13).f18373j.equals("重复")) {
                x9.i1 i1Var = this.f8085i;
                x9.w3 w3Var = fileCopyBean.files.get(i13);
                ArrayList arrayList = i1Var.f18240d;
                arrayList.add(w3Var);
                i1Var.e(arrayList.size() - 1);
            }
        }
        ((TextView) findViewById(R.id.v_text)).setText("存在" + this.f8085i.f18240d.size() + "个相同名字的文件，是否覆盖？");
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f6725b, 1, false));
        tvRecyclerView.setAdapter(this.f8085i);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
    }
}

package com.yunpan.appmanage.ui;

import android.content.ContentResolver;
import android.content.Context;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityOuShangWhitelist;
import da.g;
import fc.b;
import ha.a3;
import ha.h3;
import ha.x6;
import java.util.ArrayList;
import mc.c;
import rc.f;
import ua.i5;
import ua.j5;
import x9.v3;

/* loaded from: classes.dex */
public class ActivityOuShangWhitelist extends g {
    public static final /* synthetic */ int G = 0;
    public TextView C;
    public TvRecyclerView D;
    public v3 E;
    public ContentResolver F;

    @Override // da.g
    public final int t() {
        return R.layout.activity_oushang_whitelist;
    }

    @Override // da.g
    public final void u() {
        this.F = this.A.getContentResolver();
        TextView textView = (TextView) findViewById(R.id.v_btn_return);
        this.C = textView;
        final int i10 = 0;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: ua.h5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityOuShangWhitelist f15716b;

            {
                this.f15716b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityOuShangWhitelist activityOuShangWhitelist = this.f15716b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityOuShangWhitelist.G;
                        activityOuShangWhitelist.finish();
                        break;
                    default:
                        if (activityOuShangWhitelist.E.b() != 0) {
                            new mc.c(0, new j5(activityOuShangWhitelist)).d(rc.f.f13757b).a(fc.b.a()).b(new k5(activityOuShangWhitelist, 1));
                            break;
                        } else {
                            Toaster.show((CharSequence) "没有数据，无需清理");
                            break;
                        }
                }
            }
        });
        this.C.requestFocus();
        final int i11 = 1;
        findViewById(R.id.v_btn_delect).setOnClickListener(new View.OnClickListener(this) { // from class: ua.h5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityOuShangWhitelist f15716b;

            {
                this.f15716b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityOuShangWhitelist activityOuShangWhitelist = this.f15716b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityOuShangWhitelist.G;
                        activityOuShangWhitelist.finish();
                        break;
                    default:
                        if (activityOuShangWhitelist.E.b() != 0) {
                            new mc.c(0, new j5(activityOuShangWhitelist)).d(rc.f.f13757b).a(fc.b.a()).b(new k5(activityOuShangWhitelist, 1));
                            break;
                        } else {
                            Toaster.show((CharSequence) "没有数据，无需清理");
                            break;
                        }
                }
            }
        });
        TextView textView2 = (TextView) findViewById(R.id.v_btn_add);
        EditText editText = (EditText) findViewById(R.id.v_edit_pack);
        editText.setOnKeyListener(new x6(textView2, 11));
        textView2.setOnClickListener(new i5(this, editText, 0));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.D = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this, 1, false));
        v3 v3Var = new v3(this);
        this.E = v3Var;
        this.D.setAdapter(v3Var);
        this.E.f2881e = new j5(this);
        ArrayList arrayList = new ArrayList();
        new c(0, new a3(6, arrayList)).d(f.f13757b).a(b.a()).b(new h3(this, 15, arrayList));
    }
}

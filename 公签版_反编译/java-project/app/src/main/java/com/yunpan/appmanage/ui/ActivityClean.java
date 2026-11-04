package com.yunpan.appmanage.ui;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.FileInfo;
import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityClean;
import com.yunpan.appmanage.util.a0;
import da.g;
import fc.b;
import ha.c0;
import ja.c;
import java.io.File;
import java.util.List;
import kh.e;
import kh.j;
import org.greenrobot.eventbus.ThreadMode;
import rc.f;
import ua.y0;
import ua.z0;
import x9.t0;

/* loaded from: classes.dex */
public class ActivityClean extends g {
    public static final /* synthetic */ int M = 0;
    public TextView C;
    public TvRecyclerView D;
    public TextView F;
    public ImageView G;
    public ImageView H;
    public ObjectAnimator I;
    public ObjectAnimator K;
    public final t0 E = new t0(2);
    public final String L = "/\\u200bdata/";

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        e.b().f(new c(10));
        e.b().l(this);
        super.onDestroy();
    }

    @j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(String str) {
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_clean;
    }

    @Override // da.g
    public final void u() {
        e.b().j(this);
        final int i10 = 0;
        ((TextView) findViewById(R.id.v_btn_return)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.x0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityClean f16028b;

            {
                this.f16028b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityClean activityClean = this.f16028b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityClean.M;
                        activityClean.finish();
                        break;
                    default:
                        if (!activityClean.C.getText().equals("开始清理")) {
                            if (activityClean.C.getText().equals("清理完成")) {
                                activityClean.finish();
                                break;
                            }
                        } else {
                            new mc.c(0, new y0(activityClean, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new z0(activityClean, 1));
                            break;
                        }
                        break;
                }
            }
        });
        this.F = (TextView) findViewById(R.id.v_text_ts);
        TextView textView = (TextView) findViewById(R.id.v_btn_yes);
        this.C = textView;
        textView.requestFocus();
        final int i11 = 1;
        this.C.setOnClickListener(new View.OnClickListener(this) { // from class: ua.x0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityClean f16028b;

            {
                this.f16028b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityClean activityClean = this.f16028b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityClean.M;
                        activityClean.finish();
                        break;
                    default:
                        if (!activityClean.C.getText().equals("开始清理")) {
                            if (activityClean.C.getText().equals("清理完成")) {
                                activityClean.finish();
                                break;
                            }
                        } else {
                            new mc.c(0, new y0(activityClean, 3)).d(rc.f.f13757b).a(fc.b.a()).b(new z0(activityClean, 1));
                            break;
                        }
                        break;
                }
            }
        });
        this.C.setOnKeyListener(new c0(this, 8));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.D = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        TvRecyclerView tvRecyclerView2 = this.D;
        t0 t0Var = this.E;
        tvRecyclerView2.setAdapter(t0Var);
        this.D.setOnInBorderKeyEventListener(new y0(this, i10));
        t0Var.f2881e = new y0(this, i11);
        this.G = (ImageView) findViewById(R.id.v_dh_bj1);
        this.H = (ImageView) findViewById(R.id.v_dh_bj2);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.G, "rotation", 0.0f, 360.0f);
        this.I = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(700L);
        this.I.setInterpolator(new LinearInterpolator());
        this.I.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.H, "rotation", 0.0f, 360.0f);
        this.K = objectAnimatorOfFloat2;
        objectAnimatorOfFloat2.setDuration(700L);
        this.K.setInterpolator(new LinearInterpolator());
        this.K.setRepeatCount(-1);
        new mc.c(i10, new y0(this, 2)).d(f.f13757b).a(b.a()).b(new z0(this, i10));
    }

    public final boolean x(String str) {
        List<FileInfo> dirFiles = MyDb.get().getFileInfoDao().getDirFiles(str);
        int i10 = 0;
        for (FileInfo fileInfo : dirFiles) {
            if (!fileInfo.isDir || (!fileInfo.path.contains(this.L) && x(fileInfo.path))) {
                i10++;
            }
        }
        if (i10 == dirFiles.size()) {
            new File(str).delete();
            if (!a0.g(str)) {
                MyDb.get().getFileInfoDao().delete(str);
                return true;
            }
        }
        return false;
    }
}

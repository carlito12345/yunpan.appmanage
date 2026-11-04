package com.yunpan.appmanage.ui;

import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.db.AppBean;
import com.yunpan.appmanage.ui.ActivityApps;
import com.yunpan.appmanage.util.k;
import da.g;
import ha.aa;
import ha.e2;
import ha.l2;
import ha.o;
import ha.o2;
import ja.a;
import java.text.DecimalFormat;
import kh.e;
import kh.j;
import l5.y;
import mc.c;
import org.greenrobot.eventbus.ThreadMode;
import rc.f;
import tb.v;
import ua.j0;
import x9.a0;
import x9.c0;

/* loaded from: classes.dex */
public class ActivityApps extends g {
    public static final /* synthetic */ int L = 0;
    public RecyclerView C;
    public c0 D;
    public TvRecyclerView E;
    public a0 F;
    public LinearLayout G;
    public o2 H;
    public EditText I;
    public String K;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        e.b().l(this);
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(a aVar) {
        int i10 = aVar.f9813a;
        if (i10 != 11) {
            if (i10 == 12) {
                x(this.D.F());
            }
        } else {
            for (int i11 = 0; i11 < this.F.b(); i11++) {
                if (((AppBean) this.F.t(i11)).pack.equals(aVar.f9814b)) {
                    this.F.C(i11);
                    return;
                }
            }
        }
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_apps;
    }

    @Override // da.g
    public final void u() {
        e.b().j(this);
        final int i10 = 0;
        this.H = new o2(this, this, 0, new y(25, this));
        TextView textView = (TextView) findViewById(R.id.v_btn_return);
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: ua.g0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityApps f15685b;

            {
                this.f15685b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(final View view) {
                final ActivityApps activityApps = this.f15685b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityApps.L;
                        activityApps.finish();
                        break;
                    default:
                        int i12 = ActivityApps.L;
                        activityApps.getClass();
                        PopupMenu popupMenu = new PopupMenu(activityApps.A, view);
                        popupMenu.getMenuInflater().inflate(R.menu.menu_apps_reload, popupMenu.getMenu());
                        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: ua.i0
                            @Override // android.widget.PopupMenu.OnMenuItemClickListener
                            public final boolean onMenuItemClick(MenuItem menuItem) {
                                int i13 = 1;
                                int i14 = ActivityApps.L;
                                ActivityApps activityApps2 = activityApps;
                                activityApps2.getClass();
                                if (menuItem.getItemId() == R.id.menu1) {
                                    int iF = activityApps2.D.F();
                                    if (iF == 0) {
                                        activityApps2.C.setVisibility(0);
                                        activityApps2.I.setVisibility(8);
                                        activityApps2.D.G(2);
                                    }
                                    activityApps2.x(iF);
                                } else if (menuItem.getItemId() == R.id.menu2) {
                                    new mc.c(0, new tb.v(27)).d(rc.f.f13757b).a(fc.b.a()).b(new j0(activityApps2, 0));
                                } else if (menuItem.getItemId() == R.id.menu3) {
                                    PopupMenu popupMenu2 = new PopupMenu(activityApps2.A, view);
                                    popupMenu2.getMenuInflater().inflate(R.menu.menu_apps_sort, popupMenu2.getMenu());
                                    popupMenu2.setOnMenuItemClickListener(new ha.y2(activityApps2, i13));
                                    popupMenu2.show();
                                }
                                return true;
                            }
                        });
                        popupMenu.show();
                        break;
                }
            }
        });
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_read_ts_lay);
        this.G = linearLayout;
        linearLayout.setVisibility(8);
        EditText editText = (EditText) findViewById(R.id.v_search);
        this.I = editText;
        editText.setVisibility(8);
        this.I.setOnKeyListener(new e2(this, textView, 5));
        this.I.addTextChangedListener(new aa(this, 3));
        final int i11 = 1;
        findViewById(R.id.v_btn_reload).setOnClickListener(new View.OnClickListener(this) { // from class: ua.g0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityApps f15685b;

            {
                this.f15685b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(final View view) {
                final ActivityApps activityApps = this.f15685b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityApps.L;
                        activityApps.finish();
                        break;
                    default:
                        int i12 = ActivityApps.L;
                        activityApps.getClass();
                        PopupMenu popupMenu = new PopupMenu(activityApps.A, view);
                        popupMenu.getMenuInflater().inflate(R.menu.menu_apps_reload, popupMenu.getMenu());
                        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: ua.i0
                            @Override // android.widget.PopupMenu.OnMenuItemClickListener
                            public final boolean onMenuItemClick(MenuItem menuItem) {
                                int i13 = 1;
                                int i14 = ActivityApps.L;
                                ActivityApps activityApps2 = activityApps;
                                activityApps2.getClass();
                                if (menuItem.getItemId() == R.id.menu1) {
                                    int iF = activityApps2.D.F();
                                    if (iF == 0) {
                                        activityApps2.C.setVisibility(0);
                                        activityApps2.I.setVisibility(8);
                                        activityApps2.D.G(2);
                                    }
                                    activityApps2.x(iF);
                                } else if (menuItem.getItemId() == R.id.menu2) {
                                    new mc.c(0, new tb.v(27)).d(rc.f.f13757b).a(fc.b.a()).b(new j0(activityApps2, 0));
                                } else if (menuItem.getItemId() == R.id.menu3) {
                                    PopupMenu popupMenu2 = new PopupMenu(activityApps2.A, view);
                                    popupMenu2.getMenuInflater().inflate(R.menu.menu_apps_sort, popupMenu2.getMenu());
                                    popupMenu2.setOnMenuItemClickListener(new ha.y2(activityApps2, i13));
                                    popupMenu2.show();
                                }
                                return true;
                            }
                        });
                        popupMenu.show();
                        break;
                }
            }
        });
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_type);
        this.C = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(0, false));
        c0 c0Var = new c0();
        this.D = c0Var;
        g.b.w("搜索", false, c0Var);
        g.b.w("全部应用", false, this.D);
        g.b.w("个人应用", true, this.D);
        g.b.w("系统应用", false, this.D);
        g.b.w("服务插件", false, this.D);
        g.b.w("被禁用", false, this.D);
        g.b.w("被隐藏", false, this.D);
        g.b.w("伪卸载", false, this.D);
        g.b.w("已卸载(但保留数据)", false, this.D);
        this.C.setAdapter(this.D);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.E = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 7));
        a0 a0Var = new a0(this);
        this.F = a0Var;
        this.E.setAdapter(a0Var);
        this.D.f2881e = new c6.e(this) { // from class: ua.h0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityApps f15707b;

            {
                this.f15707b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i12) {
                switch (i10) {
                    case 0:
                        ActivityApps activityApps = this.f15707b;
                        activityApps.D.G(i12);
                        activityApps.E.stopScroll();
                        if (i12 != 0) {
                            activityApps.x(i12);
                            break;
                        } else {
                            activityApps.I.setVisibility(0);
                            activityApps.I.requestFocus();
                            activityApps.C.setVisibility(8);
                            break;
                        }
                    default:
                        this.f15707b.H.e(i12, (AppBean) gVar.t(i12));
                        break;
                }
            }
        };
        this.F.f2881e = new c6.e(this) { // from class: ua.h0

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityApps f15707b;

            {
                this.f15707b = this;
            }

            @Override // c6.e
            public final void x(c6.g gVar, View view, int i12) {
                switch (i11) {
                    case 0:
                        ActivityApps activityApps = this.f15707b;
                        activityApps.D.G(i12);
                        activityApps.E.stopScroll();
                        if (i12 != 0) {
                            activityApps.x(i12);
                            break;
                        } else {
                            activityApps.I.setVisibility(0);
                            activityApps.I.requestFocus();
                            activityApps.C.setVisibility(8);
                            break;
                        }
                    default:
                        this.f15707b.H.e(i12, (AppBean) gVar.t(i12));
                        break;
                }
            }
        };
        x(2);
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (p000if.a.p0(kVar.f4039c).equals("c7753507a4d379184a2ac3651059038e") || !p000if.a.p0(kVar.f4041d).equals("8418ca95857ddad6713ce6826dc36ad6")) {
            new c(0, new v(26)).d(f.f13757b).a(fc.b.a()).b(new l2(28));
        } else {
            com.yunpan.appmanage.util.a0.s("修改版，请把包名改掉，不要和我同一个包名", false);
            finish();
        }
    }

    public final void x(int i10) {
        new c(0, new o(i10, 8, this)).d(f.f13757b).a(fc.b.a()).b(new j0(this, 1));
    }
}

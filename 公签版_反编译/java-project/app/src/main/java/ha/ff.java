package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.bean.WpPathBean;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ff extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TextView f7061g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f7062h;

    /* renamed from: i, reason: collision with root package name */
    public final x9.a6 f7063i;

    /* renamed from: j, reason: collision with root package name */
    public TvRecyclerView f7064j;

    /* renamed from: k, reason: collision with root package name */
    public final x9.q5 f7065k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public TextView f7066m;

    /* renamed from: n, reason: collision with root package name */
    public LinearLayout f7067n;

    /* renamed from: p, reason: collision with root package name */
    public ImageView f7068p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f7069q;
    public ConstraintLayout r;

    /* renamed from: s, reason: collision with root package name */
    public x9.n5 f7070s;

    /* renamed from: t, reason: collision with root package name */
    public ua.t8 f7071t;

    public ff(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_move_to_dir);
        this.f7063i = new x9.a6();
        this.f7065k = new x9.q5();
    }

    public final void a() {
        mc.g gVarA;
        this.f7062h.requestFocus();
        TvRecyclerView tvRecyclerView = this.f7062h;
        x9.a6 a6Var = this.f7063i;
        tvRecyclerView.setSelection(a6Var.b() - 1);
        this.f7064j.stopScroll();
        this.f7065k.E(new ArrayList());
        b("", 0, false);
        this.r.setVisibility(0);
        WpPathBean wpPathBean = (WpPathBean) a6Var.t(a6Var.b() - 1);
        x9.n5 n5Var = this.f7070s;
        int i10 = n5Var.f18290a;
        if (i10 == 1) {
            gVarA = new mc.c(0, new ba.b(n5Var, wpPathBean, 6)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 2) {
            gVarA = new mc.c(0, new ba.b(n5Var, wpPathBean, 7)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 20) {
            wpPathBean.page = 1;
            gVarA = new mc.c(0, new ba.b(n5Var, wpPathBean, 9)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 21) {
            wpPathBean.page = 1;
            gVarA = new mc.c(0, new ba.b(n5Var, wpPathBean, 0)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 3) {
            gVarA = new mc.c(0, new ba.b(n5Var, wpPathBean, 14)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 4) {
            gVarA = new mc.c(0, new ba.b(n5Var, wpPathBean, 11)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 5) {
            gVarA = new mc.c(0, new ba.b(n5Var, wpPathBean, 12)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 == 6) {
            gVarA = new mc.c(0, new ba.f(n5Var, wpPathBean, 11)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i10 != 7) {
            return;
        } else {
            gVarA = new mc.c(0, new ba.b(wpPathBean, n5Var, 15)).d(rc.f.f13757b).a(fc.b.a());
        }
        gVarA.b(new p0(29, this));
    }

    public final void b(String str, int i10, boolean z) {
        this.f7067n.setVisibility(z ? 0 : 8);
        if (z) {
            this.f7068p.setImageResource(i10);
            this.f7069q.setText(str);
        }
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        x9.a6 a6Var = this.f7063i;
        if (a6Var.b() <= 1) {
            super.onBackPressed();
            return;
        }
        a6Var.C(a6Var.b() - 1);
        this.f7062h.setSelection(a6Var.b() - 1);
        this.f7062h.requestFocus();
        a();
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7061g = (TextView) findViewById(R.id.v_title);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_path);
        this.f7062h = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 0, false));
        TvRecyclerView tvRecyclerView2 = this.f7062h;
        x9.a6 a6Var = this.f7063i;
        tvRecyclerView2.setAdapter(a6Var);
        TvRecyclerView tvRecyclerView3 = (TvRecyclerView) findViewById(R.id.v_file);
        this.f7064j = tvRecyclerView3;
        tvRecyclerView3.setLayoutManager(new V7GridLayoutManager(context, 3));
        TvRecyclerView tvRecyclerView4 = this.f7064j;
        x9.q5 q5Var = this.f7065k;
        tvRecyclerView4.setAdapter(q5Var);
        this.l = (TextView) findViewById(R.id.v_btn_yes);
        this.f7066m = (TextView) findViewById(R.id.v_btn_new);
        final int i10 = 0;
        ((TextView) findViewById(R.id.v_btn_reload)).setOnClickListener(new View.OnClickListener(this) { // from class: ha.df

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ff f6923b;

            {
                this.f6923b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                mc.g gVarA;
                mc.g gVarA2;
                mc.g gVarA3;
                switch (i10) {
                    case 0:
                        this.f6923b.a();
                        break;
                    case 1:
                        ff ffVar = this.f6923b;
                        x9.a6 a6Var2 = ffVar.f7063i;
                        if (a6Var2.b() != 1 || ffVar.f7070s.f18290a != 3 || !((WpPathBean) a6Var2.t(0)).path.isEmpty()) {
                            if (a6Var2.b() > 0) {
                                ua.t8 t8Var = ffVar.f7071t;
                                WpPathBean wpPathBean = (WpPathBean) a6Var2.t(a6Var2.b() - 1);
                                switch (t8Var.f15971a) {
                                    case 1:
                                        ua.i9 i9Var = t8Var.f15972b;
                                        x9.n5 n5Var = (x9.n5) i9Var.f15746j.t(i9Var.T);
                                        WpPathBean wpPathBean2 = (WpPathBean) i9Var.f15751q.t(t8Var.f15973c);
                                        if (!wpPathBean2.path.equals(wpPathBean.path)) {
                                            int i11 = n5Var.f18290a;
                                            if (i11 != 1 && i11 != 2 && i11 != 3 && i11 != 7 && i11 != 21) {
                                                if (i11 == 4 || i11 == 5 || i11 == 6) {
                                                    if (!wpPathBean.path.startsWith(wpPathBean2.path)) {
                                                        ArrayList arrayList = new ArrayList();
                                                        arrayList.add(wpPathBean2);
                                                        FtpCopyProgressBean ftpCopyProgressBean = new FtpCopyProgressBean();
                                                        ftpCopyProgressBean.userInfo = n5Var;
                                                        ftpCopyProgressBean.paths = arrayList;
                                                        ftpCopyProgressBean.rootDirPath_form = new File(((WpPathBean) arrayList.get(0)).path).getParent();
                                                        ftpCopyProgressBean.rootDirPath_to = wpPathBean.path;
                                                        int i12 = n5Var.f18290a;
                                                        if (i12 == 4) {
                                                            gVarA2 = new mc.c(0, new qa.d(ftpCopyProgressBean, 1)).d(rc.f.f13757b).a(fc.b.a());
                                                        } else if (i12 == 5) {
                                                            gVarA2 = new mc.c(0, new qa.d(ftpCopyProgressBean, 3)).d(rc.f.f13757b).a(fc.b.a());
                                                        } else if (i12 == 6) {
                                                            gVarA2 = new mc.c(0, new qa.d(ftpCopyProgressBean, 5)).d(rc.f.f13757b).a(fc.b.a());
                                                        }
                                                        v9 v9Var = new v9(i9Var.f4530f, i9Var.f4529e);
                                                        v9Var.c("正在复制", ftpCopyProgressBean);
                                                        gVarA2.b(new ze(i9Var, v9Var, ftpCopyProgressBean, 4));
                                                        break;
                                                    } else {
                                                        com.yunpan.appmanage.util.a0.y("警告：请不要复制到同一个目录下");
                                                        break;
                                                    }
                                                }
                                            } else if (i11 != 1) {
                                                if (i11 == 2) {
                                                    ArrayList arrayList2 = new ArrayList();
                                                    arrayList2.add(wpPathBean2);
                                                    gVarA = new mc.c(0, new ba.a(n5Var, arrayList2, wpPathBean, 3)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i11 == 21) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    arrayList3.add(wpPathBean2);
                                                    gVarA = new mc.c(0, new ba.a(n5Var, arrayList3, wpPathBean, 1)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i11 == 3) {
                                                    if (wpPathBean.path.startsWith(wpPathBean2.path)) {
                                                        com.yunpan.appmanage.util.a0.y("警告：请不要复制到同一个目录下");
                                                        break;
                                                    } else {
                                                        gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 8)).d(rc.f.f13757b).a(fc.b.a());
                                                    }
                                                } else if (i11 == 7) {
                                                    gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean, wpPathBean2, 10)).d(rc.f.f13757b).a(fc.b.a());
                                                }
                                                i9Var.f15744h.c("复制中");
                                                gVarA.b(new ua.a9(i9Var, 0));
                                                break;
                                            } else {
                                                com.yunpan.appmanage.util.a0.y("蓝奏云没有复制功能");
                                                break;
                                            }
                                        } else {
                                            com.yunpan.appmanage.util.a0.y("警告：请不要在移动到同一个目录下");
                                            break;
                                        }
                                        break;
                                    default:
                                        ua.i9 i9Var2 = t8Var.f15972b;
                                        x9.n5 n5Var2 = (x9.n5) i9Var2.f15746j.t(i9Var2.T);
                                        x9.y5 y5Var = i9Var2.f15751q;
                                        int i13 = t8Var.f15973c;
                                        WpPathBean wpPathBean3 = (WpPathBean) y5Var.t(i13);
                                        if (!wpPathBean3.path.equals(wpPathBean.path)) {
                                            if (n5Var2.f18290a > 2 && wpPathBean.path.startsWith(wpPathBean3.path)) {
                                                com.yunpan.appmanage.util.a0.y("警告：请不要移动到同一个目录下");
                                                break;
                                            } else {
                                                int i14 = n5Var2.f18290a;
                                                if (i14 == 1) {
                                                    gVarA3 = new mc.c(0, new ba.d(n5Var2, wpPathBean3, wpPathBean, 1)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 2) {
                                                    ArrayList arrayList4 = new ArrayList();
                                                    arrayList4.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList4, wpPathBean, 2)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 20) {
                                                    ArrayList arrayList5 = new ArrayList();
                                                    arrayList5.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList5, wpPathBean, 4)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 21) {
                                                    ArrayList arrayList6 = new ArrayList();
                                                    arrayList6.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(arrayList6, wpPathBean, n5Var2)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 3) {
                                                    gVarA3 = new mc.c(0, new ba.d(n5Var2, wpPathBean3, wpPathBean, 7)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 4) {
                                                    ArrayList arrayList7 = new ArrayList();
                                                    arrayList7.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList7, wpPathBean, 5)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 5) {
                                                    ArrayList arrayList8 = new ArrayList();
                                                    arrayList8.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList8, wpPathBean, 6)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 6) {
                                                    ArrayList arrayList9 = new ArrayList();
                                                    arrayList9.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.f(n5Var2, arrayList9, wpPathBean, 15)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 7) {
                                                    gVarA3 = new mc.c(0, new ba.d(n5Var2, wpPathBean, wpPathBean3, 12)).d(rc.f.f13757b).a(fc.b.a());
                                                }
                                                gVarA3.b(new ua.z8(i9Var2, i13, 1));
                                                break;
                                            }
                                        } else {
                                            com.yunpan.appmanage.util.a0.y("警告：请不要移动到同一个目录下");
                                            break;
                                        }
                                        break;
                                }
                            }
                            ffVar.dismiss();
                            break;
                        } else {
                            Toaster.show((CharSequence) "不能选当前位置");
                            break;
                        }
                        break;
                    default:
                        ff ffVar2 = this.f6923b;
                        x9.a6 a6Var3 = ffVar2.f7063i;
                        if (a6Var3.b() != 1 || ffVar2.f7070s.f18290a != 3 || !((WpPathBean) a6Var3.t(0)).path.isEmpty()) {
                            new z6(ffVar2.f6724a, ffVar2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new ef(ffVar2, 4)).show();
                            break;
                        } else {
                            Toaster.show((CharSequence) "当前位置无法新建目录");
                            break;
                        }
                        break;
                }
            }
        });
        final int i11 = 1;
        this.l.setOnClickListener(new View.OnClickListener(this) { // from class: ha.df

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ff f6923b;

            {
                this.f6923b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                mc.g gVarA;
                mc.g gVarA2;
                mc.g gVarA3;
                switch (i11) {
                    case 0:
                        this.f6923b.a();
                        break;
                    case 1:
                        ff ffVar = this.f6923b;
                        x9.a6 a6Var2 = ffVar.f7063i;
                        if (a6Var2.b() != 1 || ffVar.f7070s.f18290a != 3 || !((WpPathBean) a6Var2.t(0)).path.isEmpty()) {
                            if (a6Var2.b() > 0) {
                                ua.t8 t8Var = ffVar.f7071t;
                                WpPathBean wpPathBean = (WpPathBean) a6Var2.t(a6Var2.b() - 1);
                                switch (t8Var.f15971a) {
                                    case 1:
                                        ua.i9 i9Var = t8Var.f15972b;
                                        x9.n5 n5Var = (x9.n5) i9Var.f15746j.t(i9Var.T);
                                        WpPathBean wpPathBean2 = (WpPathBean) i9Var.f15751q.t(t8Var.f15973c);
                                        if (!wpPathBean2.path.equals(wpPathBean.path)) {
                                            int i112 = n5Var.f18290a;
                                            if (i112 != 1 && i112 != 2 && i112 != 3 && i112 != 7 && i112 != 21) {
                                                if (i112 == 4 || i112 == 5 || i112 == 6) {
                                                    if (!wpPathBean.path.startsWith(wpPathBean2.path)) {
                                                        ArrayList arrayList = new ArrayList();
                                                        arrayList.add(wpPathBean2);
                                                        FtpCopyProgressBean ftpCopyProgressBean = new FtpCopyProgressBean();
                                                        ftpCopyProgressBean.userInfo = n5Var;
                                                        ftpCopyProgressBean.paths = arrayList;
                                                        ftpCopyProgressBean.rootDirPath_form = new File(((WpPathBean) arrayList.get(0)).path).getParent();
                                                        ftpCopyProgressBean.rootDirPath_to = wpPathBean.path;
                                                        int i12 = n5Var.f18290a;
                                                        if (i12 == 4) {
                                                            gVarA2 = new mc.c(0, new qa.d(ftpCopyProgressBean, 1)).d(rc.f.f13757b).a(fc.b.a());
                                                        } else if (i12 == 5) {
                                                            gVarA2 = new mc.c(0, new qa.d(ftpCopyProgressBean, 3)).d(rc.f.f13757b).a(fc.b.a());
                                                        } else if (i12 == 6) {
                                                            gVarA2 = new mc.c(0, new qa.d(ftpCopyProgressBean, 5)).d(rc.f.f13757b).a(fc.b.a());
                                                        }
                                                        v9 v9Var = new v9(i9Var.f4530f, i9Var.f4529e);
                                                        v9Var.c("正在复制", ftpCopyProgressBean);
                                                        gVarA2.b(new ze(i9Var, v9Var, ftpCopyProgressBean, 4));
                                                        break;
                                                    } else {
                                                        com.yunpan.appmanage.util.a0.y("警告：请不要复制到同一个目录下");
                                                        break;
                                                    }
                                                }
                                            } else if (i112 != 1) {
                                                if (i112 == 2) {
                                                    ArrayList arrayList2 = new ArrayList();
                                                    arrayList2.add(wpPathBean2);
                                                    gVarA = new mc.c(0, new ba.a(n5Var, arrayList2, wpPathBean, 3)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i112 == 21) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    arrayList3.add(wpPathBean2);
                                                    gVarA = new mc.c(0, new ba.a(n5Var, arrayList3, wpPathBean, 1)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i112 == 3) {
                                                    if (wpPathBean.path.startsWith(wpPathBean2.path)) {
                                                        com.yunpan.appmanage.util.a0.y("警告：请不要复制到同一个目录下");
                                                        break;
                                                    } else {
                                                        gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 8)).d(rc.f.f13757b).a(fc.b.a());
                                                    }
                                                } else if (i112 == 7) {
                                                    gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean, wpPathBean2, 10)).d(rc.f.f13757b).a(fc.b.a());
                                                }
                                                i9Var.f15744h.c("复制中");
                                                gVarA.b(new ua.a9(i9Var, 0));
                                                break;
                                            } else {
                                                com.yunpan.appmanage.util.a0.y("蓝奏云没有复制功能");
                                                break;
                                            }
                                        } else {
                                            com.yunpan.appmanage.util.a0.y("警告：请不要在移动到同一个目录下");
                                            break;
                                        }
                                        break;
                                    default:
                                        ua.i9 i9Var2 = t8Var.f15972b;
                                        x9.n5 n5Var2 = (x9.n5) i9Var2.f15746j.t(i9Var2.T);
                                        x9.y5 y5Var = i9Var2.f15751q;
                                        int i13 = t8Var.f15973c;
                                        WpPathBean wpPathBean3 = (WpPathBean) y5Var.t(i13);
                                        if (!wpPathBean3.path.equals(wpPathBean.path)) {
                                            if (n5Var2.f18290a > 2 && wpPathBean.path.startsWith(wpPathBean3.path)) {
                                                com.yunpan.appmanage.util.a0.y("警告：请不要移动到同一个目录下");
                                                break;
                                            } else {
                                                int i14 = n5Var2.f18290a;
                                                if (i14 == 1) {
                                                    gVarA3 = new mc.c(0, new ba.d(n5Var2, wpPathBean3, wpPathBean, 1)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 2) {
                                                    ArrayList arrayList4 = new ArrayList();
                                                    arrayList4.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList4, wpPathBean, 2)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 20) {
                                                    ArrayList arrayList5 = new ArrayList();
                                                    arrayList5.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList5, wpPathBean, 4)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 21) {
                                                    ArrayList arrayList6 = new ArrayList();
                                                    arrayList6.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(arrayList6, wpPathBean, n5Var2)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 3) {
                                                    gVarA3 = new mc.c(0, new ba.d(n5Var2, wpPathBean3, wpPathBean, 7)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 4) {
                                                    ArrayList arrayList7 = new ArrayList();
                                                    arrayList7.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList7, wpPathBean, 5)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 5) {
                                                    ArrayList arrayList8 = new ArrayList();
                                                    arrayList8.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList8, wpPathBean, 6)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 6) {
                                                    ArrayList arrayList9 = new ArrayList();
                                                    arrayList9.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.f(n5Var2, arrayList9, wpPathBean, 15)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 7) {
                                                    gVarA3 = new mc.c(0, new ba.d(n5Var2, wpPathBean, wpPathBean3, 12)).d(rc.f.f13757b).a(fc.b.a());
                                                }
                                                gVarA3.b(new ua.z8(i9Var2, i13, 1));
                                                break;
                                            }
                                        } else {
                                            com.yunpan.appmanage.util.a0.y("警告：请不要移动到同一个目录下");
                                            break;
                                        }
                                        break;
                                }
                            }
                            ffVar.dismiss();
                            break;
                        } else {
                            Toaster.show((CharSequence) "不能选当前位置");
                            break;
                        }
                        break;
                    default:
                        ff ffVar2 = this.f6923b;
                        x9.a6 a6Var3 = ffVar2.f7063i;
                        if (a6Var3.b() != 1 || ffVar2.f7070s.f18290a != 3 || !((WpPathBean) a6Var3.t(0)).path.isEmpty()) {
                            new z6(ffVar2.f6724a, ffVar2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new ef(ffVar2, 4)).show();
                            break;
                        } else {
                            Toaster.show((CharSequence) "当前位置无法新建目录");
                            break;
                        }
                        break;
                }
            }
        });
        final int i12 = 2;
        this.f7066m.setOnClickListener(new View.OnClickListener(this) { // from class: ha.df

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ff f6923b;

            {
                this.f6923b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                mc.g gVarA;
                mc.g gVarA2;
                mc.g gVarA3;
                switch (i12) {
                    case 0:
                        this.f6923b.a();
                        break;
                    case 1:
                        ff ffVar = this.f6923b;
                        x9.a6 a6Var2 = ffVar.f7063i;
                        if (a6Var2.b() != 1 || ffVar.f7070s.f18290a != 3 || !((WpPathBean) a6Var2.t(0)).path.isEmpty()) {
                            if (a6Var2.b() > 0) {
                                ua.t8 t8Var = ffVar.f7071t;
                                WpPathBean wpPathBean = (WpPathBean) a6Var2.t(a6Var2.b() - 1);
                                switch (t8Var.f15971a) {
                                    case 1:
                                        ua.i9 i9Var = t8Var.f15972b;
                                        x9.n5 n5Var = (x9.n5) i9Var.f15746j.t(i9Var.T);
                                        WpPathBean wpPathBean2 = (WpPathBean) i9Var.f15751q.t(t8Var.f15973c);
                                        if (!wpPathBean2.path.equals(wpPathBean.path)) {
                                            int i112 = n5Var.f18290a;
                                            if (i112 != 1 && i112 != 2 && i112 != 3 && i112 != 7 && i112 != 21) {
                                                if (i112 == 4 || i112 == 5 || i112 == 6) {
                                                    if (!wpPathBean.path.startsWith(wpPathBean2.path)) {
                                                        ArrayList arrayList = new ArrayList();
                                                        arrayList.add(wpPathBean2);
                                                        FtpCopyProgressBean ftpCopyProgressBean = new FtpCopyProgressBean();
                                                        ftpCopyProgressBean.userInfo = n5Var;
                                                        ftpCopyProgressBean.paths = arrayList;
                                                        ftpCopyProgressBean.rootDirPath_form = new File(((WpPathBean) arrayList.get(0)).path).getParent();
                                                        ftpCopyProgressBean.rootDirPath_to = wpPathBean.path;
                                                        int i122 = n5Var.f18290a;
                                                        if (i122 == 4) {
                                                            gVarA2 = new mc.c(0, new qa.d(ftpCopyProgressBean, 1)).d(rc.f.f13757b).a(fc.b.a());
                                                        } else if (i122 == 5) {
                                                            gVarA2 = new mc.c(0, new qa.d(ftpCopyProgressBean, 3)).d(rc.f.f13757b).a(fc.b.a());
                                                        } else if (i122 == 6) {
                                                            gVarA2 = new mc.c(0, new qa.d(ftpCopyProgressBean, 5)).d(rc.f.f13757b).a(fc.b.a());
                                                        }
                                                        v9 v9Var = new v9(i9Var.f4530f, i9Var.f4529e);
                                                        v9Var.c("正在复制", ftpCopyProgressBean);
                                                        gVarA2.b(new ze(i9Var, v9Var, ftpCopyProgressBean, 4));
                                                        break;
                                                    } else {
                                                        com.yunpan.appmanage.util.a0.y("警告：请不要复制到同一个目录下");
                                                        break;
                                                    }
                                                }
                                            } else if (i112 != 1) {
                                                if (i112 == 2) {
                                                    ArrayList arrayList2 = new ArrayList();
                                                    arrayList2.add(wpPathBean2);
                                                    gVarA = new mc.c(0, new ba.a(n5Var, arrayList2, wpPathBean, 3)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i112 == 21) {
                                                    ArrayList arrayList3 = new ArrayList();
                                                    arrayList3.add(wpPathBean2);
                                                    gVarA = new mc.c(0, new ba.a(n5Var, arrayList3, wpPathBean, 1)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i112 == 3) {
                                                    if (wpPathBean.path.startsWith(wpPathBean2.path)) {
                                                        com.yunpan.appmanage.util.a0.y("警告：请不要复制到同一个目录下");
                                                        break;
                                                    } else {
                                                        gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean2, wpPathBean, 8)).d(rc.f.f13757b).a(fc.b.a());
                                                    }
                                                } else if (i112 == 7) {
                                                    gVarA = new mc.c(0, new ba.d(n5Var, wpPathBean, wpPathBean2, 10)).d(rc.f.f13757b).a(fc.b.a());
                                                }
                                                i9Var.f15744h.c("复制中");
                                                gVarA.b(new ua.a9(i9Var, 0));
                                                break;
                                            } else {
                                                com.yunpan.appmanage.util.a0.y("蓝奏云没有复制功能");
                                                break;
                                            }
                                        } else {
                                            com.yunpan.appmanage.util.a0.y("警告：请不要在移动到同一个目录下");
                                            break;
                                        }
                                        break;
                                    default:
                                        ua.i9 i9Var2 = t8Var.f15972b;
                                        x9.n5 n5Var2 = (x9.n5) i9Var2.f15746j.t(i9Var2.T);
                                        x9.y5 y5Var = i9Var2.f15751q;
                                        int i13 = t8Var.f15973c;
                                        WpPathBean wpPathBean3 = (WpPathBean) y5Var.t(i13);
                                        if (!wpPathBean3.path.equals(wpPathBean.path)) {
                                            if (n5Var2.f18290a > 2 && wpPathBean.path.startsWith(wpPathBean3.path)) {
                                                com.yunpan.appmanage.util.a0.y("警告：请不要移动到同一个目录下");
                                                break;
                                            } else {
                                                int i14 = n5Var2.f18290a;
                                                if (i14 == 1) {
                                                    gVarA3 = new mc.c(0, new ba.d(n5Var2, wpPathBean3, wpPathBean, 1)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 2) {
                                                    ArrayList arrayList4 = new ArrayList();
                                                    arrayList4.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList4, wpPathBean, 2)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 20) {
                                                    ArrayList arrayList5 = new ArrayList();
                                                    arrayList5.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList5, wpPathBean, 4)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 21) {
                                                    ArrayList arrayList6 = new ArrayList();
                                                    arrayList6.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(arrayList6, wpPathBean, n5Var2)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 3) {
                                                    gVarA3 = new mc.c(0, new ba.d(n5Var2, wpPathBean3, wpPathBean, 7)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 4) {
                                                    ArrayList arrayList7 = new ArrayList();
                                                    arrayList7.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList7, wpPathBean, 5)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 5) {
                                                    ArrayList arrayList8 = new ArrayList();
                                                    arrayList8.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.a(n5Var2, arrayList8, wpPathBean, 6)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 6) {
                                                    ArrayList arrayList9 = new ArrayList();
                                                    arrayList9.add(wpPathBean3);
                                                    gVarA3 = new mc.c(0, new ba.f(n5Var2, arrayList9, wpPathBean, 15)).d(rc.f.f13757b).a(fc.b.a());
                                                } else if (i14 == 7) {
                                                    gVarA3 = new mc.c(0, new ba.d(n5Var2, wpPathBean, wpPathBean3, 12)).d(rc.f.f13757b).a(fc.b.a());
                                                }
                                                gVarA3.b(new ua.z8(i9Var2, i13, 1));
                                                break;
                                            }
                                        } else {
                                            com.yunpan.appmanage.util.a0.y("警告：请不要移动到同一个目录下");
                                            break;
                                        }
                                        break;
                                }
                            }
                            ffVar.dismiss();
                            break;
                        } else {
                            Toaster.show((CharSequence) "不能选当前位置");
                            break;
                        }
                        break;
                    default:
                        ff ffVar2 = this.f6923b;
                        x9.a6 a6Var3 = ffVar2.f7063i;
                        if (a6Var3.b() != 1 || ffVar2.f7070s.f18290a != 3 || !((WpPathBean) a6Var3.t(0)).path.isEmpty()) {
                            new z6(ffVar2.f6724a, ffVar2.f6725b, "新建文件夹", "", "请输入文件夹名称", "确定", "取消", new ef(ffVar2, 4)).show();
                            break;
                        } else {
                            Toaster.show((CharSequence) "当前位置无法新建目录");
                            break;
                        }
                        break;
                }
            }
        });
        this.f7067n = (LinearLayout) findViewById(R.id.v_read_ts_lay);
        this.f7068p = (ImageView) findViewById(R.id.v_read_ts_ico);
        this.f7069q = (TextView) findViewById(R.id.v_read_ts_text);
        this.f7067n.setVisibility(8);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.r = constraintLayout;
        constraintLayout.setVisibility(8);
        a6Var.f2881e = new ef(this, 0);
        q5Var.f2881e = new ef(this, 1);
        this.f7062h.setOnInBorderKeyEventListener(new ef(this, 2));
        this.f7064j.setOnInBorderKeyEventListener(new ef(this, 3));
    }
}

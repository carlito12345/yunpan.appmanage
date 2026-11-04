package ua;

import android.os.Looper;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.recycleview.MyRecycleView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.bean.WpPathBean;
import com.yunpan.appmanage.view.HiveProgressView;
import com.yunpan.appmanage.view.MyProgressViewTest;
import ha.bf;
import ha.oc;
import ha.se;
import ha.u9;
import ha.v9;
import ha.ve;
import ha.ye;
import java.io.File;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public class i9 extends da.h {
    public ConstraintLayout A;
    public TextView B;
    public ConstraintLayout D;
    public TvRecyclerView E;
    public x9.c6 F;
    public LinearLayout G;
    public TextView H;
    public ConstraintLayout I;
    public TextView K;
    public LinearLayout L;
    public ImageView M;
    public TextView N;
    public LinearLayout O;
    public ImageView P;
    public TextView R;
    public HiveProgressView S;
    public View X;

    /* renamed from: g, reason: collision with root package name */
    public ve f15743g;

    /* renamed from: h, reason: collision with root package name */
    public u9 f15744h;

    /* renamed from: i, reason: collision with root package name */
    public TvRecyclerView f15745i;

    /* renamed from: j, reason: collision with root package name */
    public x9.o5 f15746j;

    /* renamed from: k, reason: collision with root package name */
    public MyRecycleView f15747k;
    public x9.s5 l;

    /* renamed from: m, reason: collision with root package name */
    public TvRecyclerView f15748m;

    /* renamed from: n, reason: collision with root package name */
    public x9.a6 f15749n;

    /* renamed from: p, reason: collision with root package name */
    public TvRecyclerView f15750p;

    /* renamed from: q, reason: collision with root package name */
    public x9.y5 f15751q;
    public TvRecyclerView r;

    /* renamed from: s, reason: collision with root package name */
    public x9.h0 f15752s;

    /* renamed from: t, reason: collision with root package name */
    public MyRecycleView f15753t;

    /* renamed from: v, reason: collision with root package name */
    public x9.s5 f15754v;

    /* renamed from: w, reason: collision with root package name */
    public TvRecyclerView f15755w;

    /* renamed from: x, reason: collision with root package name */
    public x9.g0 f15756x;

    /* renamed from: y, reason: collision with root package name */
    public TvRecyclerView f15757y;
    public x9.f0 z;
    public final AtomicInteger C = new AtomicInteger(0);
    public int T = -1;
    public int V = -1;
    public final ArrayList Y = new ArrayList();
    public final com.yunpan.appmanage.carsdk.u Z = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 24);

    public final void A() {
        mc.g gVarA;
        int i10 = 7;
        int i11 = 5;
        int i12 = 20;
        int i13 = 3;
        int i14 = 1;
        int i15 = 0;
        x9.n5 n5Var = (x9.n5) this.f15746j.t(this.T);
        if (n5Var.f18296g.isEmpty()) {
            n5Var.f18296g = p000if.a.p0(n5Var.b());
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        kVar.Y = g.b.l(kVar.z, "wp_image_cache/", new StringBuilder());
        try {
            new File(kVar.Y).mkdirs();
        } catch (Exception unused) {
        }
        try {
            new File(com.yunpan.appmanage.util.j.f4033a.Y + n5Var.f18296g + "/").mkdirs();
        } catch (Exception unused2) {
        }
        this.f15749n.E(new ArrayList());
        this.f15751q.E(new ArrayList());
        this.I.setVisibility(0);
        this.K.setText("验证中");
        int i16 = n5Var.f18290a;
        if (i16 == 1) {
            gVarA = new mc.c(i15, new ba.f(i14, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i16 == 2) {
            gVarA = new mc.c(i15, new ba.f(i13, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i16 == 20) {
            gVarA = new mc.c(i15, new ba.f(i11, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i16 == 21) {
            gVarA = new mc.c(i15, new ba.f(i15, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i16 == 3) {
            gVarA = new mc.c(i15, new ba.f(16, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i16 == 4) {
            gVarA = new mc.c(i15, new ba.f(i10, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i16 == 5) {
            gVarA = new mc.c(i15, new ba.f(10, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i16 == 6) {
            gVarA = new mc.c(i15, new ba.f(13, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        } else if (i16 != 7) {
            return;
        } else {
            gVarA = new mc.c(i15, new ba.f(17, n5Var)).d(rc.f.f13757b).a(fc.b.a());
        }
        gVarA.b(new ha.h3(this, i12, n5Var));
    }

    @Override // da.h
    public final int j() {
        return R.layout.fragment_file_wl;
    }

    @Override // da.h
    public final void k() {
        kh.e.b().j(this);
        this.f15743g = new ve(this.f4530f, this.f4529e);
        this.f15744h = new u9(this.f4530f, this.f4529e);
        ConstraintLayout constraintLayout = (ConstraintLayout) i(R.id.v_loadDir_lay);
        this.I = constraintLayout;
        constraintLayout.setVisibility(8);
        this.K = (TextView) i(R.id.v_loadDir_text);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) i(R.id.v_gn1);
        this.f15745i = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f4529e, 0, false));
        x9.o5 o5Var = new x9.o5();
        this.f15746j = o5Var;
        this.f15745i.setAdapter(o5Var);
        MyRecycleView myRecycleView = (MyRecycleView) i(R.id.v_dir_gn1);
        this.f15747k = myRecycleView;
        myRecycleView.setLayoutManager(new LinearLayoutManager(0, false));
        x9.s5 s5Var = new x9.s5();
        this.l = s5Var;
        s5Var.q("切换");
        this.l.q("新建");
        this.l.q("刷新");
        this.f15747k.setAdapter(this.l);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) i(R.id.v_path1);
        this.f15748m = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager(this.f4529e, 0, false));
        x9.a6 a6Var = new x9.a6();
        this.f15749n = a6Var;
        this.f15748m.setAdapter(a6Var);
        TvRecyclerView tvRecyclerView3 = (TvRecyclerView) i(R.id.v_file1);
        this.f15750p = tvRecyclerView3;
        tvRecyclerView3.setFocusableInTouchMode(true);
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        if (wVar.I0 == 0) {
            this.f15750p.setLayoutManager(new V7LinearLayoutManager(this.f4529e, 1, false));
        } else {
            this.f15750p.setLayoutManager(new V7GridLayoutManager(this.f4529e, 2));
        }
        x9.y5 y5Var = new x9.y5(requireContext(), this.Z);
        this.f15751q = y5Var;
        this.f15750p.setAdapter(y5Var);
        this.G = (LinearLayout) i(R.id.v_loadMore_lay);
        this.H = (TextView) i(R.id.v_loadMore_text);
        this.G.setVisibility(8);
        this.f15750p.setLoadMoreBeforehandCount(3);
        this.f15750p.setOnLoadMoreListener(new r8(this, 13));
        TvRecyclerView tvRecyclerView4 = (TvRecyclerView) i(R.id.v_gn2);
        this.r = tvRecyclerView4;
        tvRecyclerView4.setLayoutManager(new V7LinearLayoutManager(this.f4529e, 0, false));
        x9.h0 h0Var = new x9.h0();
        this.f15752s = h0Var;
        this.r.setAdapter(h0Var);
        MyRecycleView myRecycleView2 = (MyRecycleView) i(R.id.v_dir_gn2);
        this.f15753t = myRecycleView2;
        myRecycleView2.setLayoutManager(new LinearLayoutManager(0, false));
        x9.s5 s5Var2 = new x9.s5();
        this.f15754v = s5Var2;
        s5Var2.q("新建");
        this.f15754v.q("切换");
        this.f15753t.setAdapter(this.f15754v);
        TvRecyclerView tvRecyclerView5 = (TvRecyclerView) i(R.id.v_path2);
        this.f15755w = tvRecyclerView5;
        tvRecyclerView5.setLayoutManager(new V7LinearLayoutManager(this.f4529e, 0, false));
        x9.g0 g0Var = new x9.g0();
        this.f15756x = g0Var;
        this.f15755w.setAdapter(g0Var);
        TvRecyclerView tvRecyclerView6 = (TvRecyclerView) i(R.id.v_file2);
        this.f15757y = tvRecyclerView6;
        tvRecyclerView6.setFocusableInTouchMode(true);
        if (wVar.J0 == 0) {
            this.f15757y.setLayoutManager(new V7LinearLayoutManager(this.f4529e, 1, false));
        } else {
            this.f15757y.setLayoutManager(new V7GridLayoutManager(this.f4529e, 2));
        }
        x9.f0 f0Var = new x9.f0(requireContext());
        this.z = f0Var;
        this.f15757y.setAdapter(f0Var);
        this.L = (LinearLayout) i(R.id.v_read_ts_lay1);
        this.M = (ImageView) i(R.id.v_read_ts_ico1);
        this.N = (TextView) i(R.id.v_read_ts_text1);
        this.L.setVisibility(8);
        this.O = (LinearLayout) i(R.id.v_read_ts_lay2);
        this.P = (ImageView) i(R.id.v_read_ts_ico2);
        this.R = (TextView) i(R.id.v_read_ts_text2);
        this.O.setVisibility(8);
        HiveProgressView hiveProgressView = (HiveProgressView) i(R.id.v_readProgress2);
        this.S = hiveProgressView;
        hiveProgressView.setVisibility(8);
        ConstraintLayout constraintLayout2 = (ConstraintLayout) i(R.id.v_task_lay);
        this.D = constraintLayout2;
        final int i10 = 0;
        constraintLayout2.setOnClickListener(new View.OnClickListener(this) { // from class: ua.v8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i9 f16004b;

            {
                this.f16004b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i10) {
                    case 0:
                        this.f16004b.D.setVisibility(8);
                        break;
                    default:
                        i9 i9Var = this.f16004b;
                        if (i9Var.D.getVisibility() != 8) {
                            i9Var.D.setVisibility(8);
                            break;
                        } else if (i9Var.F.b() != 0) {
                            i9Var.D.setVisibility(0);
                            break;
                        } else {
                            Toaster.show((CharSequence) "没有任务");
                            break;
                        }
                }
            }
        });
        TvRecyclerView tvRecyclerView7 = (TvRecyclerView) i(R.id.v_task);
        this.E = tvRecyclerView7;
        tvRecyclerView7.setLayoutManager(new V7LinearLayoutManager(this.f4529e, 1, false));
        x9.c6 c6Var = new x9.c6();
        this.F = c6Var;
        this.E.setAdapter(c6Var);
        this.F.f2881e = new r8(this, 8);
        this.A = (ConstraintLayout) i(R.id.v_btn_task);
        this.B = (TextView) i(R.id.v_btn_task_count);
        final int i11 = 1;
        this.A.setOnClickListener(new View.OnClickListener(this) { // from class: ua.v8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i9 f16004b;

            {
                this.f16004b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i11) {
                    case 0:
                        this.f16004b.D.setVisibility(8);
                        break;
                    default:
                        i9 i9Var = this.f16004b;
                        if (i9Var.D.getVisibility() != 8) {
                            i9Var.D.setVisibility(8);
                            break;
                        } else if (i9Var.F.b() != 0) {
                            i9Var.D.setVisibility(0);
                            break;
                        } else {
                            Toaster.show((CharSequence) "没有任务");
                            break;
                        }
                }
            }
        });
        x9.o5 o5Var2 = this.f15746j;
        o5Var2.f2881e = new r8(this, 0);
        o5Var2.f2882f = new r8(this, 7);
        this.l.f2881e = new r8(this, 14);
        this.f15749n.f2881e = new r8(this, 17);
        x9.y5 y5Var2 = this.f15751q;
        y5Var2.f2881e = new r8(this, 19);
        y5Var2.f2882f = new r8(this, 20);
        this.f15752s.f2881e = new r8(this, 2);
        this.f15754v.f2881e = new r8(this, 3);
        this.f15756x.f2881e = new r8(this, 4);
        x9.f0 f0Var2 = this.z;
        f0Var2.f2881e = new r8(this, 5);
        f0Var2.f2882f = new r8(this, 6);
        this.f15745i.setOnInBorderKeyEventListener(new r8(this, 21));
        this.f15745i.setOnItemListener(new d9(this));
        this.f15748m.setOnInBorderKeyEventListener(new r8(this, 22));
        final int i12 = 0;
        this.l.f18334i = new View.OnKeyListener(this) { // from class: ua.s8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i9 f15955b;

            {
                this.f15955b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i13, KeyEvent keyEvent) {
                switch (i12) {
                    case 0:
                        i9 i9Var = this.f15955b;
                        i9Var.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i13 != 19) {
                                if (i13 != 20) {
                                    if (i13 != 21) {
                                        if (i13 == 22) {
                                            if (i9Var.l.f18333h == r7.b() - 1 && i9Var.f15749n.b() > 0) {
                                                i9Var.f15748m.requestFocus();
                                                break;
                                            }
                                        }
                                    } else if (i9Var.l.f18333h == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (i9Var.f15751q.b() > 0) {
                                    i9Var.f15750p.requestFocus();
                                    break;
                                }
                            } else {
                                i9Var.f15745i.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 1:
                        i9 i9Var2 = this.f15955b;
                        i9Var2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i13 != 19) {
                                if (i13 != 20) {
                                    if (i13 != 21) {
                                        if (i13 == 22) {
                                            s1.g.W(333, view);
                                            break;
                                        }
                                    } else {
                                        i9Var2.r.requestFocus();
                                        break;
                                    }
                                } else if (i9Var2.D.getVisibility() != 0) {
                                    i9Var2.f15753t.requestFocus();
                                    break;
                                } else {
                                    i9Var2.E.requestFocus();
                                    break;
                                }
                            } else {
                                kh.e.b().f("up");
                                break;
                            }
                        } else if (i9Var2.F.b() > 0 && i9Var2.D.getVisibility() == 0) {
                            i9Var2.E.requestFocus();
                            break;
                        }
                        break;
                    default:
                        i9 i9Var3 = this.f15955b;
                        i9Var3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i13 != 19) {
                                if (i13 != 20) {
                                    if (i13 != 21) {
                                        if (i13 == 22) {
                                            if (i9Var3.f15754v.f18333h == r8.b() - 1) {
                                                s1.g.W(333, view);
                                                break;
                                            }
                                        }
                                    } else {
                                        x9.s5 s5Var3 = i9Var3.f15754v;
                                        if (s5Var3.f18333h == 0 && s5Var3.b() > 0) {
                                            i9Var3.f15755w.requestFocus();
                                            break;
                                        }
                                    }
                                } else if (i9Var3.z.b() > 0) {
                                    i9Var3.f15757y.requestFocus();
                                    break;
                                }
                            } else {
                                i9Var3.A.requestFocus();
                                break;
                            }
                        }
                        break;
                }
                return false;
            }
        };
        this.f15750p.setOnInBorderKeyEventListener(new r8(this, 1));
        this.f15750p.setOnItemListener(new e9(this));
        final int i13 = 1;
        this.A.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.s8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i9 f15955b;

            {
                this.f15955b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i132, KeyEvent keyEvent) {
                switch (i13) {
                    case 0:
                        i9 i9Var = this.f15955b;
                        i9Var.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i132 != 19) {
                                if (i132 != 20) {
                                    if (i132 != 21) {
                                        if (i132 == 22) {
                                            if (i9Var.l.f18333h == r7.b() - 1 && i9Var.f15749n.b() > 0) {
                                                i9Var.f15748m.requestFocus();
                                                break;
                                            }
                                        }
                                    } else if (i9Var.l.f18333h == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (i9Var.f15751q.b() > 0) {
                                    i9Var.f15750p.requestFocus();
                                    break;
                                }
                            } else {
                                i9Var.f15745i.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 1:
                        i9 i9Var2 = this.f15955b;
                        i9Var2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i132 != 19) {
                                if (i132 != 20) {
                                    if (i132 != 21) {
                                        if (i132 == 22) {
                                            s1.g.W(333, view);
                                            break;
                                        }
                                    } else {
                                        i9Var2.r.requestFocus();
                                        break;
                                    }
                                } else if (i9Var2.D.getVisibility() != 0) {
                                    i9Var2.f15753t.requestFocus();
                                    break;
                                } else {
                                    i9Var2.E.requestFocus();
                                    break;
                                }
                            } else {
                                kh.e.b().f("up");
                                break;
                            }
                        } else if (i9Var2.F.b() > 0 && i9Var2.D.getVisibility() == 0) {
                            i9Var2.E.requestFocus();
                            break;
                        }
                        break;
                    default:
                        i9 i9Var3 = this.f15955b;
                        i9Var3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i132 != 19) {
                                if (i132 != 20) {
                                    if (i132 != 21) {
                                        if (i132 == 22) {
                                            if (i9Var3.f15754v.f18333h == r8.b() - 1) {
                                                s1.g.W(333, view);
                                                break;
                                            }
                                        }
                                    } else {
                                        x9.s5 s5Var3 = i9Var3.f15754v;
                                        if (s5Var3.f18333h == 0 && s5Var3.b() > 0) {
                                            i9Var3.f15755w.requestFocus();
                                            break;
                                        }
                                    }
                                } else if (i9Var3.z.b() > 0) {
                                    i9Var3.f15757y.requestFocus();
                                    break;
                                }
                            } else {
                                i9Var3.A.requestFocus();
                                break;
                            }
                        }
                        break;
                }
                return false;
            }
        });
        this.E.setOnInBorderKeyEventListener(new r8(this, 9));
        this.r.setOnItemListener(new f9(this));
        this.r.setOnInBorderKeyEventListener(new r8(this, 10));
        final int i14 = 2;
        this.f15754v.f18334i = new View.OnKeyListener(this) { // from class: ua.s8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i9 f15955b;

            {
                this.f15955b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i132, KeyEvent keyEvent) {
                switch (i14) {
                    case 0:
                        i9 i9Var = this.f15955b;
                        i9Var.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i132 != 19) {
                                if (i132 != 20) {
                                    if (i132 != 21) {
                                        if (i132 == 22) {
                                            if (i9Var.l.f18333h == r7.b() - 1 && i9Var.f15749n.b() > 0) {
                                                i9Var.f15748m.requestFocus();
                                                break;
                                            }
                                        }
                                    } else if (i9Var.l.f18333h == 0) {
                                        s1.g.W(333, view);
                                        break;
                                    }
                                } else if (i9Var.f15751q.b() > 0) {
                                    i9Var.f15750p.requestFocus();
                                    break;
                                }
                            } else {
                                i9Var.f15745i.requestFocus();
                                break;
                            }
                        }
                        break;
                    case 1:
                        i9 i9Var2 = this.f15955b;
                        i9Var2.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i132 != 19) {
                                if (i132 != 20) {
                                    if (i132 != 21) {
                                        if (i132 == 22) {
                                            s1.g.W(333, view);
                                            break;
                                        }
                                    } else {
                                        i9Var2.r.requestFocus();
                                        break;
                                    }
                                } else if (i9Var2.D.getVisibility() != 0) {
                                    i9Var2.f15753t.requestFocus();
                                    break;
                                } else {
                                    i9Var2.E.requestFocus();
                                    break;
                                }
                            } else {
                                kh.e.b().f("up");
                                break;
                            }
                        } else if (i9Var2.F.b() > 0 && i9Var2.D.getVisibility() == 0) {
                            i9Var2.E.requestFocus();
                            break;
                        }
                        break;
                    default:
                        i9 i9Var3 = this.f15955b;
                        i9Var3.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i132 != 19) {
                                if (i132 != 20) {
                                    if (i132 != 21) {
                                        if (i132 == 22) {
                                            if (i9Var3.f15754v.f18333h == r8.b() - 1) {
                                                s1.g.W(333, view);
                                                break;
                                            }
                                        }
                                    } else {
                                        x9.s5 s5Var3 = i9Var3.f15754v;
                                        if (s5Var3.f18333h == 0 && s5Var3.b() > 0) {
                                            i9Var3.f15755w.requestFocus();
                                            break;
                                        }
                                    }
                                } else if (i9Var3.z.b() > 0) {
                                    i9Var3.f15757y.requestFocus();
                                    break;
                                }
                            } else {
                                i9Var3.A.requestFocus();
                                break;
                            }
                        }
                        break;
                }
                return false;
            }
        };
        this.f15755w.setOnInBorderKeyEventListener(new r8(this, 11));
        this.f15757y.setOnInBorderKeyEventListener(new r8(this, 12));
        this.f15757y.setOnItemListener(new g9(this));
        this.f15746j.E(com.yunpan.appmanage.util.e0.f4012a.c());
        this.f15746j.q(new x9.n5());
        r();
    }

    @Override // da.h
    public final void m() {
        if (this.f15745i == null) {
            return;
        }
        r();
    }

    public final void n(x9.w3 w3Var, boolean z) {
        this.f15757y.stopScroll();
        this.z.E(new ArrayList());
        this.S.setVisibility(0);
        v(null, 0, false);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        new mc.c(0, new y7(z, w3Var, arrayList, arrayList2, 1)).d(rc.f.f13757b).a(fc.b.a()).b(new q1(this, w3Var, arrayList, arrayList2, 3));
    }

    public final void o(int i10, boolean z) {
        ha.h4 h4Var = new ha.h4(this.f4530f, this.f4529e);
        String strConcat = (z ? "剪切" : "复制").concat("到");
        x9.w3 w3Var = (x9.w3) this.f15756x.t(0);
        u6 u6Var = new u6(this, i10, z);
        h4Var.show();
        h4Var.f7153s = u6Var;
        h4Var.f7144g.setText(strConcat);
        h4Var.f7146i.q(w3Var);
        h4Var.a();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        this.Z.removeCallbacksAndMessages(null);
        kh.e.b().l(this);
        super.onDestroy();
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(String str) {
        if (str.equals("放开菜单键") && isVisible()) {
            if (this.f15745i.hasFocus()) {
                int i10 = this.V;
                if (i10 < 0 || i10 == this.f15746j.b() - 1) {
                    return;
                }
                x(this.V, this.X);
                return;
            }
            if (this.f15750p.hasFocus()) {
                y(this.V);
            } else if (this.f15757y.hasFocus()) {
                w(this.V);
            }
        }
    }

    public final void p(int i10, String str) {
        File file = new File(((x9.w3) this.z.t(i10)).f18365b);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getParentFile().getPath());
        String str2 = File.separator;
        sb2.append(str2);
        String strL = g.b.l(file.getName().lastIndexOf(".") == -1 ? file.getName() : file.getName().substring(0, file.getName().lastIndexOf(".")), str2, sb2);
        if (com.yunpan.appmanage.util.a0.g(strL)) {
            Toaster.show((CharSequence) "文件夹已存在,请先删除相同命名的文件夹");
        } else {
            (com.yunpan.appmanage.util.v.f4106a.f4140r0 ? new mc.c(0, new ca.a(file, strL, str, new gf.g(13))).d(rc.f.f13757b).a(fc.b.a()) : new mc.c(0, new ca.a(file, strL, str)).d(rc.f.f13757b).a(fc.b.a())).b(new ha.l4(this, i10, strL, 5));
        }
    }

    public final void q(int i10, boolean z) {
        mc.g gVarA;
        int i11 = 7;
        int i12 = 4;
        int i13 = 6;
        int i14 = 0;
        String strReplace = "";
        if (z) {
            fa.h0 h0Var = fa.g0.f5682a;
            if (h0Var.d().isEmpty()) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                if (!kVar.f4069s.isEmpty() && kVar.L) {
                    strReplace = kVar.f4069s;
                    if (!com.yunpan.appmanage.util.a0.d(strReplace)) {
                        strReplace = strReplace.replace("/data", "/\u200bdata");
                    }
                }
            } else {
                strReplace = h0Var.d() + "/." + this.f4529e.getPackageName() + "/cache/";
                new File(strReplace).mkdirs();
            }
            if (strReplace.isEmpty() && this.f15752s.b() == 0) {
                strReplace = this.f4529e.getCacheDir().getPath();
            }
        }
        if (strReplace.isEmpty()) {
            if (this.f15752s.b() == 0) {
                Toaster.show((CharSequence) "你的设备没有(SD卡或U盘)，无法下载保存");
                return;
            } else {
                if (this.f15756x.b() == 0) {
                    Toaster.show((CharSequence) "请在右侧打开本地存储(SD卡或U盘)");
                    return;
                }
                strReplace = ((x9.w3) g.b.d(this.f15756x, 1)).f18365b;
                if (!com.yunpan.appmanage.util.a0.d(strReplace)) {
                    com.yunpan.appmanage.util.a0.y("本地目录无权限写入文件");
                    return;
                }
            }
        }
        x9.n5 n5Var = (x9.n5) this.f15746j.t(this.T);
        WpPathBean wpPathBean = (WpPathBean) this.f15751q.t(i10);
        int i15 = n5Var.f18290a;
        if (i15 == 1 || i15 == 2 || i15 == 20 || i15 == 21) {
            ha.w wVar = new ha.w(this.f4530f, this.f4529e);
            ha.h2 h2Var = new ha.h2(this, z, 9);
            wVar.show();
            wVar.f7972k = n5Var;
            wVar.l = wpPathBean;
            wVar.f7976q = strReplace;
            wVar.f7975p = h2Var;
            wpPathBean.isStopDown = false;
            wVar.f7969h.setText(wpPathBean.name);
            if (i15 == 2 && wpPathBean.is_dir) {
                wVar.f7969h.setText(wpPathBean.name + ".rar");
            }
            wVar.f7970i.setText(wpPathBean.time_txt + "  " + wpPathBean.size_txt);
            ((MyProgressViewTest) wVar.f7973m).setMaxCount(100.0f);
            ((MyProgressViewTest) wVar.f7973m).setCurrentCount(0.0f);
            wVar.a();
            return;
        }
        if (i15 == 3 || i15 == 4 || i15 == 5 || i15 == 6 || i15 == 7) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(wpPathBean);
            FtpCopyProgressBean ftpCopyProgressBean = new FtpCopyProgressBean();
            ftpCopyProgressBean.userInfo = n5Var;
            ftpCopyProgressBean.paths = arrayList;
            if (i15 == 3) {
                ftpCopyProgressBean.rootDirPath_form = new File(((WpPathBean) arrayList.get(0)).path).getParent() + "/";
            } else if (i15 == 7) {
                String str = ((WpPathBean) arrayList.get(0)).path;
                ftpCopyProgressBean.rootDirPath_form = str;
                if (!str.equals(n5Var.f18292c) && ftpCopyProgressBean.rootDirPath_form.endsWith("/")) {
                    ftpCopyProgressBean.rootDirPath_form = android.support.v4.media.session.a.l(1, 0, ftpCopyProgressBean.rootDirPath_form);
                }
                String str2 = ftpCopyProgressBean.rootDirPath_form;
                ftpCopyProgressBean.rootDirPath_form = str2.substring(0, str2.lastIndexOf("/"));
            } else {
                ftpCopyProgressBean.rootDirPath_form = new File(((WpPathBean) arrayList.get(0)).path).getParent();
            }
            String strReplace2 = ftpCopyProgressBean.rootDirPath_form.replace("//", "/");
            ftpCopyProgressBean.rootDirPath_form = strReplace2;
            if (i15 == 7) {
                ftpCopyProgressBean.rootDirPath_form = strReplace2.replace(":/", "://");
            }
            ftpCopyProgressBean.rootDirPath_to = strReplace;
            v9 v9Var = new v9(this.f4530f, this.f4529e);
            v9Var.c("正在下载", ftpCopyProgressBean);
            if (i15 == 3) {
                gVarA = new mc.c(i14, new qa.d(ftpCopyProgressBean, i13)).d(rc.f.f13757b).a(fc.b.a());
            } else if (i15 == 4) {
                gVarA = new mc.c(i14, new qa.d(ftpCopyProgressBean, i14)).d(rc.f.f13757b).a(fc.b.a());
            } else if (i15 == 5) {
                gVarA = new mc.c(i14, new qa.d(ftpCopyProgressBean, 2)).d(rc.f.f13757b).a(fc.b.a());
            } else if (i15 == 6) {
                gVarA = new mc.c(i14, new qa.d(ftpCopyProgressBean, i12)).d(rc.f.f13757b).a(fc.b.a());
            } else if (i15 != 7) {
                return;
            } else {
                gVarA = new mc.c(i14, new qa.d(ftpCopyProgressBean, i11)).d(rc.f.f13757b).a(fc.b.a());
            }
            gVarA.b(new c9(this, v9Var, ftpCopyProgressBean, z, wpPathBean));
        }
    }

    public final void r() {
        x9.w3 w3Var;
        this.f15752s.E(new ArrayList());
        fa.h0 h0Var = fa.g0.f5682a;
        if (!h0Var.d().isEmpty()) {
            this.f15752s.q(new x9.w3("内部存储", h0Var.d()));
        }
        try {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            Iterator it = com.yunpan.appmanage.util.j.f4033a.f4073v.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10++;
                this.f15752s.q(new x9.w3("U盘" + i10, (String) it.next()));
            }
        } catch (Exception unused) {
        }
        if (this.f15752s.b() <= 0) {
            v("不存在SD卡、U盘", R.drawable.tp_nodata, true);
            if (this.f15756x.b() > 0) {
                this.f15756x.E(new ArrayList());
                this.z.E(new ArrayList());
                return;
            }
            return;
        }
        if (this.f15756x.b() == 0) {
            w3Var = (x9.w3) this.f15752s.t(0);
            this.f15756x.q(w3Var);
            if (!com.yunpan.appmanage.util.a0.g(w3Var.f18365b + "/Download")) {
                try {
                    new File(w3Var.f18365b + "/Download").mkdir();
                } catch (Exception unused2) {
                }
            }
            this.f15756x.q(new x9.w3(g.b.l(w3Var.f18365b, "/Download", new StringBuilder())));
        } else {
            w3Var = (x9.w3) g.b.d(this.f15756x, 1);
        }
        n(w3Var, false);
    }

    public final void s(String str) {
        new mc.c(0, new b8.a(str, 18)).d(rc.f.f13757b).a(fc.b.a()).b(new a9(this, 1));
    }

    public final void t(x9.n5 n5Var) {
        int i10 = 0;
        while (true) {
            if (i10 >= this.f15746j.b()) {
                i10 = -1;
                break;
            } else {
                if (((x9.n5) this.f15746j.t(i10)).f18290a == n5Var.f18290a && ((x9.n5) this.f15746j.t(i10)).f18294e.equals(n5Var.f18294e) && ((x9.n5) this.f15746j.t(i10)).f18292c.equals(n5Var.f18292c)) {
                    Toaster.show((CharSequence) "已存在");
                    break;
                }
                i10++;
            }
        }
        if (i10 == -1) {
            this.f15746j.p(r0.b() - 1, n5Var);
            com.yunpan.appmanage.util.e0.f4012a.a(n5Var);
            this.T = this.f15746j.b() - 2;
        } else {
            this.f15746j.p(i10, n5Var);
            com.yunpan.appmanage.util.e0.f4012a.h(i10, n5Var);
            this.T = i10;
        }
        A();
    }

    public final void u(String str, int i10, boolean z) {
        this.L.setVisibility(z ? 0 : 8);
        if (z) {
            this.M.setImageResource(i10);
            this.N.setText(str);
        }
    }

    public final void v(String str, int i10, boolean z) {
        this.O.setVisibility(z ? 0 : 8);
        if (z) {
            this.P.setImageResource(i10);
            this.R.setText(str);
        }
    }

    public final void w(int i10) {
        x9.w3 w3Var = (x9.w3) this.z.t(i10);
        ha.c4 c4Var = new ha.c4(this.f4530f, this.f4529e);
        u8 u8Var = new u8(this, i10, w3Var);
        c4Var.show();
        c4Var.f6849k = w3Var;
        c4Var.f6848j = u8Var;
        c4Var.f6846h.E(new ArrayList());
        if (!w3Var.f18366c) {
            if (p000if.a.X(w3Var.f18364a)) {
                c4Var.f6846h.q("安装");
            } else if (za.g.g(w3Var.f18364a)) {
                c4Var.f6846h.q("解压");
            }
            c4Var.f6846h.q("打开");
            int iLastIndexOf = c4Var.f6849k.f18364a.lastIndexOf(".");
            if (iLastIndexOf > 0) {
                c4Var.l = c4Var.f6849k.f18364a.substring(iLastIndexOf).toLowerCase(Locale.getDefault());
            }
            if (!c4Var.l.isEmpty() && !com.yunpan.appmanage.util.v.f4106a.h(c4Var.l).isEmpty()) {
                c4Var.f6847i.setVisibility(0);
            }
            if (c4Var.f6846h.b() < 2) {
                c4Var.f6846h.q("取消");
            }
        }
        c4Var.f6846h.q("上传");
        c4Var.f6846h.q("改名");
        c4Var.f6846h.q("删除");
        c4Var.f6846h.q("压缩");
        c4Var.f6846h.q("移动");
        c4Var.f6846h.q("复制");
    }

    public final void x(final int i10, View view) {
        PopupMenu popupMenu = new PopupMenu(this.f4529e, view);
        popupMenu.getMenuInflater().inflate(R.menu.wp_gn1, popupMenu.getMenu());
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: ua.y8
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                i9 i9Var = this.f16066a;
                x9.o5 o5Var = i9Var.f15746j;
                int i11 = i10;
                x9.n5 n5Var = (x9.n5) o5Var.t(i11);
                if (menuItem.getItemId() == R.id.menu_wp_rename) {
                    new ha.z6(i9Var.f4530f, i9Var.f4529e, "修改名称", n5Var.f18291b, "请输入名称", "确定", "取消", new w8(i9Var, n5Var, i11)).show();
                } else if (menuItem.getItemId() == R.id.menu_wp_modify) {
                    int i12 = n5Var.f18290a;
                    if (i12 == 1 || i12 == 20) {
                        new ye(i9Var.f4530f, i9Var.f4529e, n5Var, new w8(i9Var, i11, n5Var, 1)).show();
                    } else if (i12 == 2) {
                        new bf(i9Var.f4530f, i9Var.f4529e, n5Var, new w8(i9Var, i11, n5Var, 2), 1).show();
                    } else if (i12 == 21) {
                        new bf(i9Var.f4530f, i9Var.f4529e, n5Var, new w8(i9Var, i11, n5Var, 3), 1).show();
                    } else if (i12 == 4 || i12 == 5) {
                        new ha.s5(i9Var.f4530f, i9Var.f4529e, n5Var, (ha.i6) new w8(i9Var, i11, n5Var, 4)).show();
                    } else if (i12 == 6) {
                        new ha.w(i9Var.f4530f, i9Var.f4529e, n5Var, new w8(i9Var, i11, n5Var, 5)).show();
                    } else if (i12 == 3) {
                        new ha.s5(i9Var.f4530f, i9Var.f4529e, n5Var, (oc) new w8(i9Var, i11, n5Var, 6)).show();
                    } else if (i12 == 7) {
                        new se(i9Var.f4530f, i9Var.f4529e, n5Var, new w8(i9Var, i11, n5Var, 7)).show();
                    }
                } else if (menuItem.getItemId() == R.id.menu_wp_delete) {
                    if (i11 == i9Var.T) {
                        i9Var.f15749n.E(new ArrayList());
                        i9Var.f15751q.E(new ArrayList());
                    }
                    com.yunpan.appmanage.util.d0 d0Var = com.yunpan.appmanage.util.e0.f4012a;
                    d0Var.getClass();
                    try {
                        z7.o oVarF = d0Var.f4008b.o("wpList").f();
                        oVarF.n(i11);
                        d0Var.f4008b.j("wpList", oVarF);
                        d0Var.f();
                    } catch (Exception unused) {
                    }
                    i9Var.f15746j.C(i11);
                }
                return true;
            }
        });
        popupMenu.show();
    }

    public final void y(int i10) {
        if (this.f15749n.b() == 1 && ((WpPathBean) this.f15749n.t(0)).path.isEmpty() && ((x9.n5) this.f15746j.t(this.T)).f18290a != 21) {
            return;
        }
        WpPathBean wpPathBean = (WpPathBean) this.f15751q.t(i10);
        ve veVar = this.f15743g;
        x9.n5 n5Var = (x9.n5) this.f15746j.t(this.T);
        t8 t8Var = new t8(this, i10, 0);
        veVar.show();
        veVar.f7965j = n5Var;
        veVar.f7966k = wpPathBean;
        veVar.f7964i = t8Var;
        veVar.l.setVisibility(8);
        veVar.f7967m.setVisibility(8);
        veVar.f7963h.E(new ArrayList());
        int i11 = veVar.f7965j.f18290a;
        if (i11 == 1) {
            if (veVar.f7966k.is_dir) {
                veVar.f7963h.q("删除");
                veVar.f7963h.q("改名");
                veVar.f7963h.q("分享");
                veVar.f7963h.q("描述");
                return;
            }
            veVar.f7963h.q("下载");
            veVar.f7963h.q("删除");
            veVar.f7963h.q("改名");
            veVar.f7963h.q("移动");
            veVar.f7963h.q("分享");
            veVar.f7963h.q("描述");
            if (p000if.a.X(veVar.f7966k.name)) {
                veVar.f7963h.p(0, "安装");
                veVar.f7963h.q("返回");
                return;
            }
            return;
        }
        if (i11 == 2 || i11 == 21) {
            if (veVar.f7966k.is_dir) {
                veVar.f7963h.q("删除");
                veVar.f7963h.q("改名");
                veVar.f7963h.q("移动");
                veVar.f7963h.q("复制");
                veVar.f7963h.q("分享");
                veVar.f7963h.q("下载");
                return;
            }
            veVar.f7963h.q("下载");
            veVar.f7963h.q("删除");
            veVar.f7963h.q("改名");
            veVar.f7963h.q("移动");
            veVar.f7963h.q("复制");
            if (!p000if.a.X(veVar.f7966k.name)) {
                veVar.f7963h.p(1, "分享");
                return;
            }
            veVar.f7963h.p(0, "安装");
            veVar.f7963h.q("分享");
            veVar.f7963h.q("返回");
            return;
        }
        if (i11 == 20) {
            if (veVar.f7966k.is_dir) {
                veVar.f7963h.q("删除");
                veVar.f7963h.q("改名");
                veVar.f7963h.q("移动");
                veVar.f7963h.q("分享");
                veVar.f7963h.q("描述");
                veVar.f7963h.q("返回");
                return;
            }
            veVar.f7963h.q("下载");
            veVar.f7963h.q("删除");
            veVar.f7963h.q("改名");
            veVar.f7963h.q("描述");
            veVar.f7963h.q("移动");
            veVar.f7963h.q("分享");
            if (p000if.a.X(veVar.f7966k.name)) {
                veVar.f7963h.p(0, "安装");
                veVar.f7963h.p(1, "返回");
                return;
            }
            return;
        }
        if (i11 == 3 || i11 == 4 || i11 == 5 || i11 == 6 || i11 == 7) {
            if (veVar.f7966k.is_dir) {
                veVar.f7963h.q("删除");
                veVar.f7963h.q("改名");
                veVar.f7963h.q("移动");
                veVar.f7963h.q("复制");
                veVar.f7963h.q("下载");
                veVar.f7963h.q("返回");
                return;
            }
            veVar.f7963h.q("下载");
            veVar.f7963h.q("删除");
            veVar.f7963h.q("改名");
            veVar.f7963h.q("移动");
            veVar.f7963h.q("复制");
            if (p000if.a.X(veVar.f7966k.name)) {
                veVar.f7963h.p(0, "安装");
                return;
            }
            if (!p000if.a.j0(veVar.f7966k.name) && !p000if.a.f0(veVar.f7966k.name)) {
                if (p000if.a.c0(veVar.f7966k.name)) {
                    veVar.f7963h.p(1, "看图");
                    return;
                } else {
                    veVar.f7963h.q("返回");
                    return;
                }
            }
            veVar.f7963h.p(1, "返回");
            veVar.l.setVisibility(0);
            if (veVar.f7965j.f18290a != 6) {
                veVar.f7967m.setVisibility(0);
            }
        }
    }

    public final void z(boolean z) {
        int i10 = 11;
        int i11 = 7;
        int i12 = 2;
        int i13 = 0;
        if (this.f15749n.b() == 0) {
            return;
        }
        x9.n5 n5Var = (x9.n5) this.f15746j.t(this.T);
        x9.a6 a6Var = this.f15749n;
        WpPathBean wpPathBean = (WpPathBean) a6Var.t(a6Var.b() - 1);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.j.f4033a.A = n5Var;
        PrintStream printStream = System.out;
        String str = n5Var.f18296g;
        printStream.getClass();
        if (z) {
            this.G.setVisibility(0);
            this.H.setText("正在加载更多");
        } else {
            if (this.f15751q.b() > 0) {
                this.f15751q.E(new ArrayList());
            }
            u("", 0, false);
            this.I.setVisibility(0);
            this.K.setText("读取中");
            wpPathBean.page = 1;
            wpPathBean.hasMoreData = false;
            this.f15750p.setHasMoreData(false);
        }
        int i14 = n5Var.f18290a;
        (i14 == 1 ? new mc.c(i13, new ba.b(wpPathBean, n5Var, i12)).d(rc.f.f13757b).a(fc.b.a()) : i14 == 2 ? new mc.c(i13, new ba.b(n5Var, wpPathBean, i11)).d(rc.f.f13757b).a(fc.b.a()) : i14 == 3 ? new mc.c(i13, new ba.b(n5Var, wpPathBean, 14)).d(rc.f.f13757b).a(fc.b.a()) : i14 == 4 ? new mc.c(i13, new ba.b(n5Var, wpPathBean, i10)).d(rc.f.f13757b).a(fc.b.a()) : i14 == 5 ? new mc.c(i13, new ba.b(n5Var, wpPathBean, 12)).d(rc.f.f13757b).a(fc.b.a()) : i14 == 6 ? new mc.c(i13, new ba.f(n5Var, wpPathBean, i10)).d(rc.f.f13757b).a(fc.b.a()) : i14 == 7 ? new mc.c(i13, new ba.b(wpPathBean, n5Var, 15)).d(rc.f.f13757b).a(fc.b.a()) : i14 == 20 ? new mc.c(i13, new ba.b(n5Var, wpPathBean, 9)).d(rc.f.f13757b).a(fc.b.a()) : i14 == 21 ? new mc.c(i13, new ba.b(n5Var, wpPathBean, i13)).d(rc.f.f13757b).a(fc.b.a()) : null).b(new z3(i12, this, wpPathBean, z));
    }
}

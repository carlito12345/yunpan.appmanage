package ua;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.Message;
import android.provider.DocumentsContract;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.FileCopyBean;
import com.yunpan.appmanage.view.HiveProgressView;
import ha.ke;
import ha.u9;
import ha.ud;
import j$.util.Iterator$EL;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes.dex */
public class q8 extends da.h {
    public TextView A;
    public x9.w3 B;
    public TvRecyclerView D;
    public x9.l5 E;
    public ExecutorService G;
    public TextView H;
    public LinearLayout I;
    public TextView K;
    public TextView N;
    public SoundPool P;
    public LinearLayout S;
    public HiveProgressView T;

    /* renamed from: g, reason: collision with root package name */
    public u9 f15908g;

    /* renamed from: h, reason: collision with root package name */
    public TvRecyclerView f15909h;

    /* renamed from: i, reason: collision with root package name */
    public x9.n4 f15910i;

    /* renamed from: j, reason: collision with root package name */
    public x9.i3 f15911j;

    /* renamed from: k, reason: collision with root package name */
    public TvRecyclerView f15912k;
    public x9.g0 l;

    /* renamed from: m, reason: collision with root package name */
    public TvRecyclerView f15913m;

    /* renamed from: n, reason: collision with root package name */
    public x9.n f15914n;

    /* renamed from: q, reason: collision with root package name */
    public ConstraintLayout f15916q;
    public LinearLayout r;

    /* renamed from: s, reason: collision with root package name */
    public LinearLayout f15917s;

    /* renamed from: t, reason: collision with root package name */
    public LinearLayout f15918t;

    /* renamed from: v, reason: collision with root package name */
    public LinearLayout f15919v;

    /* renamed from: w, reason: collision with root package name */
    public LinearLayout f15920w;

    /* renamed from: x, reason: collision with root package name */
    public LinearLayout f15921x;

    /* renamed from: y, reason: collision with root package name */
    public LinearLayout f15922y;
    public ImageView z;

    /* renamed from: p, reason: collision with root package name */
    public boolean f15915p = false;
    public String C = "";
    public final AtomicInteger F = new AtomicInteger(0);
    public final ArrayList L = new ArrayList();
    public int M = -1;
    public ArrayList O = new ArrayList();
    public int R = -1;
    public boolean V = true;
    public final com.yunpan.appmanage.carsdk.u X = new com.yunpan.appmanage.carsdk.u(this, Looper.getMainLooper(), 23);

    public static void n(q8 q8Var) {
        q8Var.f15908g.a();
        q8Var.f15912k.requestFocus();
        x9.w3 w3Var = (x9.w3) g.b.d(q8Var.l, 1);
        if (!w3Var.f18365b.isEmpty()) {
            q8Var.v(w3Var, true);
            return;
        }
        for (int iB = q8Var.f15914n.b() - 1; iB >= 0; iB--) {
            if (!com.yunpan.appmanage.util.a0.g(((x9.w3) q8Var.f15914n.t(iB)).f18365b)) {
                q8Var.f15914n.C(iB);
            }
        }
    }

    public static boolean w(String str) {
        fa.h0 h0Var = fa.g0.f5682a;
        if (!h0Var.d().isEmpty() && str.startsWith(h0Var.d())) {
            return true;
        }
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (kVar.f4073v.isEmpty()) {
            return false;
        }
        Iterator it = kVar.f4073v.iterator();
        while (it.hasNext()) {
            if (str.startsWith((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    public final void A(boolean z, String str, ArrayList arrayList) {
        C("", 0, false);
        this.f15908g.c("搜索中");
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        new mc.c(0, new h2.d(arrayList, z, str, arrayList3)).d(rc.f.f13757b).a(fc.b.a()).b(new q1(this, str, arrayList3, arrayList2, 2));
    }

    public final void B() {
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        int i10 = wVar.f4118f0;
        if (i10 == 0) {
            TvRecyclerView tvRecyclerView = this.f15913m;
            float f10 = wVar.f4117f;
            tvRecyclerView.mHorizontalSpacingWithMargins = (int) (20.0f * f10);
            tvRecyclerView.mVerticalSpacingWithMargins = (int) (f10 * 10.0f);
            tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this.f4529e, 2));
            return;
        }
        if (i10 == 1) {
            TvRecyclerView tvRecyclerView2 = this.f15913m;
            float f11 = wVar.f4117f;
            tvRecyclerView2.mHorizontalSpacingWithMargins = (int) (20.0f * f11);
            tvRecyclerView2.mVerticalSpacingWithMargins = (int) (f11 * 10.0f);
            tvRecyclerView2.setLayoutManager(new V7GridLayoutManager(this.f4529e, 3));
            return;
        }
        if (i10 == 2) {
            TvRecyclerView tvRecyclerView3 = this.f15913m;
            float f12 = wVar.f4117f;
            tvRecyclerView3.mHorizontalSpacingWithMargins = (int) (f12 * 20.0f);
            tvRecyclerView3.mVerticalSpacingWithMargins = (int) (f12 * 20.0f);
            tvRecyclerView3.setLayoutManager(new V7GridLayoutManager(this.f4529e, 7));
            return;
        }
        if (i10 == 3) {
            TvRecyclerView tvRecyclerView4 = this.f15913m;
            float f13 = wVar.f4117f;
            tvRecyclerView4.mHorizontalSpacingWithMargins = (int) (20.0f * f13);
            tvRecyclerView4.mVerticalSpacingWithMargins = (int) (f13 * 10.0f);
            tvRecyclerView4.setLayoutManager(new V7GridLayoutManager(this.f4529e, 4));
            return;
        }
        if (i10 == 4) {
            TvRecyclerView tvRecyclerView5 = this.f15913m;
            float f14 = wVar.f4117f;
            tvRecyclerView5.mHorizontalSpacingWithMargins = (int) (20.0f * f14);
            tvRecyclerView5.mVerticalSpacingWithMargins = (int) (f14 * 8.0f);
            tvRecyclerView5.setLayoutManager(new V7GridLayoutManager(this.f4529e, 7));
            return;
        }
        if (i10 == 5) {
            TvRecyclerView tvRecyclerView6 = this.f15913m;
            float f15 = wVar.f4117f;
            tvRecyclerView6.mHorizontalSpacingWithMargins = (int) (20.0f * f15);
            tvRecyclerView6.mVerticalSpacingWithMargins = (int) (f15 * 10.0f);
            tvRecyclerView6.setLayoutManager(new V7GridLayoutManager(this.f4529e, 4));
        }
    }

    public final void C(String str, int i10, boolean z) {
        this.f15922y.setVisibility(z ? 0 : 8);
        if (z) {
            this.z.setImageResource(i10);
            this.A.setText(str);
        }
    }

    public final void D(int i10) {
        this.B = (x9.w3) this.f15914n.t(i10);
        if (this.l.b() == 1 && ((x9.w3) this.l.t(0)).f18364a.equals("收藏栏") && ((x9.w3) this.l.t(0)).f18365b.isEmpty()) {
            new ha.z6(this.f4530f, this.f4529e, "修改备注 或 移除收藏", this.B.f18364a, "请输入备注", "修改备注", "移除收藏", new c8(this, i10)).show();
            return;
        }
        boolean zStartsWith = ((x9.w3) this.l.t(0)).f18364a.startsWith("搜索结果：");
        if (zStartsWith && !new File(this.B.f18365b).exists()) {
            this.f15914n.C(i10);
            Toaster.show((CharSequence) "此文件不存在");
            return;
        }
        ha.v5 v5Var = new ha.v5(this.f4530f, this.f4529e);
        x9.w3 w3Var = this.B;
        c8 c8Var = new c8(this, i10);
        v5Var.show();
        v5Var.f7915p = w3Var;
        v5Var.f7917s = c8Var;
        v5Var.f7914n.setVisibility(8);
        v5Var.f7908g.setVisibility(8);
        ArrayList arrayList = new ArrayList();
        x9.t1 t1Var = v5Var.f7913m;
        t1Var.E(arrayList);
        v5Var.f7912k.E(new ArrayList());
        if (!w3Var.f18366c) {
            if (za.g.g(w3Var.f18364a)) {
                t1Var.q(new x9.l3(R.drawable.tp_open2, "解压"));
            } else if (w3Var.f18367d > 0 && (p000if.a.X(w3Var.f18364a) || w3Var.f18364a.endsWith(".gj"))) {
                t1Var.q(new x9.l3(R.drawable.tp_install, "安装"));
                new mc.c(0, new ha.t5(v5Var, 2)).d(rc.f.f13757b).a(fc.b.a()).b(new ha.u5(v5Var, 1));
            } else if (p000if.a.c0(w3Var.f18364a)) {
                t1Var.q(new x9.l3(R.drawable.tp_open2, "浏览"));
            } else {
                t1Var.q(new x9.l3(R.drawable.tp_open2, "打开"));
                int iLastIndexOf = w3Var.f18365b.lastIndexOf(".");
                if (iLastIndexOf > 0) {
                    if (p000if.a.f0(w3Var.f18364a) || w3Var.f18364a.endsWith(".pcm")) {
                        v5Var.f7916q = "音乐";
                    } else if (p000if.a.j0(w3Var.f18364a)) {
                        v5Var.f7916q = "视频";
                    } else if (p000if.a.c0(w3Var.f18364a)) {
                        v5Var.f7916q = "图片";
                    } else if (p000if.a.i0(w3Var.f18364a)) {
                        v5Var.f7916q = "文本";
                    } else {
                        v5Var.f7916q = w3Var.f18365b.substring(iLastIndexOf).toLowerCase(Locale.getDefault());
                    }
                }
                if (!v5Var.f7916q.isEmpty() && !com.yunpan.appmanage.util.v.f4106a.h(v5Var.f7916q).isEmpty()) {
                    v5Var.f7914n.setVisibility(0);
                }
            }
        }
        if (w3Var.f18366c) {
            t1Var.q(new x9.l3(R.drawable.delete1, "删除"));
            t1Var.q(new x9.l3(R.drawable.copy1, "复制"));
            t1Var.q(new x9.l3(R.drawable.shear3, "剪切"));
            t1Var.q(new x9.l3(R.drawable.tp_rename1, "改名"));
            t1Var.q(new x9.l3(R.drawable.tp_xy6, "复制"));
            t1Var.q(new x9.l3(R.drawable.tp_xy6, "剪切"));
            t1Var.q(new x9.l3(R.drawable.tp_rar, "压缩"));
            t1Var.q(new x9.l3(R.drawable.share3, "传送"));
        } else {
            t1Var.q(new x9.l3(R.drawable.delete1, "删除"));
            t1Var.q(new x9.l3(R.drawable.tp_rename1, "改名"));
            t1Var.q(new x9.l3(R.drawable.tp_rar, "压缩"));
            t1Var.q(new x9.l3(R.drawable.copy1, "复制"));
            t1Var.q(new x9.l3(R.drawable.shear3, "剪切"));
            t1Var.q(new x9.l3(R.drawable.tp_share7, "分享"));
            t1Var.q(new x9.l3(R.drawable.tp_xy6, "复制"));
            t1Var.q(new x9.l3(R.drawable.tp_xy6, "剪切"));
            t1Var.q(new x9.l3(R.drawable.share3, "传送"));
        }
        if (zStartsWith) {
            t1Var.q(new x9.l3(R.drawable.folder1, "目录"));
        } else {
            t1Var.q(new x9.l3(R.drawable.tp_zt1, "属性"));
        }
        if (t1Var.b() % 3 != 0) {
            if (((x9.l3) t1Var.t(0)).f18272b.equals("安装") || ((x9.l3) t1Var.t(0)).f18272b.equals("重装")) {
                t1Var.q(new x9.l3(R.drawable.tp_open2, "解压"));
            } else {
                t1Var.q(new x9.l3(R.drawable.return1, "返回"));
            }
        }
        v5Var.l.setSelection(0);
        v5Var.l.requestFocus();
    }

    public final void E(String str) {
        x();
        x9.w3 w3Var = this.B;
        x9.m5 m5Var = new x9.m5(w3Var.f18364a, w3Var.f18365b, str);
        this.D.setVisibility(0);
        this.E.q(m5Var);
        this.G.execute(new androidx.activity.f(this, this.E.b() - 1, m5Var, 3));
    }

    public final void F(x9.w3 w3Var) {
        String absolutePath = "/system";
        String str = "内部存储";
        try {
            String str2 = w3Var.f18364a;
            String str3 = w3Var.f18365b;
            if (str2.equals("内部存储") || w3Var.f18365b.endsWith("/Download")) {
                absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
                if (!com.yunpan.appmanage.util.a0.g(absolutePath)) {
                    absolutePath = "/sdcard";
                }
            } else {
                if (!w3Var.f18364a.startsWith("U盘")) {
                    if (w3Var.f18365b.startsWith("/data")) {
                        str = "数据分区";
                    } else {
                        if (w3Var.f18365b.startsWith("/system")) {
                            absolutePath = str3;
                        } else if (w3Var.f18365b.startsWith("/amapauto")) {
                            str = "地图分区";
                        } else if (!w3Var.f18365b.equals("/")) {
                            if (w3Var.f18365b.startsWith("/vendor")) {
                                str = "vendor分区";
                            }
                        }
                        str = "系统分区";
                    }
                    absolutePath = str3;
                }
                str = str2;
                absolutePath = str3;
            }
            this.N.setText(str + "：" + p000if.a.D0(com.yunpan.appmanage.util.a0.k(absolutePath)) + "   剩余：" + p000if.a.D0(com.yunpan.appmanage.util.a0.j(absolutePath)));
        } catch (Exception unused) {
        }
    }

    public final void G(String str, String str2, x9.w3 w3Var) {
        if (!w3Var.f18366c) {
            ja.g gVar = new ja.g(str, w3Var.f18364a, w3Var.f18365b, str2);
            Message messageObtain = Message.obtain();
            messageObtain.what = 1000;
            messageObtain.obj = gVar;
            this.X.sendMessage(messageObtain);
            return;
        }
        File file = new File(w3Var.f18365b);
        StringBuilder sbB = d0.f.b(str2, "/");
        sbB.append(w3Var.f18364a);
        String string = sbB.toString();
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles();
            for (int i10 = 0; i10 < fileArrListFiles.length; i10++) {
                G(str, string, new x9.w3(fileArrListFiles[i10].getName(), fileArrListFiles[i10].getPath(), fileArrListFiles[i10].isDirectory()));
            }
        }
    }

    public final void H() {
        try {
            x9.g0 g0Var = this.l;
            if (g0Var != null && g0Var.b() > 0 && ((x9.w3) this.l.t(0)).f18364a.startsWith("U盘")) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (!com.yunpan.appmanage.util.j.f4033a.f4073v.contains(((x9.w3) this.l.t(0)).f18365b)) {
                    if (this.f15913m.hasFocus() || this.f15912k.hasFocus()) {
                        this.f15909h.requestFocus();
                    }
                    this.l.E(new ArrayList());
                    this.f15913m.stopScroll();
                    this.f15914n.E(new ArrayList());
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new x9.w3("文件互传", "", true));
            fa.h0 h0Var = fa.g0.f5682a;
            if (!h0Var.d().isEmpty()) {
                arrayList.add(new x9.w3("内部存储", h0Var.d(), true));
            }
            DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
            com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
            Iterator$EL.forEachRemaining(kVar.f4073v.iterator(), new q5(1, arrayList));
            if (!h0Var.d().isEmpty()) {
                arrayList.add(new x9.w3("Download", h0Var.d() + "/Download", true));
            }
            arrayList.add(new x9.w3("文件搜索", "", true));
            if (!com.yunpan.appmanage.util.v.f4106a.d().isEmpty()) {
                arrayList.add(new x9.w3("收藏栏", "", true));
            }
            arrayList.add(new x9.w3("根", "/", true));
            if (kVar.f4040c0) {
                arrayList.add(new x9.w3("扫描", "", true));
            }
            arrayList.add(new x9.w3("清理", "", true));
            arrayList.add(new x9.w3("设置", "", true));
            this.f15910i.E(arrayList);
        } catch (Exception unused) {
        }
    }

    @Override // da.h
    public final int j() {
        return R.layout.fragment_file;
    }

    @Override // da.h
    public final void k() {
        if (!kh.e.b().e(this)) {
            kh.e.b().j(this);
        }
        this.G = Executors.newFixedThreadPool(1);
        this.f15908g = new u9(this.f4530f, this.f4529e);
        if (Build.VERSION.SDK_INT >= 21) {
            this.P = new SoundPool.Builder().setMaxStreams(5).setAudioAttributes(new AudioAttributes.Builder().setUsage(13).setContentType(4).setLegacyStreamType(5).build()).build();
        } else {
            this.P = new SoundPool(5, 5, 0);
        }
        this.R = this.P.load(this.f4529e, R.raw.sound1, 1);
        TextView textView = (TextView) i(R.id.v_count);
        this.H = textView;
        textView.setText("如有建议或者BUG请到QQ频道反馈");
        TextView textView2 = (TextView) i(R.id.v_tile_paste_text);
        this.K = textView2;
        textView2.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) i(R.id.v_file_btn_paste);
        this.I = linearLayout;
        linearLayout.setVisibility(8);
        final int i10 = 4;
        this.I.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.a8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15570b;

            {
                this.f15570b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i11, KeyEvent keyEvent) {
                switch (i10) {
                    case 0:
                        q8 q8Var = this.f15570b;
                        if (i11 != 19) {
                            if (i11 != 20) {
                                q8Var.getClass();
                                break;
                            } else if (q8Var.f15914n.b() > 0) {
                                q8Var.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        q8 q8Var2 = this.f15570b;
                        if (i11 != 19) {
                            if (i11 != 20) {
                                q8Var2.getClass();
                                break;
                            } else if (q8Var2.f15914n.b() > 0) {
                                q8Var2.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var2.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 2:
                        q8 q8Var3 = this.f15570b;
                        if (i11 != 19) {
                            if (i11 != 20) {
                                q8Var3.getClass();
                                break;
                            } else if (q8Var3.f15914n.b() > 0) {
                                q8Var3.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var3.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 3:
                        q8 q8Var4 = this.f15570b;
                        if (i11 != 19) {
                            if (i11 != 20) {
                                q8Var4.getClass();
                                break;
                            } else if (q8Var4.f15914n.b() > 0) {
                                q8Var4.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var4.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 4:
                        q8 q8Var5 = this.f15570b;
                        q8Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i11 != 22) {
                                if (i11 != 21) {
                                    if (i11 != 19) {
                                        if (i11 == 20) {
                                            if (q8Var5.f15914n.b() <= 0) {
                                                q8Var5.f15912k.requestFocus();
                                                break;
                                            } else {
                                                q8Var5.f15913m.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        q8Var5.f15909h.requestFocus();
                                        break;
                                    }
                                } else {
                                    q8Var5.f15912k.requestFocus();
                                    break;
                                }
                            } else {
                                s1.g.W(333, view);
                                break;
                            }
                        }
                        break;
                    case 5:
                        q8 q8Var6 = this.f15570b;
                        if (i11 != 19) {
                            if (i11 != 20) {
                                q8Var6.getClass();
                                break;
                            } else if (q8Var6.f15914n.b() > 0) {
                                q8Var6.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var6.f15909h.requestFocus();
                            break;
                        }
                        break;
                    default:
                        q8 q8Var7 = this.f15570b;
                        if (i11 != 19) {
                            if (i11 != 20) {
                                q8Var7.getClass();
                                break;
                            } else if (q8Var7.f15914n.b() > 0) {
                                q8Var7.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var7.f15909h.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        this.I.setOnLongClickListener(new e8(0, this));
        final int i11 = 3;
        this.I.setOnClickListener(new View.OnClickListener(this) { // from class: ua.b8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15592b;

            {
                this.f15592b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Exception {
                q8 q8Var = this.f15592b;
                switch (i11) {
                    case 0:
                        q8Var.getClass();
                        com.bumptech.glide.c.i(2222, view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var.f18365b.isEmpty()) {
                                q8Var.v(w3Var, true);
                                break;
                            } else {
                                Toaster.showShort((CharSequence) "非目录无需刷新");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 1:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var2 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var2.f18365b.isEmpty()) {
                                Iterator it = com.yunpan.appmanage.util.v.f4106a.d().iterator();
                                while (it.hasNext()) {
                                    if (((x9.w3) it.next()).f18365b.equals(w3Var2.f18365b)) {
                                        Toaster.show((CharSequence) "已存在");
                                        break;
                                    }
                                }
                                new ha.z6(q8Var.f4530f, q8Var.f4529e, "设置备注名", w3Var2.f18364a, "请输入备注(默认为目录名)", "确定", "取消", new g6(q8Var, 4, w3Var2)).show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前位置不是目录，无法添加到收藏栏");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 2:
                        q8Var.getClass();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        int i12 = wVar.f4118f0 + 1;
                        int i13 = i12 <= 5 ? i12 : 0;
                        wVar.f4118f0 = i13;
                        try {
                            wVar.f4123i.l("mFileListStyle", Integer.valueOf(i13));
                        } catch (Exception unused) {
                        }
                        wVar.m();
                        q8Var.B();
                        break;
                    case 3:
                        if (!q8Var.L.isEmpty()) {
                            if (q8Var.l.b() != 0 && !((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                q8Var.r(((x9.w3) g.b.d(q8Var.l, 1)).f18365b);
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.s("当前目录不存在，无法粘贴在此处", false);
                                break;
                            }
                        } else {
                            q8Var.I.setVisibility(8);
                            q8Var.K.setVisibility(8);
                            com.yunpan.appmanage.util.a0.s("剪切板为空,请先剪切或复制文件", false);
                            break;
                        }
                    case 4:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (q8Var.f15914n.b() >= 2) {
                                if (q8Var.l.b() == 1) {
                                    x9.w3 w3Var3 = (x9.w3) q8Var.l.t(0);
                                    if (w3Var3.f18365b.isEmpty() && w3Var3.f18364a.contains("收藏栏")) {
                                        Toaster.show((CharSequence) "收藏栏不支持多选");
                                        break;
                                    }
                                }
                                q8Var.f15915p = true;
                                q8Var.f15909h.setAdapter(q8Var.f15911j);
                                q8Var.f15909h.requestFocus();
                                q8Var.I.setVisibility(8);
                                q8Var.K.setVisibility(8);
                                q8Var.f15916q.setVisibility(8);
                                if (!com.yunpan.appmanage.util.v.f4106a.f4119g.isEmpty() && com.yunpan.appmanage.util.a0.b(((x9.w3) g.b.d(q8Var.l, 1)).f18365b)) {
                                    if (!((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                        q8Var.f15911j.p(7, new x9.w3("传送", ""));
                                        break;
                                    }
                                } else if (((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                    q8Var.f15911j.C(7);
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "文件不足，无法多选");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                    case 5:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (!((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                PopupMenu popupMenu = new PopupMenu(q8Var.f4529e, q8Var.f15919v);
                                popupMenu.getMenuInflater().inflate(R.menu.menu_new, popupMenu.getMenu());
                                popupMenu.setOnMenuItemClickListener(new ha.y2(q8Var, 3));
                                popupMenu.show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前目录是临时目录，无法在这新建文件或目录");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    default:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var4 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var4.f18365b.isEmpty()) {
                                fa.h0 h0Var = fa.g0.f5682a;
                                if (!h0Var.d().isEmpty() && w3Var4.f18365b.startsWith(h0Var.d())) {
                                    q8Var.u();
                                    break;
                                } else {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                    if (!kVar.f4073v.isEmpty()) {
                                        Iterator it2 = kVar.f4073v.iterator();
                                        while (it2.hasNext()) {
                                            if (w3Var4.f18365b.startsWith((String) it2.next())) {
                                                q8Var.u();
                                                break;
                                            }
                                        }
                                    }
                                    Toaster.show((CharSequence) "只允许统计【内部存储】【U盘】下的目录");
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "非目录无需统计");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                }
            }
        });
        TextView textView3 = (TextView) i(R.id.v_filePath);
        this.N = textView3;
        textView3.setText("");
        this.f15922y = (LinearLayout) i(R.id.v_read_ts_lay);
        this.z = (ImageView) i(R.id.v_read_ts_ico);
        this.A = (TextView) i(R.id.v_read_ts_text);
        this.f15922y.setVisibility(8);
        HiveProgressView hiveProgressView = (HiveProgressView) i(R.id.v_readProgress);
        this.T = hiveProgressView;
        hiveProgressView.setVisibility(8);
        LinearLayout linearLayout2 = (LinearLayout) i(R.id.v_lay_dirScan);
        this.S = linearLayout2;
        linearLayout2.setVisibility(8);
        this.X.sendEmptyMessage(0);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) i(R.id.v_file_root);
        this.f15909h = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(this.f4529e, 0, false));
        x9.n4 n4Var = new x9.n4();
        this.f15910i = n4Var;
        this.f15909h.setAdapter(n4Var);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) i(R.id.v_file_path);
        this.f15912k = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager(this.f4529e, 0, false));
        x9.g0 g0Var = new x9.g0();
        this.l = g0Var;
        this.f15912k.setAdapter(g0Var);
        TvRecyclerView tvRecyclerView3 = (TvRecyclerView) i(R.id.v_file_file);
        this.f15913m = tvRecyclerView3;
        tvRecyclerView3.setFocusableInTouchMode(true);
        this.f15913m.hasFixedSize();
        B();
        x9.n nVar = new x9.n(requireContext());
        this.f15914n = nVar;
        this.f15913m.setAdapter(nVar);
        this.f15916q = (ConstraintLayout) i(R.id.v_lay_path);
        LinearLayout linearLayout3 = (LinearLayout) i(R.id.v_btn_style);
        this.r = linearLayout3;
        final int i12 = 2;
        linearLayout3.setOnClickListener(new View.OnClickListener(this) { // from class: ua.b8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15592b;

            {
                this.f15592b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Exception {
                q8 q8Var = this.f15592b;
                switch (i12) {
                    case 0:
                        q8Var.getClass();
                        com.bumptech.glide.c.i(2222, view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var.f18365b.isEmpty()) {
                                q8Var.v(w3Var, true);
                                break;
                            } else {
                                Toaster.showShort((CharSequence) "非目录无需刷新");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 1:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var2 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var2.f18365b.isEmpty()) {
                                Iterator it = com.yunpan.appmanage.util.v.f4106a.d().iterator();
                                while (it.hasNext()) {
                                    if (((x9.w3) it.next()).f18365b.equals(w3Var2.f18365b)) {
                                        Toaster.show((CharSequence) "已存在");
                                        break;
                                    }
                                }
                                new ha.z6(q8Var.f4530f, q8Var.f4529e, "设置备注名", w3Var2.f18364a, "请输入备注(默认为目录名)", "确定", "取消", new g6(q8Var, 4, w3Var2)).show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前位置不是目录，无法添加到收藏栏");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 2:
                        q8Var.getClass();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        int i122 = wVar.f4118f0 + 1;
                        int i13 = i122 <= 5 ? i122 : 0;
                        wVar.f4118f0 = i13;
                        try {
                            wVar.f4123i.l("mFileListStyle", Integer.valueOf(i13));
                        } catch (Exception unused) {
                        }
                        wVar.m();
                        q8Var.B();
                        break;
                    case 3:
                        if (!q8Var.L.isEmpty()) {
                            if (q8Var.l.b() != 0 && !((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                q8Var.r(((x9.w3) g.b.d(q8Var.l, 1)).f18365b);
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.s("当前目录不存在，无法粘贴在此处", false);
                                break;
                            }
                        } else {
                            q8Var.I.setVisibility(8);
                            q8Var.K.setVisibility(8);
                            com.yunpan.appmanage.util.a0.s("剪切板为空,请先剪切或复制文件", false);
                            break;
                        }
                    case 4:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (q8Var.f15914n.b() >= 2) {
                                if (q8Var.l.b() == 1) {
                                    x9.w3 w3Var3 = (x9.w3) q8Var.l.t(0);
                                    if (w3Var3.f18365b.isEmpty() && w3Var3.f18364a.contains("收藏栏")) {
                                        Toaster.show((CharSequence) "收藏栏不支持多选");
                                        break;
                                    }
                                }
                                q8Var.f15915p = true;
                                q8Var.f15909h.setAdapter(q8Var.f15911j);
                                q8Var.f15909h.requestFocus();
                                q8Var.I.setVisibility(8);
                                q8Var.K.setVisibility(8);
                                q8Var.f15916q.setVisibility(8);
                                if (!com.yunpan.appmanage.util.v.f4106a.f4119g.isEmpty() && com.yunpan.appmanage.util.a0.b(((x9.w3) g.b.d(q8Var.l, 1)).f18365b)) {
                                    if (!((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                        q8Var.f15911j.p(7, new x9.w3("传送", ""));
                                        break;
                                    }
                                } else if (((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                    q8Var.f15911j.C(7);
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "文件不足，无法多选");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                    case 5:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (!((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                PopupMenu popupMenu = new PopupMenu(q8Var.f4529e, q8Var.f15919v);
                                popupMenu.getMenuInflater().inflate(R.menu.menu_new, popupMenu.getMenu());
                                popupMenu.setOnMenuItemClickListener(new ha.y2(q8Var, 3));
                                popupMenu.show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前目录是临时目录，无法在这新建文件或目录");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    default:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var4 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var4.f18365b.isEmpty()) {
                                fa.h0 h0Var = fa.g0.f5682a;
                                if (!h0Var.d().isEmpty() && w3Var4.f18365b.startsWith(h0Var.d())) {
                                    q8Var.u();
                                    break;
                                } else {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                    if (!kVar.f4073v.isEmpty()) {
                                        Iterator it2 = kVar.f4073v.iterator();
                                        while (it2.hasNext()) {
                                            if (w3Var4.f18365b.startsWith((String) it2.next())) {
                                                q8Var.u();
                                                break;
                                            }
                                        }
                                    }
                                    Toaster.show((CharSequence) "只允许统计【内部存储】【U盘】下的目录");
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "非目录无需统计");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                }
            }
        });
        final TextView textView4 = (TextView) i(R.id.v_btn_style_text);
        final int i13 = 3;
        this.r.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: ua.z7
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                switch (i13) {
                    case 0:
                        TextView textView5 = textView4;
                        if (!z) {
                            textView5.setVisibility(8);
                            break;
                        } else {
                            textView5.setVisibility(0);
                            break;
                        }
                    case 1:
                        TextView textView6 = textView4;
                        if (!z) {
                            textView6.setVisibility(8);
                            break;
                        } else {
                            textView6.setVisibility(0);
                            break;
                        }
                    case 2:
                        TextView textView7 = textView4;
                        if (!z) {
                            textView7.setVisibility(8);
                            break;
                        } else {
                            textView7.setVisibility(0);
                            break;
                        }
                    case 3:
                        TextView textView8 = textView4;
                        if (!z) {
                            textView8.setVisibility(8);
                            break;
                        } else {
                            textView8.setVisibility(0);
                            break;
                        }
                    case 4:
                        TextView textView9 = textView4;
                        if (!z) {
                            textView9.setVisibility(8);
                            break;
                        } else {
                            textView9.setVisibility(0);
                            break;
                        }
                    default:
                        TextView textView10 = textView4;
                        if (!z) {
                            textView10.setVisibility(8);
                            break;
                        } else {
                            textView10.setVisibility(0);
                            break;
                        }
                }
            }
        });
        final int i14 = 3;
        this.r.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.a8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15570b;

            {
                this.f15570b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i14) {
                    case 0:
                        q8 q8Var = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var.getClass();
                                break;
                            } else if (q8Var.f15914n.b() > 0) {
                                q8Var.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        q8 q8Var2 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var2.getClass();
                                break;
                            } else if (q8Var2.f15914n.b() > 0) {
                                q8Var2.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var2.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 2:
                        q8 q8Var3 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var3.getClass();
                                break;
                            } else if (q8Var3.f15914n.b() > 0) {
                                q8Var3.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var3.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 3:
                        q8 q8Var4 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var4.getClass();
                                break;
                            } else if (q8Var4.f15914n.b() > 0) {
                                q8Var4.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var4.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 4:
                        q8 q8Var5 = this.f15570b;
                        q8Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 22) {
                                if (i112 != 21) {
                                    if (i112 != 19) {
                                        if (i112 == 20) {
                                            if (q8Var5.f15914n.b() <= 0) {
                                                q8Var5.f15912k.requestFocus();
                                                break;
                                            } else {
                                                q8Var5.f15913m.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        q8Var5.f15909h.requestFocus();
                                        break;
                                    }
                                } else {
                                    q8Var5.f15912k.requestFocus();
                                    break;
                                }
                            } else {
                                s1.g.W(333, view);
                                break;
                            }
                        }
                        break;
                    case 5:
                        q8 q8Var6 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var6.getClass();
                                break;
                            } else if (q8Var6.f15914n.b() > 0) {
                                q8Var6.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var6.f15909h.requestFocus();
                            break;
                        }
                        break;
                    default:
                        q8 q8Var7 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var7.getClass();
                                break;
                            } else if (q8Var7.f15914n.b() > 0) {
                                q8Var7.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var7.f15909h.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        LinearLayout linearLayout4 = (LinearLayout) i(R.id.v_btn_multi);
        this.f15917s = linearLayout4;
        final int i15 = 4;
        linearLayout4.setOnClickListener(new View.OnClickListener(this) { // from class: ua.b8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15592b;

            {
                this.f15592b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Exception {
                q8 q8Var = this.f15592b;
                switch (i15) {
                    case 0:
                        q8Var.getClass();
                        com.bumptech.glide.c.i(2222, view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var.f18365b.isEmpty()) {
                                q8Var.v(w3Var, true);
                                break;
                            } else {
                                Toaster.showShort((CharSequence) "非目录无需刷新");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 1:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var2 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var2.f18365b.isEmpty()) {
                                Iterator it = com.yunpan.appmanage.util.v.f4106a.d().iterator();
                                while (it.hasNext()) {
                                    if (((x9.w3) it.next()).f18365b.equals(w3Var2.f18365b)) {
                                        Toaster.show((CharSequence) "已存在");
                                        break;
                                    }
                                }
                                new ha.z6(q8Var.f4530f, q8Var.f4529e, "设置备注名", w3Var2.f18364a, "请输入备注(默认为目录名)", "确定", "取消", new g6(q8Var, 4, w3Var2)).show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前位置不是目录，无法添加到收藏栏");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 2:
                        q8Var.getClass();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        int i122 = wVar.f4118f0 + 1;
                        int i132 = i122 <= 5 ? i122 : 0;
                        wVar.f4118f0 = i132;
                        try {
                            wVar.f4123i.l("mFileListStyle", Integer.valueOf(i132));
                        } catch (Exception unused) {
                        }
                        wVar.m();
                        q8Var.B();
                        break;
                    case 3:
                        if (!q8Var.L.isEmpty()) {
                            if (q8Var.l.b() != 0 && !((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                q8Var.r(((x9.w3) g.b.d(q8Var.l, 1)).f18365b);
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.s("当前目录不存在，无法粘贴在此处", false);
                                break;
                            }
                        } else {
                            q8Var.I.setVisibility(8);
                            q8Var.K.setVisibility(8);
                            com.yunpan.appmanage.util.a0.s("剪切板为空,请先剪切或复制文件", false);
                            break;
                        }
                    case 4:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (q8Var.f15914n.b() >= 2) {
                                if (q8Var.l.b() == 1) {
                                    x9.w3 w3Var3 = (x9.w3) q8Var.l.t(0);
                                    if (w3Var3.f18365b.isEmpty() && w3Var3.f18364a.contains("收藏栏")) {
                                        Toaster.show((CharSequence) "收藏栏不支持多选");
                                        break;
                                    }
                                }
                                q8Var.f15915p = true;
                                q8Var.f15909h.setAdapter(q8Var.f15911j);
                                q8Var.f15909h.requestFocus();
                                q8Var.I.setVisibility(8);
                                q8Var.K.setVisibility(8);
                                q8Var.f15916q.setVisibility(8);
                                if (!com.yunpan.appmanage.util.v.f4106a.f4119g.isEmpty() && com.yunpan.appmanage.util.a0.b(((x9.w3) g.b.d(q8Var.l, 1)).f18365b)) {
                                    if (!((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                        q8Var.f15911j.p(7, new x9.w3("传送", ""));
                                        break;
                                    }
                                } else if (((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                    q8Var.f15911j.C(7);
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "文件不足，无法多选");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                    case 5:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (!((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                PopupMenu popupMenu = new PopupMenu(q8Var.f4529e, q8Var.f15919v);
                                popupMenu.getMenuInflater().inflate(R.menu.menu_new, popupMenu.getMenu());
                                popupMenu.setOnMenuItemClickListener(new ha.y2(q8Var, 3));
                                popupMenu.show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前目录是临时目录，无法在这新建文件或目录");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    default:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var4 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var4.f18365b.isEmpty()) {
                                fa.h0 h0Var = fa.g0.f5682a;
                                if (!h0Var.d().isEmpty() && w3Var4.f18365b.startsWith(h0Var.d())) {
                                    q8Var.u();
                                    break;
                                } else {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                    if (!kVar.f4073v.isEmpty()) {
                                        Iterator it2 = kVar.f4073v.iterator();
                                        while (it2.hasNext()) {
                                            if (w3Var4.f18365b.startsWith((String) it2.next())) {
                                                q8Var.u();
                                                break;
                                            }
                                        }
                                    }
                                    Toaster.show((CharSequence) "只允许统计【内部存储】【U盘】下的目录");
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "非目录无需统计");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                }
            }
        });
        final TextView textView5 = (TextView) i(R.id.v_btn_multi_text);
        final int i16 = 4;
        this.f15917s.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: ua.z7
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                switch (i16) {
                    case 0:
                        TextView textView52 = textView5;
                        if (!z) {
                            textView52.setVisibility(8);
                            break;
                        } else {
                            textView52.setVisibility(0);
                            break;
                        }
                    case 1:
                        TextView textView6 = textView5;
                        if (!z) {
                            textView6.setVisibility(8);
                            break;
                        } else {
                            textView6.setVisibility(0);
                            break;
                        }
                    case 2:
                        TextView textView7 = textView5;
                        if (!z) {
                            textView7.setVisibility(8);
                            break;
                        } else {
                            textView7.setVisibility(0);
                            break;
                        }
                    case 3:
                        TextView textView8 = textView5;
                        if (!z) {
                            textView8.setVisibility(8);
                            break;
                        } else {
                            textView8.setVisibility(0);
                            break;
                        }
                    case 4:
                        TextView textView9 = textView5;
                        if (!z) {
                            textView9.setVisibility(8);
                            break;
                        } else {
                            textView9.setVisibility(0);
                            break;
                        }
                    default:
                        TextView textView10 = textView5;
                        if (!z) {
                            textView10.setVisibility(8);
                            break;
                        } else {
                            textView10.setVisibility(0);
                            break;
                        }
                }
            }
        });
        final int i17 = 5;
        this.f15917s.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.a8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15570b;

            {
                this.f15570b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i17) {
                    case 0:
                        q8 q8Var = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var.getClass();
                                break;
                            } else if (q8Var.f15914n.b() > 0) {
                                q8Var.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        q8 q8Var2 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var2.getClass();
                                break;
                            } else if (q8Var2.f15914n.b() > 0) {
                                q8Var2.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var2.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 2:
                        q8 q8Var3 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var3.getClass();
                                break;
                            } else if (q8Var3.f15914n.b() > 0) {
                                q8Var3.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var3.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 3:
                        q8 q8Var4 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var4.getClass();
                                break;
                            } else if (q8Var4.f15914n.b() > 0) {
                                q8Var4.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var4.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 4:
                        q8 q8Var5 = this.f15570b;
                        q8Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 22) {
                                if (i112 != 21) {
                                    if (i112 != 19) {
                                        if (i112 == 20) {
                                            if (q8Var5.f15914n.b() <= 0) {
                                                q8Var5.f15912k.requestFocus();
                                                break;
                                            } else {
                                                q8Var5.f15913m.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        q8Var5.f15909h.requestFocus();
                                        break;
                                    }
                                } else {
                                    q8Var5.f15912k.requestFocus();
                                    break;
                                }
                            } else {
                                s1.g.W(333, view);
                                break;
                            }
                        }
                        break;
                    case 5:
                        q8 q8Var6 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var6.getClass();
                                break;
                            } else if (q8Var6.f15914n.b() > 0) {
                                q8Var6.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var6.f15909h.requestFocus();
                            break;
                        }
                        break;
                    default:
                        q8 q8Var7 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var7.getClass();
                                break;
                            } else if (q8Var7.f15914n.b() > 0) {
                                q8Var7.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var7.f15909h.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        LinearLayout linearLayout5 = (LinearLayout) i(R.id.v_btn_new);
        this.f15919v = linearLayout5;
        linearLayout5.setOnClickListener(new View.OnClickListener(this) { // from class: ua.b8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15592b;

            {
                this.f15592b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Exception {
                q8 q8Var = this.f15592b;
                switch (i17) {
                    case 0:
                        q8Var.getClass();
                        com.bumptech.glide.c.i(2222, view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var.f18365b.isEmpty()) {
                                q8Var.v(w3Var, true);
                                break;
                            } else {
                                Toaster.showShort((CharSequence) "非目录无需刷新");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 1:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var2 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var2.f18365b.isEmpty()) {
                                Iterator it = com.yunpan.appmanage.util.v.f4106a.d().iterator();
                                while (it.hasNext()) {
                                    if (((x9.w3) it.next()).f18365b.equals(w3Var2.f18365b)) {
                                        Toaster.show((CharSequence) "已存在");
                                        break;
                                    }
                                }
                                new ha.z6(q8Var.f4530f, q8Var.f4529e, "设置备注名", w3Var2.f18364a, "请输入备注(默认为目录名)", "确定", "取消", new g6(q8Var, 4, w3Var2)).show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前位置不是目录，无法添加到收藏栏");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 2:
                        q8Var.getClass();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        int i122 = wVar.f4118f0 + 1;
                        int i132 = i122 <= 5 ? i122 : 0;
                        wVar.f4118f0 = i132;
                        try {
                            wVar.f4123i.l("mFileListStyle", Integer.valueOf(i132));
                        } catch (Exception unused) {
                        }
                        wVar.m();
                        q8Var.B();
                        break;
                    case 3:
                        if (!q8Var.L.isEmpty()) {
                            if (q8Var.l.b() != 0 && !((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                q8Var.r(((x9.w3) g.b.d(q8Var.l, 1)).f18365b);
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.s("当前目录不存在，无法粘贴在此处", false);
                                break;
                            }
                        } else {
                            q8Var.I.setVisibility(8);
                            q8Var.K.setVisibility(8);
                            com.yunpan.appmanage.util.a0.s("剪切板为空,请先剪切或复制文件", false);
                            break;
                        }
                    case 4:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (q8Var.f15914n.b() >= 2) {
                                if (q8Var.l.b() == 1) {
                                    x9.w3 w3Var3 = (x9.w3) q8Var.l.t(0);
                                    if (w3Var3.f18365b.isEmpty() && w3Var3.f18364a.contains("收藏栏")) {
                                        Toaster.show((CharSequence) "收藏栏不支持多选");
                                        break;
                                    }
                                }
                                q8Var.f15915p = true;
                                q8Var.f15909h.setAdapter(q8Var.f15911j);
                                q8Var.f15909h.requestFocus();
                                q8Var.I.setVisibility(8);
                                q8Var.K.setVisibility(8);
                                q8Var.f15916q.setVisibility(8);
                                if (!com.yunpan.appmanage.util.v.f4106a.f4119g.isEmpty() && com.yunpan.appmanage.util.a0.b(((x9.w3) g.b.d(q8Var.l, 1)).f18365b)) {
                                    if (!((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                        q8Var.f15911j.p(7, new x9.w3("传送", ""));
                                        break;
                                    }
                                } else if (((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                    q8Var.f15911j.C(7);
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "文件不足，无法多选");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                    case 5:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (!((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                PopupMenu popupMenu = new PopupMenu(q8Var.f4529e, q8Var.f15919v);
                                popupMenu.getMenuInflater().inflate(R.menu.menu_new, popupMenu.getMenu());
                                popupMenu.setOnMenuItemClickListener(new ha.y2(q8Var, 3));
                                popupMenu.show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前目录是临时目录，无法在这新建文件或目录");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    default:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var4 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var4.f18365b.isEmpty()) {
                                fa.h0 h0Var = fa.g0.f5682a;
                                if (!h0Var.d().isEmpty() && w3Var4.f18365b.startsWith(h0Var.d())) {
                                    q8Var.u();
                                    break;
                                } else {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                    if (!kVar.f4073v.isEmpty()) {
                                        Iterator it2 = kVar.f4073v.iterator();
                                        while (it2.hasNext()) {
                                            if (w3Var4.f18365b.startsWith((String) it2.next())) {
                                                q8Var.u();
                                                break;
                                            }
                                        }
                                    }
                                    Toaster.show((CharSequence) "只允许统计【内部存储】【U盘】下的目录");
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "非目录无需统计");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                }
            }
        });
        final TextView textView6 = (TextView) i(R.id.v_btn_new_text);
        final int i18 = 5;
        this.f15919v.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: ua.z7
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                switch (i18) {
                    case 0:
                        TextView textView52 = textView6;
                        if (!z) {
                            textView52.setVisibility(8);
                            break;
                        } else {
                            textView52.setVisibility(0);
                            break;
                        }
                    case 1:
                        TextView textView62 = textView6;
                        if (!z) {
                            textView62.setVisibility(8);
                            break;
                        } else {
                            textView62.setVisibility(0);
                            break;
                        }
                    case 2:
                        TextView textView7 = textView6;
                        if (!z) {
                            textView7.setVisibility(8);
                            break;
                        } else {
                            textView7.setVisibility(0);
                            break;
                        }
                    case 3:
                        TextView textView8 = textView6;
                        if (!z) {
                            textView8.setVisibility(8);
                            break;
                        } else {
                            textView8.setVisibility(0);
                            break;
                        }
                    case 4:
                        TextView textView9 = textView6;
                        if (!z) {
                            textView9.setVisibility(8);
                            break;
                        } else {
                            textView9.setVisibility(0);
                            break;
                        }
                    default:
                        TextView textView10 = textView6;
                        if (!z) {
                            textView10.setVisibility(8);
                            break;
                        } else {
                            textView10.setVisibility(0);
                            break;
                        }
                }
            }
        });
        final int i19 = 6;
        this.f15919v.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.a8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15570b;

            {
                this.f15570b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i19) {
                    case 0:
                        q8 q8Var = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var.getClass();
                                break;
                            } else if (q8Var.f15914n.b() > 0) {
                                q8Var.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        q8 q8Var2 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var2.getClass();
                                break;
                            } else if (q8Var2.f15914n.b() > 0) {
                                q8Var2.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var2.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 2:
                        q8 q8Var3 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var3.getClass();
                                break;
                            } else if (q8Var3.f15914n.b() > 0) {
                                q8Var3.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var3.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 3:
                        q8 q8Var4 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var4.getClass();
                                break;
                            } else if (q8Var4.f15914n.b() > 0) {
                                q8Var4.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var4.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 4:
                        q8 q8Var5 = this.f15570b;
                        q8Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 22) {
                                if (i112 != 21) {
                                    if (i112 != 19) {
                                        if (i112 == 20) {
                                            if (q8Var5.f15914n.b() <= 0) {
                                                q8Var5.f15912k.requestFocus();
                                                break;
                                            } else {
                                                q8Var5.f15913m.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        q8Var5.f15909h.requestFocus();
                                        break;
                                    }
                                } else {
                                    q8Var5.f15912k.requestFocus();
                                    break;
                                }
                            } else {
                                s1.g.W(333, view);
                                break;
                            }
                        }
                        break;
                    case 5:
                        q8 q8Var6 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var6.getClass();
                                break;
                            } else if (q8Var6.f15914n.b() > 0) {
                                q8Var6.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var6.f15909h.requestFocus();
                            break;
                        }
                        break;
                    default:
                        q8 q8Var7 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var7.getClass();
                                break;
                            } else if (q8Var7.f15914n.b() > 0) {
                                q8Var7.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var7.f15909h.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        LinearLayout linearLayout6 = (LinearLayout) i(R.id.v_btn_length);
        this.f15921x = linearLayout6;
        linearLayout6.setOnClickListener(new View.OnClickListener(this) { // from class: ua.b8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15592b;

            {
                this.f15592b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Exception {
                q8 q8Var = this.f15592b;
                switch (i19) {
                    case 0:
                        q8Var.getClass();
                        com.bumptech.glide.c.i(2222, view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var.f18365b.isEmpty()) {
                                q8Var.v(w3Var, true);
                                break;
                            } else {
                                Toaster.showShort((CharSequence) "非目录无需刷新");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 1:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var2 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var2.f18365b.isEmpty()) {
                                Iterator it = com.yunpan.appmanage.util.v.f4106a.d().iterator();
                                while (it.hasNext()) {
                                    if (((x9.w3) it.next()).f18365b.equals(w3Var2.f18365b)) {
                                        Toaster.show((CharSequence) "已存在");
                                        break;
                                    }
                                }
                                new ha.z6(q8Var.f4530f, q8Var.f4529e, "设置备注名", w3Var2.f18364a, "请输入备注(默认为目录名)", "确定", "取消", new g6(q8Var, 4, w3Var2)).show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前位置不是目录，无法添加到收藏栏");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 2:
                        q8Var.getClass();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        int i122 = wVar.f4118f0 + 1;
                        int i132 = i122 <= 5 ? i122 : 0;
                        wVar.f4118f0 = i132;
                        try {
                            wVar.f4123i.l("mFileListStyle", Integer.valueOf(i132));
                        } catch (Exception unused) {
                        }
                        wVar.m();
                        q8Var.B();
                        break;
                    case 3:
                        if (!q8Var.L.isEmpty()) {
                            if (q8Var.l.b() != 0 && !((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                q8Var.r(((x9.w3) g.b.d(q8Var.l, 1)).f18365b);
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.s("当前目录不存在，无法粘贴在此处", false);
                                break;
                            }
                        } else {
                            q8Var.I.setVisibility(8);
                            q8Var.K.setVisibility(8);
                            com.yunpan.appmanage.util.a0.s("剪切板为空,请先剪切或复制文件", false);
                            break;
                        }
                    case 4:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (q8Var.f15914n.b() >= 2) {
                                if (q8Var.l.b() == 1) {
                                    x9.w3 w3Var3 = (x9.w3) q8Var.l.t(0);
                                    if (w3Var3.f18365b.isEmpty() && w3Var3.f18364a.contains("收藏栏")) {
                                        Toaster.show((CharSequence) "收藏栏不支持多选");
                                        break;
                                    }
                                }
                                q8Var.f15915p = true;
                                q8Var.f15909h.setAdapter(q8Var.f15911j);
                                q8Var.f15909h.requestFocus();
                                q8Var.I.setVisibility(8);
                                q8Var.K.setVisibility(8);
                                q8Var.f15916q.setVisibility(8);
                                if (!com.yunpan.appmanage.util.v.f4106a.f4119g.isEmpty() && com.yunpan.appmanage.util.a0.b(((x9.w3) g.b.d(q8Var.l, 1)).f18365b)) {
                                    if (!((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                        q8Var.f15911j.p(7, new x9.w3("传送", ""));
                                        break;
                                    }
                                } else if (((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                    q8Var.f15911j.C(7);
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "文件不足，无法多选");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                    case 5:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (!((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                PopupMenu popupMenu = new PopupMenu(q8Var.f4529e, q8Var.f15919v);
                                popupMenu.getMenuInflater().inflate(R.menu.menu_new, popupMenu.getMenu());
                                popupMenu.setOnMenuItemClickListener(new ha.y2(q8Var, 3));
                                popupMenu.show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前目录是临时目录，无法在这新建文件或目录");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    default:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var4 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var4.f18365b.isEmpty()) {
                                fa.h0 h0Var = fa.g0.f5682a;
                                if (!h0Var.d().isEmpty() && w3Var4.f18365b.startsWith(h0Var.d())) {
                                    q8Var.u();
                                    break;
                                } else {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                    if (!kVar.f4073v.isEmpty()) {
                                        Iterator it2 = kVar.f4073v.iterator();
                                        while (it2.hasNext()) {
                                            if (w3Var4.f18365b.startsWith((String) it2.next())) {
                                                q8Var.u();
                                                break;
                                            }
                                        }
                                    }
                                    Toaster.show((CharSequence) "只允许统计【内部存储】【U盘】下的目录");
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "非目录无需统计");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                }
            }
        });
        final TextView textView7 = (TextView) i(R.id.v_btn_length_text);
        final int i20 = 0;
        this.f15921x.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: ua.z7
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                switch (i20) {
                    case 0:
                        TextView textView52 = textView7;
                        if (!z) {
                            textView52.setVisibility(8);
                            break;
                        } else {
                            textView52.setVisibility(0);
                            break;
                        }
                    case 1:
                        TextView textView62 = textView7;
                        if (!z) {
                            textView62.setVisibility(8);
                            break;
                        } else {
                            textView62.setVisibility(0);
                            break;
                        }
                    case 2:
                        TextView textView72 = textView7;
                        if (!z) {
                            textView72.setVisibility(8);
                            break;
                        } else {
                            textView72.setVisibility(0);
                            break;
                        }
                    case 3:
                        TextView textView8 = textView7;
                        if (!z) {
                            textView8.setVisibility(8);
                            break;
                        } else {
                            textView8.setVisibility(0);
                            break;
                        }
                    case 4:
                        TextView textView9 = textView7;
                        if (!z) {
                            textView9.setVisibility(8);
                            break;
                        } else {
                            textView9.setVisibility(0);
                            break;
                        }
                    default:
                        TextView textView10 = textView7;
                        if (!z) {
                            textView10.setVisibility(8);
                            break;
                        } else {
                            textView10.setVisibility(0);
                            break;
                        }
                }
            }
        });
        final int i21 = 0;
        this.f15921x.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.a8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15570b;

            {
                this.f15570b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i21) {
                    case 0:
                        q8 q8Var = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var.getClass();
                                break;
                            } else if (q8Var.f15914n.b() > 0) {
                                q8Var.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        q8 q8Var2 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var2.getClass();
                                break;
                            } else if (q8Var2.f15914n.b() > 0) {
                                q8Var2.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var2.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 2:
                        q8 q8Var3 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var3.getClass();
                                break;
                            } else if (q8Var3.f15914n.b() > 0) {
                                q8Var3.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var3.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 3:
                        q8 q8Var4 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var4.getClass();
                                break;
                            } else if (q8Var4.f15914n.b() > 0) {
                                q8Var4.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var4.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 4:
                        q8 q8Var5 = this.f15570b;
                        q8Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 22) {
                                if (i112 != 21) {
                                    if (i112 != 19) {
                                        if (i112 == 20) {
                                            if (q8Var5.f15914n.b() <= 0) {
                                                q8Var5.f15912k.requestFocus();
                                                break;
                                            } else {
                                                q8Var5.f15913m.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        q8Var5.f15909h.requestFocus();
                                        break;
                                    }
                                } else {
                                    q8Var5.f15912k.requestFocus();
                                    break;
                                }
                            } else {
                                s1.g.W(333, view);
                                break;
                            }
                        }
                        break;
                    case 5:
                        q8 q8Var6 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var6.getClass();
                                break;
                            } else if (q8Var6.f15914n.b() > 0) {
                                q8Var6.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var6.f15909h.requestFocus();
                            break;
                        }
                        break;
                    default:
                        q8 q8Var7 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var7.getClass();
                                break;
                            } else if (q8Var7.f15914n.b() > 0) {
                                q8Var7.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var7.f15909h.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        LinearLayout linearLayout7 = (LinearLayout) i(R.id.v_btn_reload);
        this.f15920w = linearLayout7;
        linearLayout7.setOnClickListener(new View.OnClickListener(this) { // from class: ua.b8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15592b;

            {
                this.f15592b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Exception {
                q8 q8Var = this.f15592b;
                switch (i21) {
                    case 0:
                        q8Var.getClass();
                        com.bumptech.glide.c.i(2222, view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var.f18365b.isEmpty()) {
                                q8Var.v(w3Var, true);
                                break;
                            } else {
                                Toaster.showShort((CharSequence) "非目录无需刷新");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 1:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var2 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var2.f18365b.isEmpty()) {
                                Iterator it = com.yunpan.appmanage.util.v.f4106a.d().iterator();
                                while (it.hasNext()) {
                                    if (((x9.w3) it.next()).f18365b.equals(w3Var2.f18365b)) {
                                        Toaster.show((CharSequence) "已存在");
                                        break;
                                    }
                                }
                                new ha.z6(q8Var.f4530f, q8Var.f4529e, "设置备注名", w3Var2.f18364a, "请输入备注(默认为目录名)", "确定", "取消", new g6(q8Var, 4, w3Var2)).show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前位置不是目录，无法添加到收藏栏");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 2:
                        q8Var.getClass();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        int i122 = wVar.f4118f0 + 1;
                        int i132 = i122 <= 5 ? i122 : 0;
                        wVar.f4118f0 = i132;
                        try {
                            wVar.f4123i.l("mFileListStyle", Integer.valueOf(i132));
                        } catch (Exception unused) {
                        }
                        wVar.m();
                        q8Var.B();
                        break;
                    case 3:
                        if (!q8Var.L.isEmpty()) {
                            if (q8Var.l.b() != 0 && !((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                q8Var.r(((x9.w3) g.b.d(q8Var.l, 1)).f18365b);
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.s("当前目录不存在，无法粘贴在此处", false);
                                break;
                            }
                        } else {
                            q8Var.I.setVisibility(8);
                            q8Var.K.setVisibility(8);
                            com.yunpan.appmanage.util.a0.s("剪切板为空,请先剪切或复制文件", false);
                            break;
                        }
                    case 4:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (q8Var.f15914n.b() >= 2) {
                                if (q8Var.l.b() == 1) {
                                    x9.w3 w3Var3 = (x9.w3) q8Var.l.t(0);
                                    if (w3Var3.f18365b.isEmpty() && w3Var3.f18364a.contains("收藏栏")) {
                                        Toaster.show((CharSequence) "收藏栏不支持多选");
                                        break;
                                    }
                                }
                                q8Var.f15915p = true;
                                q8Var.f15909h.setAdapter(q8Var.f15911j);
                                q8Var.f15909h.requestFocus();
                                q8Var.I.setVisibility(8);
                                q8Var.K.setVisibility(8);
                                q8Var.f15916q.setVisibility(8);
                                if (!com.yunpan.appmanage.util.v.f4106a.f4119g.isEmpty() && com.yunpan.appmanage.util.a0.b(((x9.w3) g.b.d(q8Var.l, 1)).f18365b)) {
                                    if (!((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                        q8Var.f15911j.p(7, new x9.w3("传送", ""));
                                        break;
                                    }
                                } else if (((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                    q8Var.f15911j.C(7);
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "文件不足，无法多选");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                    case 5:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (!((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                PopupMenu popupMenu = new PopupMenu(q8Var.f4529e, q8Var.f15919v);
                                popupMenu.getMenuInflater().inflate(R.menu.menu_new, popupMenu.getMenu());
                                popupMenu.setOnMenuItemClickListener(new ha.y2(q8Var, 3));
                                popupMenu.show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前目录是临时目录，无法在这新建文件或目录");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    default:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var4 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var4.f18365b.isEmpty()) {
                                fa.h0 h0Var = fa.g0.f5682a;
                                if (!h0Var.d().isEmpty() && w3Var4.f18365b.startsWith(h0Var.d())) {
                                    q8Var.u();
                                    break;
                                } else {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                    if (!kVar.f4073v.isEmpty()) {
                                        Iterator it2 = kVar.f4073v.iterator();
                                        while (it2.hasNext()) {
                                            if (w3Var4.f18365b.startsWith((String) it2.next())) {
                                                q8Var.u();
                                                break;
                                            }
                                        }
                                    }
                                    Toaster.show((CharSequence) "只允许统计【内部存储】【U盘】下的目录");
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "非目录无需统计");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                }
            }
        });
        final TextView textView8 = (TextView) i(R.id.v_btn_reload_text);
        final int i22 = 1;
        this.f15920w.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: ua.z7
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                switch (i22) {
                    case 0:
                        TextView textView52 = textView8;
                        if (!z) {
                            textView52.setVisibility(8);
                            break;
                        } else {
                            textView52.setVisibility(0);
                            break;
                        }
                    case 1:
                        TextView textView62 = textView8;
                        if (!z) {
                            textView62.setVisibility(8);
                            break;
                        } else {
                            textView62.setVisibility(0);
                            break;
                        }
                    case 2:
                        TextView textView72 = textView8;
                        if (!z) {
                            textView72.setVisibility(8);
                            break;
                        } else {
                            textView72.setVisibility(0);
                            break;
                        }
                    case 3:
                        TextView textView82 = textView8;
                        if (!z) {
                            textView82.setVisibility(8);
                            break;
                        } else {
                            textView82.setVisibility(0);
                            break;
                        }
                    case 4:
                        TextView textView9 = textView8;
                        if (!z) {
                            textView9.setVisibility(8);
                            break;
                        } else {
                            textView9.setVisibility(0);
                            break;
                        }
                    default:
                        TextView textView10 = textView8;
                        if (!z) {
                            textView10.setVisibility(8);
                            break;
                        } else {
                            textView10.setVisibility(0);
                            break;
                        }
                }
            }
        });
        final int i23 = 1;
        this.f15920w.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.a8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15570b;

            {
                this.f15570b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i23) {
                    case 0:
                        q8 q8Var = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var.getClass();
                                break;
                            } else if (q8Var.f15914n.b() > 0) {
                                q8Var.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        q8 q8Var2 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var2.getClass();
                                break;
                            } else if (q8Var2.f15914n.b() > 0) {
                                q8Var2.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var2.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 2:
                        q8 q8Var3 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var3.getClass();
                                break;
                            } else if (q8Var3.f15914n.b() > 0) {
                                q8Var3.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var3.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 3:
                        q8 q8Var4 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var4.getClass();
                                break;
                            } else if (q8Var4.f15914n.b() > 0) {
                                q8Var4.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var4.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 4:
                        q8 q8Var5 = this.f15570b;
                        q8Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 22) {
                                if (i112 != 21) {
                                    if (i112 != 19) {
                                        if (i112 == 20) {
                                            if (q8Var5.f15914n.b() <= 0) {
                                                q8Var5.f15912k.requestFocus();
                                                break;
                                            } else {
                                                q8Var5.f15913m.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        q8Var5.f15909h.requestFocus();
                                        break;
                                    }
                                } else {
                                    q8Var5.f15912k.requestFocus();
                                    break;
                                }
                            } else {
                                s1.g.W(333, view);
                                break;
                            }
                        }
                        break;
                    case 5:
                        q8 q8Var6 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var6.getClass();
                                break;
                            } else if (q8Var6.f15914n.b() > 0) {
                                q8Var6.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var6.f15909h.requestFocus();
                            break;
                        }
                        break;
                    default:
                        q8 q8Var7 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var7.getClass();
                                break;
                            } else if (q8Var7.f15914n.b() > 0) {
                                q8Var7.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var7.f15909h.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        this.f15918t = (LinearLayout) i(R.id.v_btn_coll);
        final TextView textView9 = (TextView) i(R.id.v_btn_coll_text);
        this.f15918t.setOnClickListener(new View.OnClickListener(this) { // from class: ua.b8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15592b;

            {
                this.f15592b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws Exception {
                q8 q8Var = this.f15592b;
                switch (i22) {
                    case 0:
                        q8Var.getClass();
                        com.bumptech.glide.c.i(2222, view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var.f18365b.isEmpty()) {
                                q8Var.v(w3Var, true);
                                break;
                            } else {
                                Toaster.showShort((CharSequence) "非目录无需刷新");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 1:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var2 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var2.f18365b.isEmpty()) {
                                Iterator it = com.yunpan.appmanage.util.v.f4106a.d().iterator();
                                while (it.hasNext()) {
                                    if (((x9.w3) it.next()).f18365b.equals(w3Var2.f18365b)) {
                                        Toaster.show((CharSequence) "已存在");
                                        break;
                                    }
                                }
                                new ha.z6(q8Var.f4530f, q8Var.f4529e, "设置备注名", w3Var2.f18364a, "请输入备注(默认为目录名)", "确定", "取消", new g6(q8Var, 4, w3Var2)).show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前位置不是目录，无法添加到收藏栏");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    case 2:
                        q8Var.getClass();
                        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                        int i122 = wVar.f4118f0 + 1;
                        int i132 = i122 <= 5 ? i122 : 0;
                        wVar.f4118f0 = i132;
                        try {
                            wVar.f4123i.l("mFileListStyle", Integer.valueOf(i132));
                        } catch (Exception unused) {
                        }
                        wVar.m();
                        q8Var.B();
                        break;
                    case 3:
                        if (!q8Var.L.isEmpty()) {
                            if (q8Var.l.b() != 0 && !((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                q8Var.r(((x9.w3) g.b.d(q8Var.l, 1)).f18365b);
                                break;
                            } else {
                                com.yunpan.appmanage.util.a0.s("当前目录不存在，无法粘贴在此处", false);
                                break;
                            }
                        } else {
                            q8Var.I.setVisibility(8);
                            q8Var.K.setVisibility(8);
                            com.yunpan.appmanage.util.a0.s("剪切板为空,请先剪切或复制文件", false);
                            break;
                        }
                    case 4:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (q8Var.f15914n.b() >= 2) {
                                if (q8Var.l.b() == 1) {
                                    x9.w3 w3Var3 = (x9.w3) q8Var.l.t(0);
                                    if (w3Var3.f18365b.isEmpty() && w3Var3.f18364a.contains("收藏栏")) {
                                        Toaster.show((CharSequence) "收藏栏不支持多选");
                                        break;
                                    }
                                }
                                q8Var.f15915p = true;
                                q8Var.f15909h.setAdapter(q8Var.f15911j);
                                q8Var.f15909h.requestFocus();
                                q8Var.I.setVisibility(8);
                                q8Var.K.setVisibility(8);
                                q8Var.f15916q.setVisibility(8);
                                if (!com.yunpan.appmanage.util.v.f4106a.f4119g.isEmpty() && com.yunpan.appmanage.util.a0.b(((x9.w3) g.b.d(q8Var.l, 1)).f18365b)) {
                                    if (!((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                        q8Var.f15911j.p(7, new x9.w3("传送", ""));
                                        break;
                                    }
                                } else if (((x9.w3) q8Var.f15911j.t(7)).f18364a.equals("传送")) {
                                    q8Var.f15911j.C(7);
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "文件不足，无法多选");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                    case 5:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            if (!((x9.w3) g.b.d(q8Var.l, 1)).f18365b.isEmpty()) {
                                PopupMenu popupMenu = new PopupMenu(q8Var.f4529e, q8Var.f15919v);
                                popupMenu.getMenuInflater().inflate(R.menu.menu_new, popupMenu.getMenu());
                                popupMenu.setOnMenuItemClickListener(new ha.y2(q8Var, 3));
                                popupMenu.show();
                                break;
                            } else {
                                Toaster.show((CharSequence) "当前目录是临时目录，无法在这新建文件或目录");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                    default:
                        q8Var.getClass();
                        com.bumptech.glide.c.j(view);
                        if (q8Var.l.b() != 0) {
                            x9.w3 w3Var4 = (x9.w3) g.b.d(q8Var.l, 1);
                            if (!w3Var4.f18365b.isEmpty()) {
                                fa.h0 h0Var = fa.g0.f5682a;
                                if (!h0Var.d().isEmpty() && w3Var4.f18365b.startsWith(h0Var.d())) {
                                    q8Var.u();
                                    break;
                                } else {
                                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                                    com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                                    if (!kVar.f4073v.isEmpty()) {
                                        Iterator it2 = kVar.f4073v.iterator();
                                        while (it2.hasNext()) {
                                            if (w3Var4.f18365b.startsWith((String) it2.next())) {
                                                q8Var.u();
                                                break;
                                            }
                                        }
                                    }
                                    Toaster.show((CharSequence) "只允许统计【内部存储】【U盘】下的目录");
                                    break;
                                }
                            } else {
                                Toaster.show((CharSequence) "非目录无需统计");
                                break;
                            }
                        } else {
                            Toaster.showShort((CharSequence) "请先打开内部存储 或 U盘");
                            break;
                        }
                        break;
                }
            }
        });
        final int i24 = 2;
        this.f15918t.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: ua.z7
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                switch (i24) {
                    case 0:
                        TextView textView52 = textView9;
                        if (!z) {
                            textView52.setVisibility(8);
                            break;
                        } else {
                            textView52.setVisibility(0);
                            break;
                        }
                    case 1:
                        TextView textView62 = textView9;
                        if (!z) {
                            textView62.setVisibility(8);
                            break;
                        } else {
                            textView62.setVisibility(0);
                            break;
                        }
                    case 2:
                        TextView textView72 = textView9;
                        if (!z) {
                            textView72.setVisibility(8);
                            break;
                        } else {
                            textView72.setVisibility(0);
                            break;
                        }
                    case 3:
                        TextView textView82 = textView9;
                        if (!z) {
                            textView82.setVisibility(8);
                            break;
                        } else {
                            textView82.setVisibility(0);
                            break;
                        }
                    case 4:
                        TextView textView92 = textView9;
                        if (!z) {
                            textView92.setVisibility(8);
                            break;
                        } else {
                            textView92.setVisibility(0);
                            break;
                        }
                    default:
                        TextView textView10 = textView9;
                        if (!z) {
                            textView10.setVisibility(8);
                            break;
                        } else {
                            textView10.setVisibility(0);
                            break;
                        }
                }
            }
        });
        final int i25 = 2;
        this.f15918t.setOnKeyListener(new View.OnKeyListener(this) { // from class: ua.a8

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q8 f15570b;

            {
                this.f15570b = this;
            }

            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i112, KeyEvent keyEvent) {
                switch (i25) {
                    case 0:
                        q8 q8Var = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var.getClass();
                                break;
                            } else if (q8Var.f15914n.b() > 0) {
                                q8Var.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 1:
                        q8 q8Var2 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var2.getClass();
                                break;
                            } else if (q8Var2.f15914n.b() > 0) {
                                q8Var2.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var2.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 2:
                        q8 q8Var3 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var3.getClass();
                                break;
                            } else if (q8Var3.f15914n.b() > 0) {
                                q8Var3.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var3.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 3:
                        q8 q8Var4 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var4.getClass();
                                break;
                            } else if (q8Var4.f15914n.b() > 0) {
                                q8Var4.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var4.f15909h.requestFocus();
                            break;
                        }
                        break;
                    case 4:
                        q8 q8Var5 = this.f15570b;
                        q8Var5.getClass();
                        if (keyEvent.getAction() == 0) {
                            if (i112 != 22) {
                                if (i112 != 21) {
                                    if (i112 != 19) {
                                        if (i112 == 20) {
                                            if (q8Var5.f15914n.b() <= 0) {
                                                q8Var5.f15912k.requestFocus();
                                                break;
                                            } else {
                                                q8Var5.f15913m.requestFocus();
                                                break;
                                            }
                                        }
                                    } else {
                                        q8Var5.f15909h.requestFocus();
                                        break;
                                    }
                                } else {
                                    q8Var5.f15912k.requestFocus();
                                    break;
                                }
                            } else {
                                s1.g.W(333, view);
                                break;
                            }
                        }
                        break;
                    case 5:
                        q8 q8Var6 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var6.getClass();
                                break;
                            } else if (q8Var6.f15914n.b() > 0) {
                                q8Var6.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var6.f15909h.requestFocus();
                            break;
                        }
                        break;
                    default:
                        q8 q8Var7 = this.f15570b;
                        if (i112 != 19) {
                            if (i112 != 20) {
                                q8Var7.getClass();
                                break;
                            } else if (q8Var7.f15914n.b() > 0) {
                                q8Var7.f15913m.requestFocus();
                                break;
                            }
                        } else {
                            q8Var7.f15909h.requestFocus();
                            break;
                        }
                        break;
                }
                return false;
            }
        });
        x9.i3 i3Var = new x9.i3();
        this.f15911j = i3Var;
        i3Var.q(new x9.w3("退出多选", ""));
        this.f15911j.q(new x9.w3("全选", ""));
        this.f15911j.q(new x9.w3("不选", ""));
        this.f15911j.q(new x9.w3("删除", ""));
        this.f15911j.q(new x9.w3("复制", ""));
        this.f15911j.q(new x9.w3("剪切", ""));
        this.f15911j.q(new x9.w3("安装", ""));
        this.f15911j.q(new x9.w3("压缩", ""));
        this.f15911j.q(new x9.w3("文件", ""));
        this.f15911j.q(new x9.w3("应用", ""));
        this.f15909h.setOnItemListener(new p8());
        this.f15911j.f2881e = new d8(this, 0);
        this.f15910i.f2881e = new d8(this, 1);
        this.f15909h.setOnInBorderKeyEventListener(new d8(this, 2));
        this.f15912k.setOnItemListener(new j8());
        this.l.f2881e = new d8(this, 3);
        this.f15912k.setOnInBorderKeyEventListener(new d8(this, 4));
        this.f15913m.setOnItemListener(new k8(this));
        x9.n nVar2 = this.f15914n;
        nVar2.f2881e = new d8(this, 5);
        nVar2.f2882f = new d8(this, 6);
        this.f15913m.setOnInBorderKeyEventListener(new d8(this, 7));
        TvRecyclerView tvRecyclerView4 = (TvRecyclerView) i(R.id.v_tasks_list);
        this.D = tvRecyclerView4;
        tvRecyclerView4.setLayoutManager(new V7LinearLayoutManager(this.f4529e, 0, false));
        x9.l5 l5Var = new x9.l5();
        this.E = l5Var;
        this.D.setAdapter(l5Var);
        this.D.setVisibility(8);
    }

    @Override // da.h
    public final void m() {
        System.gc();
        H();
        try {
            if (this.l.b() > 0) {
                x9.g0 g0Var = this.l;
                x9.w3 w3Var = (x9.w3) g0Var.t(g0Var.b() - 1);
                String str = w3Var.f18365b;
                if (str != null && !str.isEmpty()) {
                    v(w3Var, false);
                }
            } else {
                fa.h0 h0Var = fa.g0.f5682a;
                if (!h0Var.d().isEmpty()) {
                    x9.w3 w3Var2 = new x9.w3("内部存储", h0Var.d(), true);
                    this.l.E(new ArrayList());
                    this.l.q(w3Var2);
                    v(w3Var2, false);
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void o(boolean z) {
        String str;
        if (z) {
            str = new File(((x9.w3) this.L.get(0)).f18365b).getParent() + "/压缩包";
        } else {
            str = this.B.f18365b;
        }
        new ke(this.f4530f, this.f4529e, str, new ha.h2(this, z, 8)).show();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i10, int i11, Intent intent) throws IOException {
        super.onActivityResult(i10, i11, intent);
        if (i10 == 1) {
            return;
        }
        if (i10 == 1001) {
            if (Build.VERSION.SDK_INT < 30 || intent.getData() == null) {
                return;
            }
            requireActivity().getContentResolver().takePersistableUriPermission(intent.getData(), 3);
            return;
        }
        if (i10 != 8000 || intent == null || intent.getData() == null || Build.VERSION.SDK_INT < 19) {
            return;
        }
        com.yunpan.appmanage.util.b0 b0Var = com.yunpan.appmanage.util.a0.f3996a;
        b0Var.f3999b.m(((x9.w3) this.l.t(0)).f18365b, intent.getData().toString());
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(b0Var.f3998a));
            bufferedWriter.write(b0Var.f3999b.toString());
            bufferedWriter.close();
        } catch (IOException e7) {
            e7.printStackTrace();
        }
        intent.getData().toString();
        this.f4529e.getContentResolver().takePersistableUriPermission(intent.getData(), 3);
        Context context = this.f4529e;
        Uri uri = Uri.parse(intent.getData().toString());
        v3.f fVar = null;
        if (Build.VERSION.SDK_INT >= 21) {
            fVar = new v3.f(13, fVar, context, DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri)), false);
        }
        v(new x9.w3(fVar, ((x9.w3) this.l.t(0)).f18365b), false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        SoundPool soundPool = this.P;
        if (soundPool != null) {
            soundPool.release();
            this.P = null;
        }
        super.onDestroy();
        kh.e.b().l(this);
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveEvent(ja.c cVar) {
        int i10 = cVar.f9826a;
        if (i10 == 1 || i10 == -1 || i10 == -2) {
            if (i10 == 1 && fa.g0.f5682a.d().isEmpty()) {
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (com.yunpan.appmanage.util.j.f4033a.f4073v.isEmpty()) {
                    Activity activity = this.f4530f;
                    new ha.z6(activity, activity, "此设备没有内置SD卡，也没有插入U盘、TF卡\n将无法使用【文件管理】【文件下载】等功能", "", "知道了", "", new s5.c(16)).show();
                }
            }
            H();
            return;
        }
        if (i10 == 12) {
            for (int iB = this.f15914n.b() - 1; iB >= 0; iB--) {
                try {
                    if (!new File(((x9.w3) this.f15914n.t(iB)).f18365b).exists()) {
                        this.f15914n.C(iB);
                    }
                } catch (Exception unused) {
                }
            }
            return;
        }
        if (i10 != 8) {
            if (i10 != 9) {
                if (i10 != 10 || ((x9.w3) g.b.d(this.l, 1)).f18365b.isEmpty()) {
                    return;
                }
                if (this.l.b() > 0) {
                    this.f15912k.requestFocus();
                }
                v((x9.w3) g.b.d(this.l, 1), false);
                return;
            }
            this.f15909h.requestFocus();
            this.f15913m.stopScroll();
            this.T.setVisibility(8);
            ArrayList arrayList = cVar.f9829d;
            if (arrayList.isEmpty()) {
                C("无文件", R.drawable.tp_nofile, true);
            } else {
                C(null, 0, false);
            }
            this.l.E(cVar.f9828c);
            this.f15914n.E(arrayList);
            return;
        }
        File file = new File(cVar.f9827b);
        String path = file.getParentFile().getPath();
        String name = file.getName();
        file.getPath();
        if (com.yunpan.appmanage.util.v.f4106a.M) {
            this.P.play(this.R, 1.0f, 1.0f, 0, 0, 1.0f);
        }
        if (this.l.b() == 1 && ((x9.w3) this.l.t(0)).f18364a.contains("搜索结果：安装包") && p000if.a.X(name)) {
            this.f15913m.stopScroll();
            this.f15912k.requestFocus();
            for (int iB2 = this.f15914n.b() - 1; iB2 >= 0; iB2--) {
                if (((x9.w3) this.f15914n.t(iB2)).f18364a.equals(name)) {
                    this.f15914n.C(iB2);
                }
            }
            com.yunpan.appmanage.util.a0.v("接到文件：".concat(name), false);
            this.f15914n.p(0, new x9.w3(file));
            this.f15913m.requestFocus();
            this.f15913m.setSelection(0);
            return;
        }
        if (this.l.b() <= 0 || !((x9.w3) g.b.d(this.l, 1)).f18365b.equals(path)) {
            com.yunpan.appmanage.util.a0.v("接到文件：" + name + "\n传到目录：" + path, false);
            return;
        }
        this.f15913m.stopScroll();
        this.f15912k.requestFocus();
        for (int iB3 = this.f15914n.b() - 1; iB3 >= 0; iB3--) {
            if (((x9.w3) this.f15914n.t(iB3)).f18364a.equals(name)) {
                this.f15914n.C(iB3);
            }
        }
        com.yunpan.appmanage.util.a0.v("接到文件：" + name, false);
        this.f15914n.p(0, new x9.w3(file));
        this.f15913m.requestFocus();
        this.f15913m.setSelection(0);
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(String str) {
        int i10;
        if (!str.equals("放开菜单键") || (i10 = this.M) <= -1 || i10 >= this.f15914n.b()) {
            return;
        }
        D(this.M);
    }

    public final void p(boolean z) {
        this.f15913m.stopScroll();
        this.f15914n.E(new ArrayList());
        C(null, 0, false);
        if (!z) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new x9.w3("收藏栏", "", true));
            this.l.E(arrayList);
        }
        this.f15914n.E(com.yunpan.appmanage.util.v.f4106a.d());
    }

    public final void q(String str) {
        File file = new File(this.B.f18365b);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getParentFile().getPath());
        String str2 = File.separator;
        sb2.append(str2);
        String strL = g.b.l(file.getName().lastIndexOf(".") == -1 ? file.getName() : file.getName().substring(0, file.getName().lastIndexOf(".")), str2, sb2);
        if (com.yunpan.appmanage.util.a0.g(strL)) {
            Toaster.show((CharSequence) "文件夹已存在,请先删除相同命名的文件夹");
        } else {
            (com.yunpan.appmanage.util.v.f4106a.f4140r0 ? new mc.c(0, new ca.a(file, strL, str, new gf.g(13))).d(rc.f.f13757b).a(fc.b.a()) : new mc.c(0, new ca.a(file, strL, str)).d(rc.f.f13757b).a(fc.b.a())).b(new ha.h3(this, 17, strL));
        }
    }

    public final void r(String str) {
        ArrayList arrayList = this.L;
        if (new File(((x9.w3) arrayList.get(0)).f18365b).getParent().equals(str)) {
            com.yunpan.appmanage.util.a0.s("文件本身就在当前目录", false);
            return;
        }
        if (this.K.getText().toString().trim().startsWith("已剪切")) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                x9.w3 w3Var = (x9.w3) it.next();
                if (w3Var.f18366c && str.startsWith(w3Var.f18365b)) {
                    com.yunpan.appmanage.util.a0.s("拒绝此危险操作", false);
                    return;
                }
            }
        }
        this.f15912k.requestFocus();
        g.b.x(this.l, 1, this.f15912k);
        if (!com.yunpan.appmanage.util.v.f4106a.f4135o0) {
            this.I.setVisibility(8);
            this.K.setVisibility(8);
        }
        this.f15908g.c("拷贝中");
        FileCopyBean fileCopyBean = new FileCopyBean();
        fileCopyBean.isDelete = this.K.getText().toString().trim().startsWith("已剪切");
        fileCopyBean.fromDir = new File(((x9.w3) arrayList.get(0)).f18365b).getParent();
        fileCopyBean.fromPaths = arrayList;
        fileCopyBean.toDir = str;
        if (!str.endsWith("/")) {
            fileCopyBean.toDir = g.b.l(fileCopyBean.toDir, "/", new StringBuilder());
        }
        this.f15908g.b("比对中");
        new com.yunpan.appmanage.util.m(0).a(fileCopyBean, new f8(this, fileCopyBean, 0));
    }

    public final void s(FileCopyBean fileCopyBean) {
        ha.s5 s5Var = new ha.s5(this.f4530f, this.f4529e);
        s5Var.show();
        s5Var.f7734h.setText("分析中");
        System.out.getClass();
        w.r3 r3Var = new w.r3();
        r3Var.f17243b = new o8(this, s5Var, fileCopyBean);
        ((ExecutorService) r3Var.f17244c).execute(new a2.c0(r3Var, 15, fileCopyBean));
    }

    public final void t(FileCopyBean fileCopyBean) {
        ha.s5 s5Var = new ha.s5(this.f4530f, this.f4529e);
        s5Var.show();
        s5Var.f7734h.setText("分析中");
        ba.i iVar = new ba.i(1);
        iVar.f2698a = new o8(this, s5Var, fileCopyBean);
        ((ExecutorService) iVar.f2699b).execute(new a2.c0(iVar, 16, fileCopyBean));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void u() throws Exception {
        ec.b gVar;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.f15914n.b(); i10++) {
            x9.w3 w3Var = (x9.w3) this.f15914n.t(i10);
            if (w3Var.f18366c) {
                w3Var.f18374k = i10;
                arrayList.add(w3Var);
            }
        }
        if (arrayList.isEmpty()) {
            Toaster.show((CharSequence) "没有目录无需统计");
            return;
        }
        this.f15908g.c("统计中");
        mc.c cVar = new mc.c(1, arrayList);
        t6 t6Var = new t6(6);
        int i11 = ec.a.f4906a;
        jc.a.b(Integer.MAX_VALUE, "maxConcurrency");
        jc.a.b(i11, "bufferSize");
        if (cVar instanceof kc.b) {
            Object objCall = ((kc.b) cVar).call();
            gVar = objCall == null ? mc.d.f11138a : new mc.n(objCall, t6Var);
        } else {
            gVar = new mc.g(cVar, t6Var, i11, 0);
        }
        gVar.d(rc.f.f13757b).a(fc.b.a()).b(new h8(this));
    }

    public final void v(x9.w3 w3Var, boolean z) {
        this.f15913m.stopScroll();
        this.f15914n.E(new ArrayList());
        this.T.setVisibility(0);
        C(null, 0, false);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        new mc.c(0, new y7(z, w3Var, arrayList, arrayList2, 0)).d(rc.f.f13757b).a(fc.b.a()).b(new q1(this, w3Var, arrayList, arrayList2, 1));
    }

    public final void x() {
        int iB = this.E.b();
        boolean z = true;
        for (int i10 = 0; iB > i10; i10++) {
            try {
                String str = ((x9.m5) this.E.t(i10)).f18280c;
                if (!str.equals("完成") && !str.equals("失败")) {
                    z = false;
                }
            } catch (Exception unused) {
                return;
            }
        }
        if (z) {
            this.E.E(new ArrayList());
            this.D.setVisibility(8);
        }
    }

    public final void y() {
        this.f15915p = false;
        for (int i10 = 0; i10 < this.f15914n.b(); i10++) {
            x9.w3 w3Var = (x9.w3) this.f15914n.t(i10);
            if (w3Var.f18372i) {
                w3Var.f18372i = false;
                this.f15914n.D(i10, w3Var);
            }
        }
        this.f15916q.setVisibility(0);
        this.f15912k.requestFocus();
        this.f15909h.setAdapter(this.f15910i);
    }

    public final void z(String str) {
        ud udVar = new ud(this.f4530f, this.f4529e);
        i8 i8Var = new i8(this, 0, str);
        udVar.show();
        udVar.f7888t = i8Var;
        udVar.f7880i = str;
        udVar.f7878g.setText("传送到指定目录");
        udVar.f7881j.q(new x9.w3("根目录", ""));
        udVar.a();
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(ja.e eVar) {
        if (!eVar.f9830a.isEmpty()) {
            int i10 = 0;
            while (true) {
                if (i10 >= this.f15914n.b()) {
                    break;
                }
                if (eVar.f9830a.equals(((x9.w3) this.f15914n.t(i10)).f18365b)) {
                    if (this.f15914n.b() == 1) {
                        this.f15912k.requestFocus();
                    }
                    this.f15914n.C(i10);
                } else {
                    i10++;
                }
            }
        }
        x9.w3 w3Var = eVar.f9831b;
        if (w3Var != null) {
            this.f15914n.q(w3Var);
            this.f15913m.setSelectionWithSmooth(this.f15914n.b() - 1);
            if (this.f15914n.b() == 1) {
                this.f15913m.requestFocus();
            }
        }
        String str = eVar.f9832c;
        if (str.isEmpty()) {
            return;
        }
        for (int i11 = 0; i11 < this.f15914n.b(); i11++) {
            if (str.equals(((x9.w3) this.f15914n.t(i11)).f18365b)) {
                this.f15914n.e(i11);
                return;
            }
        }
    }
}

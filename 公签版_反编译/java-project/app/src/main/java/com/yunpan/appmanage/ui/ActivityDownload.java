package com.yunpan.appmanage.ui;

import android.content.Context;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.u0;
import ba.q;
import ba.r;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.carsdk.u;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.f0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import fa.g0;
import fa.h0;
import g.b;
import ha.c0;
import ha.o1;
import ha.s2;
import ha.z6;
import java.io.File;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kh.e;
import l9.a;
import mc.c;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.greenrobot.eventbus.ThreadMode;
import rc.f;
import ua.i1;
import ua.n1;
import ua.p1;
import ua.q1;
import ua.s1;
import ua.u1;
import ua.v1;
import x9.b6;
import x9.j2;
import x9.n5;
import x9.p5;
import x9.t0;
import x9.t5;
import x9.u5;

/* loaded from: classes.dex */
public class ActivityDownload extends g {
    public static final /* synthetic */ int P0 = 0;
    public TvRecyclerView C;
    public TvRecyclerView D;
    public TvRecyclerView E;
    public TvRecyclerView F;
    public ConstraintLayout G;
    public EditText H;
    public ConstraintLayout I;
    public ImageView K;
    public TextView L;
    public ConstraintLayout M;
    public ExecutorService M0;
    public TvRecyclerView N;
    public o1 N0;
    public TextView O;
    public ConstraintLayout P;
    public q R;
    public p5 S;
    public t0 T;
    public t5 V;
    public j2 X;

    /* renamed from: t0, reason: collision with root package name */
    public ExecutorService f3973t0;
    public n5 Y = null;
    public n5 Z = null;

    /* renamed from: h0, reason: collision with root package name */
    public boolean f3972h0 = false;
    public final u O0 = new u(this, Looper.getMainLooper(), 17);

    public static String x(ActivityDownload activityDownload, boolean z) {
        activityDownload.getClass();
        String path = "";
        if (z) {
            h0 h0Var = g0.f5682a;
            if (!h0Var.d().isEmpty()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(h0Var.d());
                sb2.append("/.");
                DecimalFormat decimalFormat = k.f4034u0;
                path = b.l(j.f4033a.f4041d, "/cache", sb2);
                try {
                    new File(path).mkdirs();
                    new File(path).mkdir();
                } catch (Exception unused) {
                }
            }
            if (path.isEmpty()) {
                try {
                    DecimalFormat decimalFormat2 = k.f4034u0;
                    Iterator it = j.f4033a.f4073v.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (a0.g(str) && a0.d(str)) {
                            path = str + "/Download";
                            new File(path).mkdir();
                        }
                    }
                } catch (Exception unused2) {
                }
            }
            if (path.isEmpty()) {
                path = activityDownload.A.getCacheDir().getPath();
            }
        } else {
            h0 h0Var2 = g0.f5682a;
            if (h0Var2.d().isEmpty()) {
                DecimalFormat decimalFormat3 = k.f4034u0;
                Iterator it2 = j.f4033a.f4073v.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    String str2 = (String) it2.next();
                    if (a0.d(str2)) {
                        path = b.j(str2, "/Download");
                        new File(path).mkdir();
                        break;
                    }
                }
                if (path.isEmpty()) {
                    path = activityDownload.A.getCacheDir().getPath();
                }
            } else {
                path = b.g(h0Var2, new StringBuilder(), "/Download");
                new File(path).mkdir();
            }
        }
        return b.j(path, "/");
    }

    public static void y(ActivityDownload activityDownload, u5 u5Var) {
        activityDownload.getClass();
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = u5Var;
        activityDownload.O0.sendMessage(messageObtain);
    }

    public static ResponseBody z(String str, String str2) {
        Response responseA;
        int i10 = 0;
        ResponseBody responseBodyBody = null;
        do {
            i10++;
            if (i10 != 1) {
                if (i10 != 2) {
                    break;
                }
                f0.f4019a.f11674b = HttpUrl.get(f0.a(1));
            } else {
                f0.f4019a.f11674b = null;
            }
            try {
                a aVar = new a(str);
                aVar.f11017i.b("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76");
                aVar.f11017i.b("Accept-Language", "zh-CN,zh;q=0.9,en;q=0.8");
                if (str2 != null && !str2.isEmpty()) {
                    aVar.g("Referer", str2);
                }
                responseA = aVar.a();
            } catch (Exception unused) {
            }
            if (responseA.isSuccessful() && (responseBodyBody = responseA.body()) != null) {
                if (!responseBodyBody.contentType().type().equals("text")) {
                    return responseBodyBody;
                }
                PrintStream printStream = System.out;
                responseBodyBody.string();
                printStream.getClass();
                responseBodyBody = null;
            }
        } while (responseBodyBody == null);
        throw new Exception("下载失败");
    }

    public final void A(int i10) {
        this.C.setSelection(i10);
        r rVar = (r) this.R.t(i10);
        this.P.setVisibility(0);
        new c(0, new ua.o1(rVar, 1)).d(f.f13757b).a(fc.b.a()).b(new s2(i10, 4, this));
    }

    public final void B() {
        this.I.setVisibility(8);
        this.M.setVisibility(8);
        this.O.setVisibility(8);
    }

    public final void C() {
        boolean z = true;
        for (u5 u5Var : this.V.v()) {
            if (u5Var.f18346c.startsWith("下载中") || u5Var.f18346c.startsWith("安装中") || u5Var.f18346c.startsWith("等待下载")) {
                z = false;
            }
        }
        if (z) {
            finish();
        } else {
            new z6(this, this.A, "还有任务未完成，是否停止", "", "确定", "取消", new i1(1, this)).show();
        }
    }

    public final void D() {
        String strSubstring;
        String strSubstring2;
        B();
        String string = this.H.getText().toString();
        if (!string.contains("http://") && !string.contains("https://")) {
            a0.z("请输入正确的分享地址", false);
            return;
        }
        String strSubstring3 = string.substring(string.indexOf("http"));
        if (strSubstring3.contains(".123pan.com")) {
            strSubstring3 = strSubstring3.replace(".123pan.com", ".123pan.cn");
        }
        String str = strSubstring3;
        int iIndexOf = str.indexOf("#");
        if (iIndexOf != -1) {
            strSubstring = str.substring(iIndexOf + 1);
            if (strSubstring.contains("#")) {
                iIndexOf = str.lastIndexOf("#");
                strSubstring = str.substring(iIndexOf + 1);
            }
            strSubstring2 = str.substring(0, iIndexOf);
        } else {
            strSubstring = "";
            strSubstring2 = str;
        }
        r rVar = new r("分享页", strSubstring2, strSubstring);
        this.D.setHasMoreData(false);
        this.G.setVisibility(8);
        this.R.E(new ArrayList());
        this.S.E(new ArrayList());
        new c(0, new com.hjq.permissions.b(this, rVar, str, 12)).d(f.f13757b).a(fc.b.a()).b(new q1(this, str, string, rVar, 0));
    }

    public final void E(String str, b6 b6Var) {
        new z6(this, this.A, "请确认是否下载此文件？", null, "下载文件", (p000if.a.X(str) || p000if.a.k0(str)) ? "直接安装" : null, new s4.a(this, str, b6Var)).show();
    }

    public final void F() {
        this.I.setVisibility(0);
        TextView textView = this.L;
        StringBuilder sb2 = new StringBuilder("浏览器：");
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        sb2.append(kVar.f4052i0);
        sb2.append(":");
        sb2.append(kVar.f4054j0);
        sb2.append("/url.html");
        textView.setText(sb2.toString());
        if (new File(this.A.getFilesDir().getPath() + "/qrCode_url").exists()) {
            this.K.setImageURI(Uri.parse("file://" + this.A.getFilesDir().getPath() + "/qrCode_url"));
        }
    }

    public final void G(b6 b6Var) {
        r rVar = (r) this.R.t(r0.b() - 1);
        this.P.setVisibility(0);
        new c(0, new ma.b(b6Var, 11, rVar)).d(f.f13757b).a(fc.b.a()).b(new ka.c(15, this));
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        DecimalFormat decimalFormat = k.f4034u0;
        j.f4033a.f4045f = false;
        this.f3972h0 = true;
        this.f3973t0.shutdown();
        e.b().l(this);
        this.O0.removeMessages(1);
        super.onDestroy();
    }

    @kh.j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(ja.a aVar) {
        int i10 = aVar.f9813a;
        Object obj = aVar.f9814b;
        if (i10 == 1) {
            this.H.setText((String) obj);
            EditText editText = this.H;
            editText.setSelection(editText.getText().length());
            this.E.setSelection(0);
            this.E.requestFocus();
            this.I.setVisibility(8);
            D();
            return;
        }
        if (i10 != 10 || isFinishing() || isDestroyed() || getWindow() == null || getWindow().getDecorView().getWindowVisibility() != 0) {
            return;
        }
        o1 o1Var = this.N0;
        if (o1Var != null && o1Var.isShowing()) {
            this.N0.dismiss();
            this.N0 = null;
        }
        o1 o1Var2 = new o1(this, this, (String) obj);
        this.N0 = o1Var2;
        o1Var2.show();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_download;
    }

    @Override // da.g
    public final void u() {
        int i10 = 9;
        int i11 = 8;
        DecimalFormat decimalFormat = k.f4034u0;
        j.f4033a.f4045f = true;
        this.f3973t0 = Executors.newFixedThreadPool(2);
        this.M0 = Executors.newFixedThreadPool(1);
        this.C = (TvRecyclerView) findViewById(R.id.v_list_path);
        this.D = (TvRecyclerView) findViewById(R.id.v_list_file);
        this.E = (TvRecyclerView) findViewById(R.id.v_list_gn);
        this.F = (TvRecyclerView) findViewById(R.id.v_list_down);
        this.H = (EditText) findViewById(R.id.v_url);
        this.I = (ConstraintLayout) findViewById(R.id.v_lay_qrcode);
        this.K = (ImageView) findViewById(R.id.v_image_qrCode);
        this.L = (TextView) findViewById(R.id.v_qrcode_ip);
        this.M = (ConstraintLayout) findViewById(R.id.v_lay_history);
        this.N = (TvRecyclerView) findViewById(R.id.v_list_history);
        this.O = (TextView) findViewById(R.id.v_help);
        this.P = (ConstraintLayout) findViewById(R.id.v_loading);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_lay_load_more);
        this.G = constraintLayout;
        constraintLayout.setVisibility(8);
        this.I.setVisibility(8);
        this.M.setVisibility(8);
        this.O.setVisibility(8);
        this.P.setVisibility(8);
        this.H.setOnKeyListener(new c0(this, i10));
        this.T = new t0(0);
        this.E.setLayoutManager(new V7GridLayoutManager(this.A, 6));
        this.E.setAdapter(this.T);
        this.T.q(new NameIcoTypeBean(R.drawable.tp_open2, "打开", 1));
        this.T.q(new NameIcoTypeBean(R.drawable.tp_ls1, "历史", 1));
        this.T.q(new NameIcoTypeBean(R.drawable.tp_sm1, "扫码", 1));
        this.T.q(new NameIcoTypeBean(R.drawable.share3, "推送", 1));
        this.T.q(new NameIcoTypeBean(R.drawable.fankui2, "说明", 1));
        this.T.q(new NameIcoTypeBean(R.drawable.tp_fh1, "返回", 1));
        this.E.setSelection(0);
        this.T.f2881e = new n1(this, 3);
        this.E.setOnItemListener(new s1(this));
        this.E.setOnInBorderKeyEventListener(new n1(this, 4));
        this.R = new q();
        this.C.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        this.C.setAdapter(this.R);
        this.R.f2881e = new n1(this, 2);
        this.S = new p5();
        this.D.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        this.D.setAdapter(this.S);
        this.D.setFocusableInTouchMode(true);
        this.D.setLoadMoreBeforehandCount(3);
        this.D.setOnLoadMoreListener(new n1(this, 10));
        this.S.f2881e = new n1(this, 0);
        this.D.setOnItemListener(new u1());
        this.D.setOnInBorderKeyEventListener(new n1(this, 1));
        this.V = new t5();
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_down);
        this.F = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        this.F.setAdapter(this.V);
        this.V.f2881e = new n1(this, 5);
        this.F.setOnItemListener(new v1());
        this.F.setOnInBorderKeyEventListener(new n1(this, 6));
        this.X = new j2();
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list_history);
        this.N = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        this.N.setAdapter(this.X);
        ArrayList arrayListE = com.yunpan.appmanage.util.c0.f4002a.e();
        if (!arrayListE.isEmpty()) {
            this.H.setText((CharSequence) ta.q.h(1, arrayListE));
            EditText editText = this.H;
            editText.setSelection(editText.getText().length());
            int size = arrayListE.size();
            for (int i12 = size - 1; i12 >= 0; i12--) {
                if (size <= 50 || i12 >= size - 50) {
                    this.X.q((String) arrayListE.get(i12));
                } else {
                    com.yunpan.appmanage.util.c0.f4002a.b(i12);
                }
            }
        }
        j2 j2Var = this.X;
        j2Var.f2881e = new n1(this, 7);
        j2Var.f2882f = new n1(this, i11);
        this.N.setOnItemListener(new p1());
        this.N.setOnInBorderKeyEventListener(new n1(this, i10));
        if (!e.b().e(this)) {
            e.b().j(this);
        }
        a().a(this, new u0(this));
    }
}

package com.yunpan.appmanage.ui;

import a2.w0;
import android.provider.Settings;
import android.util.Base64;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import da.g;
import fa.b0;
import g.b;
import ha.a3;
import ha.u9;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import mc.c;
import rc.f;
import ua.g1;
import ua.z3;
import x9.k3;
import x9.l3;

/* loaded from: classes.dex */
public class ActivityNezha extends g {
    public static final /* synthetic */ int F = 0;
    public TvRecyclerView C;
    public k3 D;
    public u9 E;

    public static boolean y() {
        String str = "0000000000000000" + v.f4106a.U + new SimpleDateFormat("yyyyMMdd", Locale.getDefault()).format(new Date());
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec("ASDFGHJKLASDFGHI".getBytes(HTTP.UTF_8), "AES");
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS7Padding");
            cipher.init(1, secretKeySpec);
            String strTrim = Base64.encodeToString(cipher.doFinal(str.getBytes(HTTP.UTF_8)), 0).trim();
            if (strTrim.length() < 9) {
                throw new Exception("生成密码错误");
            }
            System.out.getClass();
            String strSubstring = strTrim.substring(strTrim.length() - 9);
            DecimalFormat decimalFormat = k.f4034u0;
            if (Settings.Global.putString(j.f4033a.f4035a.getContentResolver(), "dev_adb_auth_passwd", strSubstring)) {
                return true;
            }
            throw new Exception("设置失败");
        } catch (Exception e7) {
            e7.printStackTrace();
            return false;
        }
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_laboratory;
    }

    @Override // da.g
    public final void u() {
        this.A.getContentResolver();
        ((TextView) findViewById(R.id.v_title)).setText("哪吒车机专用功能");
        this.E = new u9(this, this.A);
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 19));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
        k3 k3Var = new k3();
        this.D = k3Var;
        b.p(R.drawable.tp_wifi1, "临时开启无线ADB", k3Var);
        b.p(R.drawable.tp_root6, "adb提权(将adb临时提升为root权限)", this.D);
        b.p(R.drawable.tp_dp2, "(主屏)系统桌面管理-1.2  哪吒S、GT", this.D);
        b.p(R.drawable.root2, "adb提权(挂载系统目录获取写入权限)", this.D);
        b.p(R.drawable.tp_dp2, "(主屏)系统桌面管理-1.3  哪吒L", this.D);
        b.p(R.drawable.tp_dp2, "(哪吒X)系统应用中心管理", this.D);
        b.p(R.drawable.tp_apk2, "安装应用到主屏", this.D);
        b.p(R.drawable.tp_apk2, "安装应用到副屏", this.D);
        this.D.q(new l3(v.f4106a.U.isEmpty() ? R.drawable.tp_check2 : R.drawable.tp_check1, "自动解除安装限制(哪吒U、V、AYA)"));
        this.C.setAdapter(this.D);
        this.D.f2881e = new ph.j(26, this);
    }

    public final void x(boolean z) {
        b0.f5652a.getClass();
        if (!w0.Q()) {
            Toaster.show((CharSequence) "请先连接adb");
            return;
        }
        ArrayList arrayList = new ArrayList();
        new c(0, new a3(5, arrayList)).d(f.f13757b).a(fc.b.a()).b(new z3(0, this, arrayList, z));
    }
}

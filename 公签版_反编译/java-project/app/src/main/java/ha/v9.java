package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.view.MyProgressViewTest;
import java.text.DecimalFormat;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class v9 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TextView f7933g;

    /* renamed from: h, reason: collision with root package name */
    public TextView f7934h;

    /* renamed from: i, reason: collision with root package name */
    public TextView f7935i;

    /* renamed from: j, reason: collision with root package name */
    public TextView f7936j;

    /* renamed from: k, reason: collision with root package name */
    public TextView f7937k;
    public TextView l;

    /* renamed from: m, reason: collision with root package name */
    public MyProgressViewTest f7938m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f7939n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f7940p;

    /* renamed from: q, reason: collision with root package name */
    public FtpCopyProgressBean f7941q;
    public long r;

    /* renamed from: s, reason: collision with root package name */
    public long f7942s;

    /* renamed from: t, reason: collision with root package name */
    public final long f7943t;

    /* renamed from: v, reason: collision with root package name */
    public String f7944v;

    /* renamed from: w, reason: collision with root package name */
    public lc.a f7945w;

    public v9(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_loading2, false);
        this.r = 0L;
        this.f7942s = 0L;
        this.f7943t = System.currentTimeMillis();
        this.f7944v = "0";
    }

    public static String a(long j10, long j11, long j12) {
        double d10 = j11 - j10;
        Double.isNaN(d10);
        double d11 = j12;
        Double.isNaN(d11);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        return com.yunpan.appmanage.util.k.f4034u0.format(((d10 / 1024.0d) / 1024.0d) / (d11 / 1000.0d));
    }

    public static String b(long j10) {
        return String.format("%02d:%02d:%02d", Integer.valueOf((int) (j10 / 3600000)), Integer.valueOf((int) ((j10 % 3600000) / 60000)), Integer.valueOf((int) ((j10 % 60000) / 1000)));
    }

    public final void c(String str, FtpCopyProgressBean ftpCopyProgressBean) {
        show();
        this.f7933g.setText(str);
        this.f7941q = ftpCopyProgressBean;
        this.f7942s = System.currentTimeMillis();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ec.j jVar = rc.f.f13756a;
        jc.a.a(timeUnit, "unit is null");
        jc.a.a(jVar, "scheduler is null");
        mc.g gVarA = new mc.j(Math.max(0L, 300L), Math.max(0L, 300L), timeUnit, jVar).d(rc.f.f13757b).a(fc.b.a());
        lc.a aVar = new lc.a(new p7(4, this));
        gVarA.b(aVar);
        this.f7945w = aVar;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        lc.a aVar = this.f7945w;
        aVar.getClass();
        ic.a.b(aVar);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_title);
        this.f7933g = textView;
        textView.setText("");
        TextView textView2 = (TextView) findViewById(R.id.v_bfb);
        this.f7934h = textView2;
        textView2.setText("");
        TextView textView3 = (TextView) findViewById(R.id.v_str1);
        this.f7935i = textView3;
        textView3.setText("");
        TextView textView4 = (TextView) findViewById(R.id.v_str2);
        this.f7936j = textView4;
        textView4.setText("");
        TextView textView5 = (TextView) findViewById(R.id.v_str_size);
        this.f7937k = textView5;
        textView5.setText("");
        TextView textView6 = (TextView) findViewById(R.id.v_str_speed);
        this.l = textView6;
        textView6.setText("");
        MyProgressViewTest myProgressViewTest = (MyProgressViewTest) findViewById(R.id.v_progress);
        this.f7938m = myProgressViewTest;
        myProgressViewTest.setMaxCount(100.0f);
        TextView textView7 = (TextView) findViewById(R.id.v_str_progress);
        this.f7939n = textView7;
        textView7.setText("");
        TextView textView8 = (TextView) findViewById(R.id.v_str_time);
        this.f7940p = textView8;
        textView8.setText("");
        ((TextView) findViewById(R.id.v_btn_cancel)).setOnClickListener(new g9(2, this));
    }
}

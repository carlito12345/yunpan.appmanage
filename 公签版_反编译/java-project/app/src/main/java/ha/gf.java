package ha;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import com.hjq.toast.Toaster;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import java.io.File;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes.dex */
public final class gf extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7125g;

    /* renamed from: h, reason: collision with root package name */
    public x9.s3 f7126h;

    /* renamed from: i, reason: collision with root package name */
    public String f7127i;

    /* renamed from: j, reason: collision with root package name */
    public String f7128j;

    public gf(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_wp_open);
        this.f7127i = "";
        this.f7128j = "";
    }

    public final void a(String str) {
        show();
        this.f7127i = str;
        int iLastIndexOf = str.lastIndexOf(".");
        String lowerCase = iLastIndexOf > 0 ? str.substring(iLastIndexOf).toLowerCase(Locale.getDefault()) : "";
        HashMap mapA = com.yunpan.appmanage.util.y.a();
        if (!lowerCase.isEmpty() && mapA.keySet().contains(lowerCase)) {
            this.f7128j = (String) mapA.get(lowerCase);
        }
        if (this.f7128j.isEmpty()) {
            if (p000if.a.j0(str)) {
                this.f7128j = "video/*";
            } else if (p000if.a.f0(str)) {
                this.f7128j = "audio/*";
            }
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File("/sss.mp4")), this.f7128j);
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        for (ResolveInfo resolveInfo : com.yunpan.appmanage.util.j.f4033a.f4035a.getPackageManager().queryIntentActivities(intent, 0)) {
            x9.s3 s3Var = this.f7126h;
            Drawable drawableLoadIcon = resolveInfo.loadIcon(AppStart.f3772h.getPackageManager());
            String string = resolveInfo.activityInfo.loadLabel(AppStart.f3772h.getPackageManager()).toString();
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            s3Var.q(new x9.t3(drawableLoadIcon, string, activityInfo.packageName, activityInfo.name));
        }
        int iB = this.f7126h.b();
        Context context = this.f6725b;
        if (iB < 7) {
            this.f7125g.setLayoutManager(new V7GridLayoutManager(context, this.f7126h.b()));
        } else if (this.f7126h.b() > 10 || this.f7126h.b() / 6 == 0) {
            this.f7125g.setLayoutManager(new V7GridLayoutManager(context, 6));
        } else if (this.f7126h.b() / 5 == 0) {
            this.f7125g.setLayoutManager(new V7GridLayoutManager(context, 5));
        } else {
            this.f7125g.setLayoutManager(new V7GridLayoutManager(context, 4));
        }
        if (this.f7126h.b() == 0) {
            Toaster.show((CharSequence) "找不到适合播放此协议的播放器");
            dismiss();
        } else {
            this.f7125g.setSelection(0);
            this.f7125g.requestFocus();
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f7125g = (TvRecyclerView) findViewById(R.id.v_list);
        x9.s3 s3Var = new x9.s3(getContext());
        this.f7126h = s3Var;
        this.f7125g.setAdapter(s3Var);
        this.f7126h.f2881e = new p7(27, this);
    }
}

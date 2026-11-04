package ha;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.KeyEvent;
import android.widget.ImageView;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.bean.FtpCopyProgressBean;
import com.yunpan.appmanage.bean.WpPathBean;
import java.io.File;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ze extends l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8179b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f8180c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f8181d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f8182e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ze(KeyEvent.Callback callback, Object obj, Object obj2, int i10) {
        super(28);
        this.f8179b = i10;
        this.f8180c = callback;
        this.f8181d = obj;
        this.f8182e = obj2;
    }

    @Override // ha.l2, ec.e
    public void B(Throwable th2) {
        switch (this.f8179b) {
            case 0:
                com.yunpan.appmanage.util.a0.s("" + th2.getMessage(), false);
                ((bf) this.f8182e).dismiss();
                break;
            case 1:
                com.yunpan.appmanage.util.a0.s("" + th2.getMessage(), false);
                ((bf) this.f8182e).dismiss();
                break;
            case 4:
                ((v9) this.f8180c).dismiss();
                String str = "" + th2.getMessage();
                if (((FtpCopyProgressBean) this.f8181d).isStop) {
                    str = "主动停止任务";
                }
                com.yunpan.appmanage.util.a0.t(str);
                break;
            case 5:
                com.yunpan.appmanage.util.a0.y("获取获取描述");
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void E(Object obj) {
        int i10;
        int i11 = 8;
        int i12 = 1;
        Object obj2 = this.f8180c;
        Object obj3 = this.f8182e;
        int i13 = 0;
        Object obj4 = this.f8181d;
        switch (this.f8179b) {
            case 0:
                if (obj != null) {
                    TextView textView = (TextView) obj4;
                    if (!(obj instanceof String)) {
                        if ((obj instanceof Integer) && ((Integer) obj).intValue() == 1) {
                            textView.setVisibility(0);
                            textView.setText("已扫码，待确认");
                            break;
                        }
                    } else {
                        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                        Context context = ((bf) obj3).f6725b;
                        kVar.getClass();
                        int iD = com.yunpan.appmanage.util.k.d(context, 200);
                        ((ImageView) obj2).setImageBitmap(a9.o.J(iD, iD, (String) obj));
                        textView.setText("请扫码");
                        textView.setVisibility(8);
                        break;
                    }
                }
                break;
            case 1:
                if (obj != null) {
                    TextView textView2 = (TextView) obj4;
                    if (!(obj instanceof String)) {
                        if ((obj instanceof Integer) && ((Integer) obj).intValue() == 1) {
                            textView2.setVisibility(0);
                            textView2.setText("已扫码，待确认");
                            break;
                        }
                    } else {
                        DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                        com.yunpan.appmanage.util.k kVar2 = com.yunpan.appmanage.util.j.f4033a;
                        Context context2 = ((bf) obj3).f6725b;
                        kVar2.getClass();
                        int iD2 = com.yunpan.appmanage.util.k.d(context2, 200);
                        ((ImageView) obj2).setImageBitmap(a9.o.J(iD2, iD2, (String) obj));
                        textView2.setText("请扫码");
                        textView2.setVisibility(8);
                        break;
                    }
                }
                break;
            case 3:
                String strValueOf = String.valueOf(obj);
                if (!strValueOf.endsWith(".gj")) {
                    com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
                    int i14 = wVar.T;
                    if (i14 != 2 && i14 != 3) {
                        Context context3 = (Context) obj4;
                        u9 u9Var = (u9) obj3;
                        if (!wVar.f4152y) {
                            a2.w0 w0Var = fa.b0.f5652a;
                            w0Var.getClass();
                            if (a2.w0.Q()) {
                                u9Var.c("安装中");
                                w0Var.f348d = new com.hjq.permissions.b(u9Var, strValueOf, context3, i11);
                                u9.d.f15554a.execute(new fa.u(w0Var, strValueOf, 1));
                                break;
                            }
                        }
                        if (wVar.f4112c0 != 0) {
                            com.bumptech.glide.c.I(context3, strValueOf);
                            break;
                        } else {
                            u9Var.c("安装中");
                            ma.h.f11033a.c(strValueOf, new ma.c(u9Var, 0));
                            break;
                        }
                    } else {
                        new mc.c(i13, new ma.b(this, i13, strValueOf)).d(rc.f.f13757b).a(fc.b.a()).b(new ma.d(this, i12));
                        break;
                    }
                } else {
                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                    if (!com.yunpan.appmanage.util.j.f4033a.f4058m) {
                        new z6((Activity) obj2, (Context) obj4, "安装此应用需要有root系统写入权，否则无法安装", "", "好的", "", null);
                        break;
                    } else {
                        new mc.c(i13, new ma.a(new File(strValueOf), i13)).d(rc.f.f13757b).a(fc.b.a()).b(new ma.d(this, i13));
                        break;
                    }
                }
            case 5:
                ua.i9 i9Var = (ua.i9) obj3;
                f7 f7Var = new f7(i9Var.f4530f, i9Var.f4529e);
                com.hjq.permissions.b bVar = new com.hjq.permissions.b(this, (x9.n5) obj2, (WpPathBean) obj4, 17);
                f7Var.show();
                f7Var.f7030k = bVar;
                f7Var.f7028i.setText("修改描述");
                f7Var.f7027h.setText((String) obj);
                f7Var.f7027h.setHint("描述(可留空，建议160字数以内)");
                break;
            case 6:
                x9.f0 f0Var = (x9.f0) obj3;
                com.bumptech.glide.p pVarF = com.bumptech.glide.b.f(f0Var.f18226h);
                ImageView imageView = (ImageView) obj2;
                pVarF.getClass();
                pVarF.o(new com.bumptech.glide.n(imageView));
                com.bumptech.glide.m mVarU = com.bumptech.glide.b.f(f0Var.f18226h).u("file://" + obj);
                DecimalFormat decimalFormat4 = com.yunpan.appmanage.util.k.f4034u0;
                int i15 = com.yunpan.appmanage.util.j.f4033a.R;
                ((com.bumptech.glide.m) mVarU.o(i15, i15)).D(imageView);
                ((ImageView) obj4).setImageDrawable(null);
                break;
            case 7:
                DecimalFormat decimalFormat5 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar3 = com.yunpan.appmanage.util.j.f4033a;
                int i16 = kVar3.R;
                int i17 = com.yunpan.appmanage.util.v.f4106a.f4118f0;
                if (i17 == 3 || i17 == 5) {
                    i16 = kVar3.S;
                    i10 = kVar3.T;
                } else {
                    i10 = i16;
                }
                x9.n nVar = (x9.n) obj3;
                com.bumptech.glide.p pVarF2 = com.bumptech.glide.b.f(nVar.f18284j);
                ImageView imageView2 = (ImageView) obj2;
                pVarF2.getClass();
                pVarF2.o(new com.bumptech.glide.n(imageView2));
                ((com.bumptech.glide.m) com.bumptech.glide.b.f(nVar.f18284j).u("file://" + obj).o(i16, i10)).D(imageView2);
                ((ImageView) obj4).setImageDrawable(null);
                break;
            case 8:
                x9.f2 f2Var = (x9.f2) obj3;
                com.bumptech.glide.p pVarF3 = com.bumptech.glide.b.f(f2Var.f18227h);
                ImageView imageView3 = (ImageView) obj2;
                pVarF3.getClass();
                pVarF3.o(new com.bumptech.glide.n(imageView3));
                com.bumptech.glide.m mVarU2 = com.bumptech.glide.b.f(f2Var.f18227h).u("file://" + obj);
                DecimalFormat decimalFormat6 = com.yunpan.appmanage.util.k.f4034u0;
                int i18 = com.yunpan.appmanage.util.j.f4033a.R;
                ((com.bumptech.glide.m) mVarU2.o(i18, i18)).D(imageView3);
                ((ImageView) obj4).setImageDrawable(null);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public void onComplete() {
        Object obj = this.f8181d;
        Object obj2 = this.f8180c;
        Object obj3 = this.f8182e;
        switch (this.f8179b) {
            case 0:
                bf bfVar = (bf) obj3;
                bfVar.dismiss();
                com.yunpan.appmanage.util.a0.v("登录成功", true);
                ((af) bfVar.f6830j).c();
                break;
            case 1:
                bf bfVar2 = (bf) obj3;
                bfVar2.dismiss();
                com.yunpan.appmanage.util.a0.v("登录成功", true);
                ((cf) bfVar2.f6830j).c();
                break;
            case 2:
                gf gfVar = (gf) obj3;
                DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                if (com.yunpan.appmanage.util.j.f4033a.I == null) {
                    Toaster.show((CharSequence) "无法连接smb，请稍后再试");
                    break;
                } else {
                    try {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.addCategory("android.intent.category.DEFAULT");
                        intent.setFlags(67108864);
                        intent.setDataAndType(Uri.parse(gfVar.f7127i), gfVar.f7128j);
                        intent.setComponent(new ComponentName((String) obj2, (String) obj));
                        gfVar.f6725b.startActivity(intent);
                        break;
                    } catch (Exception unused) {
                        Toaster.show((CharSequence) "无法调用第三方打开");
                        return;
                    }
                }
            case 4:
                ((v9) obj2).dismiss();
                FtpCopyProgressBean ftpCopyProgressBean = (FtpCopyProgressBean) obj;
                if (ftpCopyProgressBean.isStop) {
                    Toaster.show((CharSequence) "主动停止任务");
                    break;
                } else if (ftpCopyProgressBean.failurePaths.size() > 0) {
                    ArrayList arrayList = new ArrayList();
                    for (WpPathBean wpPathBean : ftpCopyProgressBean.failurePaths) {
                        x9.w3 w3Var = new x9.w3(wpPathBean.name, wpPathBean.path);
                        w3Var.f18373j = wpPathBean.errorStr;
                        arrayList.add(w3Var);
                    }
                    ua.i9 i9Var = (ua.i9) obj3;
                    new r5(i9Var.f4530f, i9Var.f4529e, arrayList).show();
                    break;
                } else {
                    Toaster.show((CharSequence) "拷贝成功");
                    break;
                }
            case 9:
                ImageView imageView = (ImageView) obj2;
                if (imageView.getTag().equals(((WpPathBean) obj).path)) {
                    imageView.setImageURI(Uri.parse((String) obj3));
                    break;
                }
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ze(Object obj, Object obj2, Object obj3, int i10) {
        super(28);
        this.f8179b = i10;
        this.f8182e = obj;
        this.f8180c = obj2;
        this.f8181d = obj3;
    }
}

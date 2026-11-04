package sa;

import a2.w0;
import a9.o;
import android.content.Intent;
import android.os.Build;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.ui.ActivityGjDiy;
import com.yunpan.appmanage.util.a0;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.w;
import fa.b0;
import fa.x;
import ha.l2;
import java.io.File;
import java.text.DecimalFormat;
import ma.h;
import ma.l;

/* loaded from: classes.dex */
public final class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14460a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14461b;

    public /* synthetic */ a(String str, int i10) {
        this.f14460a = i10;
        this.f14461b = str;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException {
        String strX = this.f14461b;
        switch (this.f14460a) {
            case 0:
                try {
                    Intent leanbackLaunchIntentForPackage = Build.VERSION.SDK_INT >= 21 ? AppStart.f3772h.getPackageManager().getLeanbackLaunchIntentForPackage(strX) : null;
                    if (leanbackLaunchIntentForPackage == null) {
                        leanbackLaunchIntentForPackage = AppStart.f3772h.getPackageManager().getLaunchIntentForPackage(strX);
                    }
                    if (leanbackLaunchIntentForPackage != null) {
                        leanbackLaunchIntentForPackage.setPackage(null);
                        leanbackLaunchIntentForPackage.setFlags(270532608);
                        p000if.a.x0(1, AppStart.f3772h, leanbackLaunchIntentForPackage);
                        Thread.sleep(1111L);
                        break;
                    } else {
                        break;
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                    return;
                }
            default:
                if (strX.toLowerCase().endsWith(".apk") || strX.toLowerCase().endsWith(".apk.1")) {
                    try {
                        strX = ActivityGjDiy.x(strX);
                    } catch (Exception unused) {
                    }
                }
                if (!strX.toLowerCase().endsWith(".gj")) {
                    w wVar = v.f4106a;
                    int i10 = wVar.T;
                    if (i10 != 2 && i10 != 3) {
                        if (!wVar.f4152y) {
                            b0.f5652a.getClass();
                            if (w0.Q()) {
                                Toaster.show((CharSequence) ("安装中：" + new File(strX).getName()));
                                DecimalFormat decimalFormat = k.f4034u0;
                                k kVar = j.f4033a;
                                x xVarY = w0.Y(kVar.f4060n, strX);
                                if (!xVarY.f5762a && xVarY.f5763b != -111) {
                                    a0.u("安装失败，交由安装器来安装\n" + xVarY.f5764c);
                                    if (wVar.f4112c0 != 0) {
                                        c.I(kVar.f4035a, strX);
                                        break;
                                    } else {
                                        String strD = h.f11033a.d(strX);
                                        if (!strD.isEmpty()) {
                                            a0.u(strD);
                                            break;
                                        } else {
                                            a0.w("安装成功");
                                            break;
                                        }
                                    }
                                } else {
                                    a0.u(xVarY.f5764c);
                                    break;
                                }
                            }
                        }
                        if (wVar.f4112c0 != 0) {
                            DecimalFormat decimalFormat2 = k.f4034u0;
                            c.I(j.f4033a.f4035a, strX);
                            break;
                        } else {
                            Toaster.show((CharSequence) ("安装中：" + new File(strX).getName()));
                            String strD2 = h.f11033a.d(strX);
                            if (!strD2.isEmpty()) {
                                a0.u(strD2);
                                break;
                            } else {
                                a0.w("安装成功");
                                break;
                            }
                        }
                    } else {
                        l lVarG = d.G(strX, new l2(19));
                        if (!lVarG.a()) {
                            a0.u("失败：" + lVarG.f11049c);
                            break;
                        } else {
                            a0.w("安装成功");
                            break;
                        }
                    }
                } else {
                    DecimalFormat decimalFormat3 = k.f4034u0;
                    if (!j.f4033a.f4058m) {
                        a0.u("安装此类应用需要系统写入权，否则无法安装");
                        break;
                    } else {
                        try {
                            o.R(new File(strX));
                            a0.w("安装成功");
                            break;
                        } catch (Exception e10) {
                            a0.u(String.valueOf(e10.getMessage()));
                            return;
                        }
                    }
                }
                break;
        }
    }
}

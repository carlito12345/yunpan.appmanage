package ha;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.popup.constant.PopupConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.UsbAdbData;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final /* synthetic */ class pa implements c6.e, ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ sa f7584a;

    public /* synthetic */ pa(sa saVar) {
        this.f7584a = saVar;
    }

    @Override // ec.d
    public void g(mc.b bVar) {
        String strSubstring;
        int iLastIndexOf;
        String strTrim;
        int iLastIndexOf2;
        fa.e0 e0Var = fa.a.f5647b;
        StringBuilder sb2 = new StringBuilder("pm path ");
        Context context = this.f7584a.f6725b;
        sb2.append(context.getPackageName());
        UsbAdbData usbAdbDataA = e0Var.a(PopupConst.DURATION_POPUP_SHORT, sb2.toString());
        if (usbAdbDataA.code != 0) {
            bVar.d(new Exception("失败：找不到" + context.getString(R.string.app_name) + "(" + context.getPackageName() + ")"));
            return;
        }
        String listStr = usbAdbDataA.getListStr();
        int iIndexOf = listStr.indexOf(":");
        if (iIndexOf != -1 && (iLastIndexOf = (strSubstring = listStr.substring(iIndexOf + 1)).lastIndexOf(".apk")) != -1 && (iLastIndexOf2 = (strTrim = strSubstring.substring(0, iLastIndexOf).trim()).lastIndexOf("/")) != -1) {
            String strTrim2 = strTrim.substring(0, iLastIndexOf2).trim();
            if (strTrim2.startsWith("/")) {
                String strConcat = strTrim2.concat("/lib/");
                Iterator<String> it = e0Var.a(PopupConst.DURATION_POPUP_SHORT, g.b.A("ls \"", strConcat, "\"")).lines.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    String next = it.next();
                    if (!next.contains("/") && !next.contains(".") && !next.trim().isEmpty()) {
                        StringBuilder sbM = g.b.m(strConcat);
                        sbM.append(next.trim());
                        strConcat = sbM.toString();
                        break;
                    }
                }
                StringBuilder sbB = d0.f.b(strConcat, "/libgj.so  --package=");
                sbB.append(context.getPackageName());
                UsbAdbData usbAdbDataA2 = e0Var.a(PopupConst.DURATION_POPUP_SHORT, sbB.toString());
                if (usbAdbDataA2.code == 0) {
                    bVar.b();
                    return;
                } else {
                    bVar.d(new Exception(usbAdbDataA2.getListStr()));
                    return;
                }
            }
        }
        android.support.v4.media.session.a.B("出错：找不到安装位置", bVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        sa saVar = this.f7584a;
        if (i10 == 0) {
            saVar.getClass();
            ArrayList arrayList = new ArrayList();
            new mc.c(0, new a3(2, arrayList)).d(rc.f.f13757b).a(fc.b.a()).b(new h3(saVar, 6, arrayList));
            return;
        }
        Context context = saVar.f6725b;
        Activity activity = saVar.f6724a;
        boolean z = true;
        if (i10 == 1) {
            new d2(activity, context).show();
            return;
        }
        if (i10 == 2) {
            new mc.c(0, new qa(0, z)).d(rc.f.f13757b).a(fc.b.a()).b(new ra(saVar, 2));
            return;
        }
        boolean z4 = false;
        if (i10 == 3) {
            new mc.c(0, new qa(0, z4)).d(rc.f.f13757b).a(fc.b.a()).b(new ra(saVar, 2));
            return;
        }
        if (i10 == 4) {
            saVar.a(5555);
            return;
        }
        if (i10 == 5) {
            new o1(activity, context, new pa(saVar)).show();
            return;
        }
        fa.e0 e0Var = fa.a.f5647b;
        if (i10 == 6) {
            if (e0Var.c()) {
                new mc.c(0, new g2.c(21)).d(rc.f.f13757b).a(fc.b.a()).b(new m6(2));
                return;
            } else {
                com.yunpan.appmanage.util.a0.s("OTG已断开，请重新连接", false);
                saVar.dismiss();
                return;
            }
        }
        if (i10 == 7) {
            new mc.c(0, new pa(saVar)).d(rc.f.f13757b).a(fc.b.a()).b(new m6(3));
        } else if (i10 != 8) {
            Toaster.show((CharSequence) "此功能暂不开发");
        } else if (e0Var.c()) {
            new mc.c(0, new a2.u0(29)).d(rc.f.f13757b).a(fc.b.a()).b(new ra(saVar, 1));
        } else {
            com.yunpan.appmanage.util.a0.s("OTG已断开，请重新连接", false);
            saVar.dismiss();
        }
    }
}

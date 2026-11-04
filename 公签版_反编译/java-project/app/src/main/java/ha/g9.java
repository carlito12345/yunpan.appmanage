package ha;

import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.PopupMenu;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityAppDetails;
import com.yunpan.appmanage.ui.ActivityAppHistoryLog;
import com.yunpan.appmanage.ui.ActivityAppTraffic;
import com.yunpan.appmanage.ui.ActivityAppsPermissions;
import com.yunpan.appmanage.ui.ActivityAutoClick;
import com.yunpan.appmanage.ui.ActivityAutoClickUsbSet;
import java.util.Arrays;

/* loaded from: classes.dex */
public final /* synthetic */ class g9 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7106a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7107b;

    public /* synthetic */ g9(int i10, Object obj) {
        this.f7106a = i10;
        this.f7107b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i10 = 2;
        mc.g gVarA = null;
        int i11 = 0;
        Object obj = this.f7107b;
        switch (this.f7106a) {
            case 0:
                i9 i9Var = (i9) obj;
                z7.s sVar = i9Var.A;
                boolean zB = sVar.o("isOpen").b();
                i9Var.f7205i.setImageResource(!zB ? R.drawable.tp_check1 : R.drawable.tp_check2);
                sVar.k("isOpen", Boolean.valueOf(!zB));
                break;
            case 1:
                ((u9) obj).a();
                kh.e.b().f("关闭应用");
                break;
            case 2:
                v9 v9Var = (v9) obj;
                v9Var.f7941q.isStop = true;
                v9Var.dismiss();
                break;
            case 3:
                ma maVar = (ma) obj;
                maVar.f7441k = null;
                maVar.dismiss();
                break;
            case 4:
                ((sa) obj).dismiss();
                break;
            case 5:
                ((i) obj).dismiss();
                break;
            case 6:
                fb.a((fb) obj);
                break;
            case 7:
                ((hb) obj).dismiss();
                break;
            case 8:
                kb kbVar = (kb) obj;
                kbVar.getClass();
                new fa(kbVar.f6724a, kbVar.f6725b, null, Arrays.asList("自动", "横屏", "竖屏"), new jb(kbVar)).show();
                break;
            case 9:
                i.a((i) obj);
                break;
            case 10:
                w wVar = (w) obj;
                wVar.getClass();
                com.bumptech.glide.c.i(666, view);
                if (!wVar.f7971j.getText().toString().equals("连接中")) {
                    wVar.f7971j.setText("连接中");
                    String strF = g.b.f((EditText) wVar.f7973m);
                    x9.n5 n5Var = (x9.n5) wVar.f7972k;
                    n5Var.f18292c = strF;
                    n5Var.f18293d = Integer.parseInt(((EditText) wVar.f7974n).getText().toString().trim());
                    n5Var.f18294e = g.b.f((EditText) wVar.f7975p);
                    n5Var.f18295f = ((EditText) wVar.f7976q).getText().toString();
                    new mc.c(i11, new ba.f(13, n5Var)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(21, wVar));
                    break;
                }
                break;
            case 11:
                ((jc) obj).dismiss();
                break;
            case 12:
                lc lcVar = (lc) obj;
                lcVar.dismiss();
                new z6(lcVar.f6724a, lcVar.f6725b, "点击【保存示范文件】，会在【内部存储】里保存一个快捷命令.txt，然后在里面直接修改即可", "请务必根据里面的格式或说明进行编写", "好的", "保存示范文件", new kc(lcVar, i11), 0).show();
                break;
            case 13:
                ((qc) obj).dismiss();
                break;
            case 14:
                d2 d2Var = (d2) obj;
                if (!((String) d2Var.f6881h).isEmpty() && !((String) d2Var.f6883j).isEmpty()) {
                    ((h8) d2Var.f6882i).a(((String) d2Var.f6881h) + "|" + ((String) d2Var.f6883j));
                    d2Var.dismiss();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.u("请选择应用");
                    break;
                }
                break;
            case 15:
                md mdVar = (md) obj;
                if (!mdVar.f7450k) {
                    Toaster.showLong((CharSequence) "连接中");
                    mdVar.f7450k = true;
                    new mc.c(i11, new ld(mdVar)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(23, mdVar));
                    break;
                }
                break;
            case 16:
                ((ke) obj).dismiss();
                break;
            case 17:
                se seVar = (se) obj;
                seVar.getClass();
                com.bumptech.glide.c.i(666, view);
                if (!seVar.l.getText().toString().equals("连接中")) {
                    seVar.l.setText("连接中");
                    String strF2 = g.b.f(seVar.f7770i);
                    x9.n5 n5Var2 = seVar.f7768g;
                    n5Var2.f18292c = strF2;
                    n5Var2.f18294e = g.b.f(seVar.f7771j);
                    n5Var2.f18295f = seVar.f7772k.getText().toString();
                    new mc.c(i11, new ba.f(17, n5Var2)).d(rc.f.f13757b).a(fc.b.a()).b(new p0(26, seVar));
                    break;
                }
                break;
            case 18:
                w wVar2 = (w) obj;
                String string = ((TextView) wVar2.f7974n).getText().toString();
                if (!string.equals("取消下载")) {
                    if (!string.equals("重新尝试")) {
                        wVar2.dismiss();
                        break;
                    } else {
                        wVar2.a();
                        break;
                    }
                } else {
                    wVar2.dismiss();
                    break;
                }
            case 19:
                ye yeVar = (ye) obj;
                yeVar.getClass();
                com.bumptech.glide.c.i(666, view);
                if (!yeVar.f8111h.getText().toString().equals("登录中")) {
                    yeVar.f8111h.setText("登录中");
                    String strF3 = g.b.f(yeVar.f8112i);
                    if (!strF3.isEmpty()) {
                        String string2 = yeVar.f8113j.getText().toString();
                        if (!string2.isEmpty()) {
                            x9.n5 n5Var3 = yeVar.f8115m;
                            n5Var3.f18294e = strF3;
                            n5Var3.f18295f = string2;
                            int i12 = n5Var3.f18290a;
                            if (i12 == 1) {
                                gVarA = new mc.c(i11, new ba.f(i10, n5Var3)).d(rc.f.f13757b).a(fc.b.a());
                            } else if (i12 == 2) {
                                gVarA = new mc.c(i11, new ba.f(4, n5Var3)).d(rc.f.f13757b).a(fc.b.a());
                            } else if (i12 == 20) {
                                gVarA = new mc.c(i11, new ba.f(6, n5Var3)).d(rc.f.f13757b).a(fc.b.a());
                            }
                            if (gVarA != null) {
                                gVarA.b(new p0(28, yeVar));
                                break;
                            }
                        } else {
                            com.yunpan.appmanage.util.a0.z("请输入密码", true);
                            yeVar.f8111h.setText("登录");
                            break;
                        }
                    } else {
                        com.yunpan.appmanage.util.a0.z("请输入正确的账号", true);
                        yeVar.f8111h.setText("登录");
                        break;
                    }
                }
                break;
            case 20:
                o1 o1Var = (o1) obj;
                ((ua.i1) o1Var.f7501h).getClass();
                o1Var.dismiss();
                break;
            case 21:
                q7.c cVar = (q7.c) obj;
                EditText editText = cVar.f13063i;
                if (editText != null) {
                    Editable text = editText.getText();
                    if (text != null) {
                        text.clear();
                    }
                    cVar.q();
                    break;
                }
                break;
            case 22:
                ((q7.l) obj).u();
                break;
            case 23:
                q7.x xVar = (q7.x) obj;
                EditText editText2 = xVar.f13157f;
                if (editText2 != null) {
                    int selectionEnd = editText2.getSelectionEnd();
                    EditText editText3 = xVar.f13157f;
                    if (editText3 == null || !(editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                        xVar.f13157f.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    } else {
                        xVar.f13157f.setTransformationMethod(null);
                    }
                    if (selectionEnd >= 0) {
                        xVar.f13157f.setSelection(selectionEnd);
                    }
                    xVar.q();
                    break;
                }
                break;
            case 24:
                int i13 = ActivityAppDetails.E;
                ((ActivityAppDetails) obj).finish();
                break;
            case 25:
                int i14 = ActivityAppHistoryLog.K;
                ((ActivityAppHistoryLog) obj).finish();
                break;
            case 26:
                int i15 = ActivityAppTraffic.K;
                ((PopupMenu) obj).show();
                break;
            case 27:
                int i16 = ActivityAppsPermissions.K;
                ((ActivityAppsPermissions) obj).finish();
                break;
            case 28:
                int i17 = ActivityAutoClick.E;
                ((ActivityAutoClick) obj).finish();
                break;
            default:
                int i18 = ActivityAutoClickUsbSet.E;
                ((ActivityAutoClickUsbSet) obj).finish();
                break;
        }
    }
}

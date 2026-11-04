package ha;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.ui.ActivityKeyMapLogcatSet;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class s6 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7742a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7743b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7744c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f7745d;

    public /* synthetic */ s6(a4 a4Var, ArrayList arrayList, EditText editText, int i10) {
        this.f7742a = i10;
        this.f7743b = a4Var;
        this.f7745d = arrayList;
        this.f7744c = editText;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object obj = this.f7745d;
        Object obj2 = this.f7744c;
        Object obj3 = this.f7743b;
        switch (this.f7742a) {
            case 0:
                w6 w6Var = (w6) obj3;
                w6Var.getClass();
                String strF = g.b.f((EditText) obj2);
                String strF2 = g.b.f((EditText) obj);
                if (strF.isEmpty() || strF2.isEmpty()) {
                    com.yunpan.appmanage.util.a0.u("不能为空");
                    break;
                } else {
                    try {
                        w6Var.f7999g.b(w6Var.f8003k, w6Var.f8002j, Integer.parseInt(strF), Integer.parseInt(strF2));
                        w6Var.dismiss();
                        break;
                    } catch (Exception unused) {
                        com.yunpan.appmanage.util.a0.u("请输入屏幕坐标");
                        return;
                    }
                }
                break;
            case 1:
                i iVar = (i) obj3;
                iVar.getClass();
                ArrayList arrayList = (ArrayList) obj2;
                new ie(iVar.f6724a, iVar.f6725b, arrayList, new com.hjq.permissions.b(iVar, arrayList, (TextView) obj, 3)).show();
                break;
            case 2:
                o1 o1Var = (o1) obj3;
                o1Var.getClass();
                ArrayList arrayList2 = (ArrayList) obj;
                new fa(o1Var.f6724a, o1Var.f6725b, null, arrayList2, new a2.g1((EditText) obj2, 20, arrayList2)).show();
                break;
            case 3:
                o1 o1Var2 = (o1) obj3;
                o1Var2.getClass();
                ArrayList arrayList3 = (ArrayList) obj;
                new fa(o1Var2.f6724a, o1Var2.f6725b, null, arrayList3, new d2.w((EditText) obj2, 14, arrayList3)).show();
                break;
            case 4:
                ad adVar = (ad) obj3;
                adVar.getClass();
                EditText editText = (EditText) obj2;
                String strF3 = g.b.f(editText);
                if (!strF3.isEmpty()) {
                    EditText editText2 = (EditText) obj;
                    if (!strF3.equals(editText2.getText().toString().trim())) {
                        com.yunpan.appmanage.util.a0.w("密码不一致，请重新输入");
                        editText2.setText("");
                        editText.setText("");
                        break;
                    } else {
                        com.yunpan.appmanage.util.a0.v("设置成功", true);
                        com.yunpan.appmanage.util.v.f4106a.B(strF3);
                        adVar.a();
                        break;
                    }
                } else {
                    com.yunpan.appmanage.util.a0.w("密码不能为空");
                    break;
                }
            case 5:
                ke keVar = (ke) obj3;
                keVar.getClass();
                String strF4 = g.b.f((EditText) obj2);
                if (!strF4.isEmpty()) {
                    StringBuilder sbM = g.b.m(strF4);
                    sbM.append(keVar.f7336i);
                    String string = sbM.toString();
                    if (!new File(new File(keVar.f7335h).getParentFile() + "/" + string).exists()) {
                        keVar.f7334g.e(string, g.b.f((EditText) obj));
                        keVar.dismiss();
                        break;
                    } else {
                        com.yunpan.appmanage.util.a0.u("名称重复：目录内存在相同名称");
                        break;
                    }
                } else {
                    Toaster.show((CharSequence) "文件名不能为空");
                    break;
                }
            case 6:
                vc vcVar = (vc) obj3;
                vcVar.getClass();
                String strTrim = ((EditText) obj2).getText().toString().trim();
                if (!strTrim.isEmpty()) {
                    String str = vcVar.f7959i;
                    String string2 = ((EditText) obj).getText().toString();
                    h8 h8Var = vcVar.f7958h;
                    int i10 = h8Var.f7155b;
                    int i11 = h8Var.f7156c;
                    String str2 = h8Var.f7157d;
                    ea.e eVar = h8Var.f7158e;
                    try {
                        z7.s sVar = new z7.s();
                        sVar.l("keyType", Integer.valueOf(i10));
                        sVar.l("gnType", Integer.valueOf(i11));
                        sVar.m("name", str2 + "：" + str + "  " + strTrim + "  " + string2);
                        sVar.m("level", str);
                        sVar.m("tag", strTrim);
                        sVar.m("message", string2);
                        eVar.k(sVar);
                    } catch (Exception unused2) {
                    }
                    vcVar.dismiss();
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.u("标签不能为空");
                    break;
                }
            case 7:
                vc vcVar2 = (vc) obj3;
                vcVar2.getClass();
                new fa(vcVar2.f6724a, vcVar2.f6725b, null, (ArrayList) obj2, new d2.w(vcVar2, 29, (TextView) obj)).show();
                break;
            default:
                int i12 = ActivityKeyMapLogcatSet.H;
                ActivityKeyMapLogcatSet activityKeyMapLogcatSet = (ActivityKeyMapLogcatSet) obj3;
                activityKeyMapLogcatSet.getClass();
                ArrayList arrayList4 = (ArrayList) obj2;
                new ha(activityKeyMapLogcatSet, activityKeyMapLogcatSet, null, arrayList4, new t1(arrayList4, (TextView) obj)).show();
                break;
        }
    }

    public /* synthetic */ s6(Object obj, Object obj2, TextView textView, int i10) {
        this.f7742a = i10;
        this.f7743b = obj;
        this.f7744c = obj2;
        this.f7745d = textView;
    }
}

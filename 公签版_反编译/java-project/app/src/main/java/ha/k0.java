package ha;

import android.view.View;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.ui.ActivityKeymapFlyOS18;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public final /* synthetic */ class k0 implements c6.e, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7292a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m0 f7293b;

    public /* synthetic */ k0(m0 m0Var, int i10) {
        this.f7292a = i10;
        this.f7293b = m0Var;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f7293b.l.q(sVar);
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        m0 m0Var = this.f7293b;
        int iC = 0;
        int i11 = 2;
        switch (this.f7292a) {
            case 0:
                m0Var.getClass();
                if (i10 != 0) {
                    if (i10 != 1 && i10 != 2 && i10 != 3) {
                        ua.q3 q3Var = m0Var.f7385n;
                        if (i10 != 4) {
                            if (i10 == 5) {
                                int i12 = q3Var.f15898a;
                                if (i12 != -1) {
                                    ActivityKeymapFlyOS18 activityKeymapFlyOS18 = q3Var.f15899b;
                                    activityKeymapFlyOS18.F.C(i12);
                                    activityKeymapFlyOS18.H.p("maps").n(i12);
                                    q4.a.T(activityKeymapFlyOS18.A, activityKeymapFlyOS18.H);
                                }
                                m0Var.dismiss();
                                break;
                            }
                        } else if (!m0Var.f7380h.getText().toString().trim().isEmpty()) {
                            if (m0Var.l.b() != 0) {
                                Boolean boolValueOf = Boolean.valueOf(m0Var.f7386p);
                                z7.s sVar = m0Var.f7384m;
                                sVar.k("isOpen", boolValueOf);
                                sVar.m("eventName", m0Var.f7380h.getText().toString().trim());
                                z7.o oVar = new z7.o();
                                z7.o oVar2 = new z7.o();
                                z7.o oVar3 = new z7.o();
                                while (iC < m0Var.l.b()) {
                                    if (((z7.s) m0Var.l.t(iC)).o("keyType").e() == 0) {
                                        oVar.k((z7.p) m0Var.l.t(iC));
                                    } else if (((z7.s) m0Var.l.t(iC)).o("keyType").e() == 1) {
                                        oVar2.k((z7.p) m0Var.l.t(iC));
                                    } else if (((z7.s) m0Var.l.t(iC)).o("keyType").e() == 2) {
                                        oVar3.k((z7.p) m0Var.l.t(iC));
                                    }
                                    iC++;
                                }
                                sVar.j("click", oVar);
                                if (!oVar3.f19478a.isEmpty()) {
                                    sVar.j("longClick", oVar3);
                                }
                                if (!oVar2.f19478a.isEmpty()) {
                                    sVar.j("doubleClick", oVar2);
                                }
                                ActivityKeymapFlyOS18 activityKeymapFlyOS182 = q3Var.f15899b;
                                int i13 = q3Var.f15898a;
                                if (i13 == -1) {
                                    activityKeymapFlyOS182.F.q(sVar);
                                    activityKeymapFlyOS182.H.p("maps").k(sVar);
                                } else {
                                    activityKeymapFlyOS182.F.D(i13, sVar);
                                    activityKeymapFlyOS182.H.p("maps").o(i13, sVar);
                                }
                                int i14 = ActivityKeymapFlyOS18.K;
                                q4.a.T(activityKeymapFlyOS182.A, activityKeymapFlyOS182.H);
                                m0Var.dismiss();
                                break;
                            } else {
                                Toaster.show((CharSequence) "请添加至少一个操作");
                                break;
                            }
                        } else {
                            Toaster.show((CharSequence) "请输入备注名");
                            break;
                        }
                    } else {
                        t8.a(m0Var.f6724a, m0Var.f6725b, i10 - 1, false, new k0(m0Var, i11));
                        break;
                    }
                } else {
                    m0Var.f7386p = !m0Var.f7386p;
                    x9.t0 t0Var = m0Var.f7382j;
                    ((NameIcoTypeBean) t0Var.t(i10)).resId = m0Var.f7386p ? R.drawable.tp_check1 : R.drawable.tp_check2;
                    t0Var.e(i10);
                    break;
                }
                break;
            default:
                if (((z7.s) m0Var.l.t(i10)).o("gnType").e() != 3) {
                    if (m0Var.l.b() == 1) {
                        m0Var.f7381i.requestFocus();
                    }
                    m0Var.l.C(i10);
                    break;
                } else {
                    String[] strArr = {"删除", "编辑"};
                    ArrayList arrayList = new ArrayList(2);
                    while (iC < 2) {
                        String str = strArr[iC];
                        iC = g.b.c(str, arrayList, str, iC, 1);
                    }
                    new fa(m0Var.f6724a, m0Var.f6725b, null, Collections.unmodifiableList(arrayList), new l0(m0Var, i10)).show();
                    break;
                }
        }
    }
}

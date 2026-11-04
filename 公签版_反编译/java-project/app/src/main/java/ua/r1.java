package ua;

import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import ha.ud;

/* loaded from: classes.dex */
public final class r1 extends e9.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15927b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15928c;

    public /* synthetic */ r1(int i10, Object obj) {
        this.f15927b = i10;
        this.f15928c = obj;
    }

    @Override // nh.b
    public final void f0() {
        switch (this.f15927b) {
            case 0:
                Toaster.show((CharSequence) ("推送失败：" + ((com.yunpan.appmanage.util.d) this.f15928c).f4003a));
                break;
            case 1:
                com.yunpan.appmanage.util.a0.s("推送失败：" + ((com.yunpan.appmanage.util.d) this.f15928c).f4003a, true);
                break;
            default:
                ud udVar = (ud) this.f15928c;
                udVar.f7887s.setVisibility(8);
                com.yunpan.appmanage.util.a0.z("读取目录失败，请先确保对面设备已开启管家", false);
                com.yunpan.appmanage.util.v.f4106a.f4119g.remove(udVar.f7880i);
                udVar.dismiss();
                break;
        }
    }

    @Override // nh.b
    public final void g0(v3.f fVar) {
        switch (this.f15927b) {
            case 0:
                boolean zContains = ((String) fVar.f16474b).contains("OK");
                com.yunpan.appmanage.util.d dVar = (com.yunpan.appmanage.util.d) this.f15928c;
                if (zContains) {
                    Toaster.showLong((CharSequence) ("成功推送到：" + dVar.f4003a));
                    break;
                } else {
                    Toaster.show((CharSequence) ("推送失败：" + dVar.f4003a));
                    break;
                }
            case 1:
                boolean zContains2 = ((String) fVar.f16474b).contains("OK");
                com.yunpan.appmanage.util.d dVar2 = (com.yunpan.appmanage.util.d) this.f15928c;
                if (zContains2) {
                    com.yunpan.appmanage.util.a0.v("成功推送命令给：" + dVar2.f4003a, false);
                    break;
                } else {
                    com.yunpan.appmanage.util.a0.s("推送失败：" + dVar2.f4003a, true);
                    break;
                }
            default:
                ud udVar = (ud) this.f15928c;
                udVar.f7887s.setVisibility(8);
                String str = (String) fVar.f16474b;
                if (!str.contains("parent")) {
                    com.yunpan.appmanage.util.a0.z("读取目录失败，请先确保对面设备已打开管家", true);
                    udVar.dismiss();
                }
                z7.o oVarF = d.b.b0(str).g().o("files").f();
                for (int i10 = 0; i10 < oVarF.f19478a.size(); i10++) {
                    z7.s sVarG = oVarF.l(i10).g();
                    if (sVarG.o("dir").e() == 1) {
                        x9.w3 w3Var = new x9.w3(sVarG.o("name").i(), sVarG.o("path").i(), true);
                        w3Var.f18371h = sVarG.o("time").i();
                        udVar.l.q(w3Var);
                    }
                }
                if (udVar.l.b() == 0) {
                    udVar.b("没有其它目录", R.drawable.tp_nofile, true);
                    break;
                }
                break;
        }
    }
}

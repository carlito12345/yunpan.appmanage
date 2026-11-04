package ha;

import com.yunpan.appmanage.bean.KeyMapSelectBean;

/* loaded from: classes.dex */
public final /* synthetic */ class w8 implements ea, q0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a9 f8004a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ KeyMapSelectBean f8005b;

    public /* synthetic */ w8(a9 a9Var, KeyMapSelectBean keyMapSelectBean) {
        this.f8004a = a9Var;
        this.f8005b = keyMapSelectBean;
    }

    @Override // ha.ea
    public void b(int i10) {
        a9 a9Var = this.f8004a;
        a9Var.getClass();
        z7.s sVar = new z7.s();
        sVar.l("type", Integer.valueOf(this.f8005b.gn_type));
        int i11 = i10 + 1;
        sVar.l("time", Integer.valueOf(i11));
        sVar.m("tag", String.valueOf(System.currentTimeMillis()));
        String strS = android.support.v4.media.session.a.s(new StringBuilder("每隔 "), i11, " 分钟");
        z7.s sVar2 = a9Var.f6745s;
        sVar2.m("name", strS);
        sVar2.j("event", sVar);
        a9Var.b("每隔 " + i11 + " 分钟");
    }

    @Override // ha.q0
    public void d(String str, String str2, String str3) {
        a9 a9Var = this.f8004a;
        a9Var.getClass();
        StringBuilder sb2 = new StringBuilder();
        KeyMapSelectBean keyMapSelectBean = this.f8005b;
        sb2.append(keyMapSelectBean.gn_name);
        sb2.append("：");
        sb2.append(str);
        String string = sb2.toString();
        a9Var.b(string);
        z7.s sVar = new z7.s();
        sVar.l("type", Integer.valueOf(keyMapSelectBean.gn_type));
        sVar.m("str1", str2);
        z7.s sVar2 = a9Var.f6745s;
        sVar2.m("name", string);
        sVar2.j("event", sVar);
    }
}

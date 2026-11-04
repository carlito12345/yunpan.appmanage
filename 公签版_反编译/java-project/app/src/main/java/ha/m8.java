package ha;

import com.yunpan.appmanage.bean.KeyMapSelectBean;

/* loaded from: classes.dex */
public final /* synthetic */ class m8 implements q0, h7, y6, v6 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7426a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ z7.s f7427b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f7428c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ea.e f7429d;

    public /* synthetic */ m8(z7.s sVar, String str, ea.e eVar, int i10) {
        this.f7426a = i10;
        this.f7427b = sVar;
        this.f7428c = str;
        this.f7429d = eVar;
    }

    @Override // ha.h7
    public void a(String str) {
        z7.s sVar = this.f7427b;
        String str2 = this.f7428c;
        ea.e eVar = this.f7429d;
        try {
            if (str.startsWith("adb shell ")) {
                str = str.substring(10).trim();
            }
            sVar.m("name", str2 + "：" + str);
            sVar.m("str1", str);
            eVar.k(sVar);
        } catch (Exception unused) {
        }
    }

    @Override // ha.v6
    public void b(KeyMapSelectBean keyMapSelectBean, KeyMapSelectBean keyMapSelectBean2, int i10, int i11) {
        switch (this.f7426a) {
            case 6:
                z7.s sVar = this.f7427b;
                String str = this.f7428c;
                ea.e eVar = this.f7429d;
                try {
                    sVar.m("name", str + "：" + keyMapSelectBean2.gn_name + "(" + i10 + "," + i11 + ")");
                    sVar.l("api", Integer.valueOf(keyMapSelectBean.gn_type));
                    sVar.l("action", Integer.valueOf(keyMapSelectBean2.gn_type));
                    sVar.l("x", Integer.valueOf(i10));
                    sVar.l("y", Integer.valueOf(i11));
                    eVar.k(sVar);
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 7:
                z7.s sVar2 = this.f7427b;
                String str2 = this.f7428c;
                ea.e eVar2 = this.f7429d;
                try {
                    sVar2.m("name", str2 + "：" + keyMapSelectBean2.gn_name + "(" + i10 + "," + i11 + ")");
                    sVar2.l("action", Integer.valueOf(keyMapSelectBean2.gn_type));
                    sVar2.l("x", Integer.valueOf(i10));
                    sVar2.l("y", Integer.valueOf(i11));
                    eVar2.k(sVar2);
                    break;
                } catch (Exception unused2) {
                    return;
                }
            default:
                z7.s sVar3 = this.f7427b;
                String str3 = this.f7428c;
                ea.e eVar3 = this.f7429d;
                try {
                    sVar3.m("name", str3 + "：" + keyMapSelectBean2.gn_name + "(" + i10 + "," + i11 + ")");
                    sVar3.l("api", Integer.valueOf(keyMapSelectBean.gn_type));
                    sVar3.l("action", Integer.valueOf(keyMapSelectBean2.gn_type));
                    sVar3.l("x", Integer.valueOf(i10));
                    sVar3.l("y", Integer.valueOf(i11));
                    eVar3.k(sVar3);
                    break;
                } catch (Exception unused3) {
                    return;
                }
        }
    }

    public void c(int i10, KeyMapSelectBean keyMapSelectBean) {
        z7.s sVar = this.f7427b;
        String str = this.f7428c;
        ea.e eVar = this.f7429d;
        try {
            sVar.m("name", str + "：" + keyMapSelectBean.gn_name + "(" + i10 + ")");
            sVar.l("int1", Integer.valueOf(i10));
            sVar.l("int2", Integer.valueOf(keyMapSelectBean.gn_type));
            eVar.k(sVar);
        } catch (Exception unused) {
        }
    }

    @Override // ha.q0
    public void d(String str, String str2, String str3) {
        z7.s sVar = this.f7427b;
        String str4 = this.f7428c;
        ea.e eVar = this.f7429d;
        try {
            sVar.m("name", str4 + "：" + str);
            sVar.m("str1", str2);
            eVar.k(sVar);
        } catch (Exception unused) {
        }
    }

    public void e(KeyMapSelectBean keyMapSelectBean, int i10, KeyMapSelectBean keyMapSelectBean2) {
        z7.s sVar = this.f7427b;
        String str = this.f7428c;
        ea.e eVar = this.f7429d;
        try {
            sVar.m("name", str + "：" + keyMapSelectBean2.gn_name + "(" + i10 + ")");
            sVar.l("api", Integer.valueOf(keyMapSelectBean.gn_type));
            sVar.l("keycode", Integer.valueOf(i10));
            sVar.l("action", Integer.valueOf(keyMapSelectBean2.gn_type));
            eVar.k(sVar);
        } catch (Exception unused) {
        }
    }

    @Override // ha.y6
    public void n(String str, boolean z) {
        z7.s sVar = this.f7427b;
        String str2 = this.f7428c;
        ea.e eVar = this.f7429d;
        try {
            sVar.m("name", str2 + "：" + str);
            sVar.m("str1", str);
            sVar.l("toastType", 0);
            sVar.l("toastStyle", 0);
            eVar.k(sVar);
        } catch (Exception unused) {
        }
    }
}

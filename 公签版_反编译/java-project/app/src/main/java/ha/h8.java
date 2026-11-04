package ha;

import com.yunpan.appmanage.bean.KeyMapSelectBean;

/* loaded from: classes.dex */
public final /* synthetic */ class h8 implements q0, ea.e, ea.g, ea.c, i3 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7154a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7155b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7156c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f7157d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ea.e f7158e;

    public /* synthetic */ h8(int i10, int i11, String str, ea.e eVar, int i12) {
        this.f7154a = i12;
        this.f7155b = i10;
        this.f7156c = i11;
        this.f7157d = str;
        this.f7158e = eVar;
    }

    @Override // ea.g
    public void a(String str) {
        int i10 = this.f7155b;
        int i11 = this.f7156c;
        String str2 = this.f7157d;
        ea.e eVar = this.f7158e;
        try {
            z7.s sVar = new z7.s();
            sVar.l("keyType", Integer.valueOf(i10));
            sVar.l("gnType", Integer.valueOf(i11));
            sVar.m("name", str2 + "：" + str);
            sVar.m("str1", str);
            eVar.k(sVar);
        } catch (Exception unused) {
        }
    }

    @Override // ha.i3
    public void c(x9.w3 w3Var, int i10, int i11, KeyMapSelectBean keyMapSelectBean, KeyMapSelectBean keyMapSelectBean2, KeyMapSelectBean keyMapSelectBean3, int i12) {
        int i13 = this.f7155b;
        int i14 = this.f7156c;
        String str = this.f7157d;
        ea.e eVar = this.f7158e;
        try {
            z7.s sVar = new z7.s();
            sVar.l("keyType", Integer.valueOf(i13));
            sVar.l("gnType", Integer.valueOf(i14));
            sVar.m("name", str + "：" + w3Var.f18364a);
            sVar.m("str1", w3Var.f18365b);
            sVar.l("int1", Integer.valueOf(i11));
            sVar.l("volumeType", Integer.valueOf(i10));
            sVar.l("tdType", Integer.valueOf(keyMapSelectBean.gn_type));
            sVar.l("focusType", Integer.valueOf(keyMapSelectBean2.gn_type));
            sVar.l("speakerId", Integer.valueOf(keyMapSelectBean3.gn_type));
            sVar.l("volumeGain", Integer.valueOf(i12));
            eVar.k(sVar);
        } catch (Exception unused) {
        }
    }

    @Override // ha.q0
    public void d(String str, String str2, String str3) {
        switch (this.f7154a) {
            case 0:
                int i10 = this.f7155b;
                int i11 = this.f7156c;
                String str4 = this.f7157d;
                ea.e eVar = this.f7158e;
                try {
                    z7.s sVar = new z7.s();
                    sVar.l("keyType", Integer.valueOf(i10));
                    sVar.l("gnType", Integer.valueOf(i11));
                    sVar.m("name", str4 + "：" + str);
                    sVar.m("str1", str2 + "/" + str3);
                    eVar.k(sVar);
                    break;
                } catch (Exception unused) {
                    return;
                }
            case 8:
                int i12 = this.f7155b;
                int i13 = this.f7156c;
                String str5 = this.f7157d;
                ea.e eVar2 = this.f7158e;
                try {
                    z7.s sVar2 = new z7.s();
                    sVar2.l("keyType", Integer.valueOf(i12));
                    sVar2.l("gnType", Integer.valueOf(i13));
                    sVar2.m("name", str5 + "：" + str);
                    sVar2.m("str1", str2);
                    eVar2.k(sVar2);
                    break;
                } catch (Exception unused2) {
                    return;
                }
            default:
                int i14 = this.f7155b;
                int i15 = this.f7156c;
                String str6 = this.f7157d;
                ea.e eVar3 = this.f7158e;
                try {
                    z7.s sVar3 = new z7.s();
                    sVar3.l("keyType", Integer.valueOf(i14));
                    sVar3.l("gnType", Integer.valueOf(i15));
                    sVar3.m("name", str6 + "：" + str);
                    sVar3.m("str1", str2 + "/" + str3);
                    eVar3.k(sVar3);
                    break;
                } catch (Exception unused3) {
                    return;
                }
        }
    }

    @Override // ea.c
    public void e(int i10) {
        int i11 = this.f7155b;
        int i12 = this.f7156c;
        String str = this.f7157d;
        ea.e eVar = this.f7158e;
        try {
            z7.s sVar = new z7.s();
            sVar.l("keyType", Integer.valueOf(i11));
            sVar.l("gnType", Integer.valueOf(i12));
            sVar.m("name", str + "：" + i10);
            sVar.l("int1", Integer.valueOf(i10));
            eVar.k(sVar);
        } catch (Exception unused) {
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        switch (this.f7154a) {
            case 1:
                int i10 = this.f7155b;
                int i11 = this.f7156c;
                String str = this.f7157d;
                ea.e eVar = this.f7158e;
                try {
                    sVar.l("keyType", Integer.valueOf(i10));
                    sVar.l("gnType", Integer.valueOf(i11));
                    sVar.m("name", str);
                    eVar.k(sVar);
                    break;
                } catch (Exception unused) {
                    return;
                }
            default:
                int i12 = this.f7155b;
                int i13 = this.f7156c;
                String str2 = this.f7157d;
                ea.e eVar2 = this.f7158e;
                try {
                    z7.s sVar2 = new z7.s();
                    sVar2.l("keyType", Integer.valueOf(i12));
                    sVar2.l("gnType", Integer.valueOf(i13));
                    sVar2.m("name", str2);
                    sVar2.j("json", sVar);
                    eVar2.k(sVar2);
                    break;
                } catch (Exception unused2) {
                    return;
                }
        }
    }

    public /* synthetic */ h8(String str, int i10, int i11, ea.e eVar) {
        this.f7154a = 11;
        this.f7157d = str;
        this.f7155b = i10;
        this.f7156c = i11;
        this.f7158e = eVar;
    }
}

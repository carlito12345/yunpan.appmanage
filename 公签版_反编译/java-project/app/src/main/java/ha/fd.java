package ha;

import android.content.Context;
import android.net.wifi.WifiManager;

/* loaded from: classes.dex */
public final /* synthetic */ class fd implements ec.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7056a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ id f7057b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f7058c;

    public /* synthetic */ fd(id idVar, boolean z, int i10) {
        this.f7056a = i10;
        this.f7057b = idVar;
        this.f7058c = z;
    }

    @Override // ec.d
    public final void g(mc.b bVar) {
        switch (this.f7056a) {
            case 0:
                Context context = this.f7057b.f6725b;
                boolean z = this.f7058c;
                try {
                    if (z) {
                        try {
                            ((WifiManager) context.getSystemService("wifi")).setWifiEnabled(false);
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                    }
                    nh.b.m0(context, z);
                } catch (Exception e10) {
                    com.yunpan.appmanage.util.a0.u("失败：" + e10.getMessage());
                }
                bVar.b();
                break;
            default:
                boolean z4 = this.f7058c;
                id idVar = this.f7057b;
                idVar.getClass();
                try {
                    if (((WifiManager) idVar.f6725b.getSystemService("wifi")).setWifiEnabled(z4)) {
                        com.yunpan.appmanage.util.a0.w(z4 ? "已开启WIFI" : "已关闭WIFI");
                        bVar.b();
                        break;
                    }
                } catch (Exception unused) {
                }
                com.yunpan.appmanage.util.a0.w("失败：不支持此设备");
                bVar.b();
                break;
        }
    }
}

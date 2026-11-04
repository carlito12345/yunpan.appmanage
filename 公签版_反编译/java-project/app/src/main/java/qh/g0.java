package qh;

import com.yunpan.appmanage.db.MyDb;
import com.yunpan.appmanage.ui.ActivityHome;
import j$.util.function.Consumer$CC;
import java.io.File;
import java.text.DecimalFormat;
import java.util.function.Consumer;

/* loaded from: classes3.dex */
public final /* synthetic */ class g0 implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13287a;

    public /* synthetic */ g0(int i10) {
        this.f13287a = i10;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) {
        switch (this.f13287a) {
            case 0:
                ((f0) obj).e(256);
                break;
            case 1:
                ((f0) obj).e(512);
                break;
            case 2:
                ((f0) obj).e(4);
                break;
            case 3:
                ((f0) obj).e(0);
                break;
            case 4:
                ((f0) obj).e(4);
                break;
            case 5:
                ((f0) obj).e(4);
                break;
            case 6:
                ((f0) obj).e(0);
                break;
            case 7:
                ((f0) obj).e(256);
                break;
            case 8:
                ((f0) obj).e(0);
                break;
            case 9:
                ((f0) obj).e(8);
                break;
            case 10:
                ((f0) obj).e(2);
                break;
            case 11:
                ((f0) obj).e(64);
                break;
            case 12:
                ((f0) obj).e(128);
                break;
            case 13:
                String str = (String) obj;
                int i10 = ActivityHome.O;
                if (str.startsWith("/storage/usbotg")) {
                    DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.j.f4033a.f4073v.remove(str);
                    break;
                }
                break;
            case 14:
                String str2 = (String) obj;
                int i11 = ActivityHome.O;
                DecimalFormat decimalFormat2 = com.yunpan.appmanage.util.k.f4034u0;
                com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
                if (!kVar.f4074w) {
                    try {
                        if (com.yunpan.appmanage.util.v.f4106a.f4139q0 && com.yunpan.appmanage.util.a0.k(str2) - com.yunpan.appmanage.util.a0.j(str2) > 107374182400L) {
                            kVar.f4074w = true;
                            break;
                        }
                    } catch (Exception unused) {
                    }
                    com.yunpan.appmanage.util.j.f4033a.f4046f0.submit(new com.yunpan.appmanage.util.z(new File(str2)));
                    break;
                }
                break;
            default:
                String str3 = (String) obj;
                if (str3.startsWith("/storage/usbotg")) {
                    DecimalFormat decimalFormat3 = com.yunpan.appmanage.util.k.f4034u0;
                    com.yunpan.appmanage.util.j.f4033a.f4073v.remove(str3);
                    MyDb.get().deleteDir_thread(str3);
                    break;
                }
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i10 = this.f13287a;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}

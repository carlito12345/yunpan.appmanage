package ta;

import com.yunpan.appmanage.service.AdbPairService;
import com.yunpan.appmanage.ui.ActivityWindowInputAdbPair;
import io.github.muntashirakon.adb.android.AdbMdns;
import java.net.InetAddress;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import wa.t;
import wa.w;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements AdbMdns.OnAdbDaemonDiscoveredListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14866a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HashMap f14867b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CountDownLatch f14868c;

    public /* synthetic */ g(HashMap map, CountDownLatch countDownLatch, int i10) {
        this.f14866a = i10;
        this.f14867b = map;
        this.f14868c = countDownLatch;
    }

    @Override // io.github.muntashirakon.adb.android.AdbMdns.OnAdbDaemonDiscoveredListener
    public final void onPortChanged(InetAddress inetAddress, int i10, String str) {
        CountDownLatch countDownLatch = this.f14868c;
        HashMap map = this.f14867b;
        switch (this.f14866a) {
            case 0:
                int i11 = AdbPairService.f3951b;
                if (inetAddress != null) {
                    System.out.getClass();
                    map.put(inetAddress.getHostAddress(), Integer.valueOf(i10));
                    countDownLatch.countDown();
                    break;
                }
                break;
            default:
                int i12 = ActivityWindowInputAdbPair.E;
                if (inetAddress != null) {
                    if (t.f17728a.f17755v) {
                        w.b("找到：" + inetAddress.getHostAddress() + ":" + i10);
                    }
                    System.out.getClass();
                    map.put(inetAddress.getHostAddress(), Integer.valueOf(i10));
                    countDownLatch.countDown();
                    break;
                }
                break;
        }
    }
}

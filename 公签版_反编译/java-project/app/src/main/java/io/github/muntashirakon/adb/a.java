package io.github.muntashirakon.adb;

import com.yunpan.appmanage.ui.ActivityStudy;
import io.github.muntashirakon.adb.android.AdbMdns;
import java.net.InetAddress;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements AdbMdns.OnAdbDaemonDiscoveredListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8694a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AtomicReference f8695b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AtomicInteger f8696c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ CountDownLatch f8697d;

    public /* synthetic */ a(AtomicReference atomicReference, AtomicInteger atomicInteger, CountDownLatch countDownLatch, int i10) {
        this.f8694a = i10;
        this.f8695b = atomicReference;
        this.f8696c = atomicInteger;
        this.f8697d = countDownLatch;
    }

    @Override // io.github.muntashirakon.adb.android.AdbMdns.OnAdbDaemonDiscoveredListener
    public final void onPortChanged(InetAddress inetAddress, int i10, String str) {
        CountDownLatch countDownLatch = this.f8697d;
        AtomicInteger atomicInteger = this.f8696c;
        AtomicReference atomicReference = this.f8695b;
        switch (this.f8694a) {
            case 0:
                AbsAdbConnectionManager.lambda$autoConnect$0(this.f8695b, this.f8696c, this.f8697d, inetAddress, i10, str);
                break;
            case 1:
                AbsAdbConnectionManager.lambda$autoConnect$1(this.f8695b, this.f8696c, this.f8697d, inetAddress, i10, str);
                break;
            case 2:
                AbsAdbConnectionManager.lambda$autoConnect$2(this.f8695b, this.f8696c, this.f8697d, inetAddress, i10, str);
                break;
            case 3:
                int i11 = ActivityStudy.I;
                if (inetAddress != null) {
                    atomicReference.set(inetAddress.getHostAddress());
                    atomicInteger.set(i10);
                }
                countDownLatch.countDown();
                break;
            default:
                int i12 = ActivityStudy.I;
                if (inetAddress != null) {
                    atomicReference.set(inetAddress.getHostAddress());
                    atomicInteger.set(i10);
                }
                countDownLatch.countDown();
                break;
        }
    }
}

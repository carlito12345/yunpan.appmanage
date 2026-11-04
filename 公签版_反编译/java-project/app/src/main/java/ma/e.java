package ma;

import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public final class e extends IIntentSender.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Intent[] f11029e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CountDownLatch f11030f;

    public e(Intent[] intentArr, CountDownLatch countDownLatch) {
        this.f11029e = intentArr;
        this.f11030f = countDownLatch;
    }

    public final int send(int i10, Intent intent, String str, IIntentReceiver iIntentReceiver, String str2, Bundle bundle) {
        this.f11029e[0] = intent;
        this.f11030f.countDown();
        return 0;
    }

    public final void send(int i10, Intent intent, String str, IBinder iBinder, IIntentReceiver iIntentReceiver, String str2, Bundle bundle) {
        this.f11029e[0] = intent;
        this.f11030f.countDown();
    }
}

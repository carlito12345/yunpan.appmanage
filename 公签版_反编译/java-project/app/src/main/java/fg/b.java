package fg;

import android.os.Process;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class b extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5833a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Runnable runnable, int i10) {
        super(runnable);
        this.f5833a = i10;
        switch (i10) {
            case 2:
                super(runnable);
                break;
            default:
                setDaemon(true);
                break;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws SecurityException, IllegalArgumentException {
        ReentrantLock reentrantLock;
        e eVarA;
        switch (this.f5833a) {
            case 0:
                break;
            case 1:
            default:
                super.run();
                return;
            case 2:
                Process.setThreadPriority(9);
                super.run();
                return;
        }
        while (true) {
            try {
                e.Companion.getClass();
                reentrantLock = e.lock;
                reentrantLock.lock();
                try {
                    eVarA = a.a();
                } catch (Throwable th2) {
                    reentrantLock.unlock();
                    throw th2;
                }
            } catch (InterruptedException unused) {
                continue;
            }
            if (eVarA == e.head) {
                e.head = null;
                reentrantLock.unlock();
                return;
            } else {
                reentrantLock.unlock();
                if (eVarA != null) {
                    eVarA.timedOut();
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Runnable runnable, String str) {
        super(runnable, str);
        this.f5833a = 3;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b() {
        super("Okio Watchdog");
        this.f5833a = 0;
        setDaemon(true);
    }
}

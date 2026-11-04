package fg;

import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class a {
    public static e a() throws InterruptedException {
        e eVar = e.head;
        ue.d.b(eVar);
        e eVar2 = eVar.next;
        if (eVar2 == null) {
            long jNanoTime = System.nanoTime();
            e.condition.await(e.IDLE_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
            e eVar3 = e.head;
            ue.d.b(eVar3);
            if (eVar3.next != null || System.nanoTime() - jNanoTime < e.IDLE_TIMEOUT_NANOS) {
                return null;
            }
            return e.head;
        }
        long jAccess$remainingNanos = e.access$remainingNanos(eVar2, System.nanoTime());
        if (jAccess$remainingNanos > 0) {
            e.condition.await(jAccess$remainingNanos, TimeUnit.NANOSECONDS);
            return null;
        }
        e eVar4 = e.head;
        ue.d.b(eVar4);
        eVar4.next = eVar2.next;
        eVar2.next = null;
        return eVar2;
    }
}

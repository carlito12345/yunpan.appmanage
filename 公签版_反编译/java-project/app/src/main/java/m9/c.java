package m9;

import android.os.SystemClock;
import fg.i;
import fg.j;
import fg.m;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c extends m {

    /* renamed from: a, reason: collision with root package name */
    public final k9.d f11005a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f11006b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(d dVar, j jVar) {
        super(jVar);
        this.f11006b = dVar;
        k9.d dVar2 = new k9.d();
        this.f11005a = dVar2;
        dVar2.f10215b = dVar.contentLength();
    }

    @Override // fg.m, fg.x
    public final void write(i iVar, long j10) {
        super.write(iVar, j10);
        k9.d dVar = this.f11005a;
        long j11 = dVar.f10215b;
        dVar.f10215b = j11;
        dVar.f10216c += j10;
        dVar.f10218e += j10;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j12 = jElapsedRealtime - dVar.f10219f;
        if (j12 < 300 && dVar.f10216c != j11) {
            return;
        }
        if (j12 == 0) {
            j12 = 1;
        }
        dVar.f10214a = (dVar.f10216c * 1.0f) / j11;
        long j13 = (dVar.f10218e * 1000) / j12;
        ArrayList arrayList = dVar.f10220g;
        arrayList.add(Long.valueOf(j13));
        if (arrayList.size() > 10) {
            arrayList.remove(0);
        }
        long jLongValue = 0;
        while (arrayList.iterator().hasNext()) {
            jLongValue = (long) (jLongValue + ((Long) r0.next()).longValue());
        }
        dVar.f10217d = jLongValue / arrayList.size();
        dVar.f10219f = jElapsedRealtime;
        dVar.f10218e = 0L;
        d dVar2 = this.f11006b;
        dVar2.getClass();
        b9.a.f2665a.f2666a.post(new y7.b(17, dVar2, dVar, false));
    }
}

package u1;

import android.os.Handler;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b0 {

    /* renamed from: b, reason: collision with root package name */
    public static final ArrayList f15187b = new ArrayList(50);

    /* renamed from: a, reason: collision with root package name */
    public final Handler f15188a;

    public b0(Handler handler) {
        this.f15188a = handler;
    }

    public static a0 c() {
        a0 a0Var;
        ArrayList arrayList = f15187b;
        synchronized (arrayList) {
            try {
                a0Var = arrayList.isEmpty() ? new a0() : (a0) arrayList.remove(arrayList.size() - 1);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return a0Var;
    }

    public final a0 a(int i10) {
        a0 a0VarC = c();
        a0VarC.f15183a = this.f15188a.obtainMessage(i10);
        return a0VarC;
    }

    public final a0 b(int i10, Object obj) {
        a0 a0VarC = c();
        a0VarC.f15183a = this.f15188a.obtainMessage(i10, obj);
        return a0VarC;
    }

    public final boolean d(Runnable runnable) {
        return this.f15188a.post(runnable);
    }

    public final void e(int i10) {
        a9.o.k(i10 != 0);
        this.f15188a.removeMessages(i10);
    }

    public final boolean f(int i10) {
        return this.f15188a.sendEmptyMessage(i10);
    }
}

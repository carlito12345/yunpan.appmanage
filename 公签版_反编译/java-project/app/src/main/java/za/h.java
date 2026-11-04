package za;

import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import ua.i8;
import x9.w3;

/* loaded from: classes.dex */
public final class h implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final w3 f19538a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f19539b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19540c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ i8 f19541d;

    public h(i8 i8Var, w3 w3Var, ArrayList arrayList, int i10) {
        this.f19541d = i8Var;
        this.f19538a = w3Var;
        this.f19539b = arrayList;
        this.f19540c = i10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        File[] fileArrListFiles = new File(this.f19538a.f18365b).listFiles();
        if (fileArrListFiles != null && fileArrListFiles.length > 0) {
            for (File file : fileArrListFiles) {
                w3 w3Var = new w3(file);
                synchronized (this.f19539b) {
                    try {
                        if (w3Var.f18377o == null) {
                            w3Var.f18377o = w3Var.f18366c ? w3Var.f18365b.substring(this.f19540c) + "/" : w3Var.f18365b.substring(this.f19540c);
                        }
                        this.f19539b.add(w3Var);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (w3Var.f18366c) {
                    ((AtomicInteger) this.f19541d.f15742c).incrementAndGet();
                    i8 i8Var = this.f19541d;
                    ((ExecutorService) i8Var.f15741b).execute(new h(i8Var, w3Var, this.f19539b, this.f19540c));
                }
            }
        }
        ((AtomicInteger) this.f19541d.f15742c).decrementAndGet();
    }
}

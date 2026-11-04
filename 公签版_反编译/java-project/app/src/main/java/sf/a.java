package sf;

import a2.g1;
import ag.h;
import ag.k;
import ag.l;
import com.bumptech.glide.manager.s;
import d0.f;
import eg.c;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import m7.e;
import y7.b;
import yf.g;

/* loaded from: classes.dex */
public final class a implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public final File f14552a;

    /* renamed from: b, reason: collision with root package name */
    public l f14553b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14554c;

    /* renamed from: f, reason: collision with root package name */
    public final char[] f14557f;

    /* renamed from: g, reason: collision with root package name */
    public ThreadFactory f14558g;

    /* renamed from: h, reason: collision with root package name */
    public ExecutorService f14559h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f14560i = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final boolean f14561j = true;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14556e = false;

    /* renamed from: d, reason: collision with root package name */
    public final cg.a f14555d = new cg.a();

    public a(File file, char[] cArr) {
        this.f14552a = file;
        this.f14557f = cArr;
    }

    public final RandomAccessFile A() throws IOException {
        File file = this.f14552a;
        if (!file.getName().endsWith(".zip.001")) {
            return new RandomAccessFile(file, "r");
        }
        g gVar = new g(file, c.e(file));
        gVar.r(gVar.f19170b.length - 1);
        return gVar;
    }

    public final void J() {
        if (this.f14553b != null) {
            return;
        }
        File file = this.f14552a;
        if (!file.exists()) {
            l lVar = new l();
            this.f14553b = lVar;
            lVar.f703g = file;
            return;
        }
        if (!file.canRead()) {
            throw new wf.a("no read access for the input zip file");
        }
        try {
            RandomAccessFile randomAccessFileA = A();
            try {
                l lVarO = new s4.a(9).o(randomAccessFileA, new h(this.f14561j));
                this.f14553b = lVarO;
                lVarO.f703g = file;
                randomAccessFileA.close();
            } catch (Throwable th2) {
                try {
                    randomAccessFileA.close();
                } catch (Throwable th3) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                    } catch (Exception unused) {
                    }
                }
                throw th2;
            }
        } catch (wf.a e7) {
            throw e7;
        } catch (IOException e10) {
            throw new wf.a((Exception) e10);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ArrayList arrayList = this.f14560i;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((InputStream) it.next()).close();
        }
        arrayList.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void r(String str) {
        long j10;
        e eVar = new e(2);
        if (!c.h(str)) {
            throw new wf.a("output path is null or invalid");
        }
        File file = new File(str);
        if (file.exists()) {
            if (!file.isDirectory()) {
                throw new wf.a("output directory is not valid");
            }
        } else if (!file.mkdirs()) {
            throw new wf.a("Cannot create output directories");
        }
        if (this.f14553b == null) {
            J();
        }
        l lVar = this.f14553b;
        if (lVar == null) {
            throw new wf.a("Internal error occurred when extracting zip file");
        }
        if (this.f14556e) {
            if (this.f14558g == null) {
                this.f14558g = Executors.defaultThreadFactory();
            }
            this.f14559h = Executors.newSingleThreadExecutor(this.f14558g);
        }
        dg.a aVar = new dg.a(lVar, this.f14557f, eVar, new s(4, this.f14559h, this.f14555d, this.f14556e));
        g1 g1Var = new g1(14, str, new h(this.f14561j), false);
        cg.a aVar2 = (cg.a) aVar.f4638b;
        boolean z = aVar.f4637a;
        if (z && f.a(2, aVar2.f3241a)) {
            throw new wf.a("invalid operation - Zip4j is in busy state");
        }
        aVar2.f3242b = 0L;
        aVar2.f3243c = 0L;
        aVar2.f3244d = 0;
        aVar2.f3241a = 2;
        if (!z) {
            aVar.d(g1Var, aVar2);
            return;
        }
        Iterator it = lVar.f698b.f665a.iterator();
        long j11 = 0;
        while (it.hasNext()) {
            ag.f fVar = (ag.f) it.next();
            k kVar = fVar.f660p;
            if (kVar != null) {
                j10 = kVar.f694d;
                if (j10 <= 0) {
                    j10 = fVar.f655i;
                }
            }
            j11 += j10;
        }
        aVar2.f3242b = j11;
        ((ExecutorService) aVar.f4639c).execute(new b(11, aVar, g1Var, false));
    }

    public final String toString() {
        return this.f14552a.toString();
    }
}

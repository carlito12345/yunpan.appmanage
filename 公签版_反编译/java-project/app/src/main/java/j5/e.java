package j5;

import a2.g1;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class e implements a {

    /* renamed from: b, reason: collision with root package name */
    public final File f9756b;

    /* renamed from: c, reason: collision with root package name */
    public final long f9757c;

    /* renamed from: e, reason: collision with root package name */
    public d5.d f9759e;

    /* renamed from: d, reason: collision with root package name */
    public final g1 f9758d = new g1(26);

    /* renamed from: a, reason: collision with root package name */
    public final g1 f9755a = new g1(27);

    public e(File file, long j10) {
        this.f9756b = file;
        this.f9757c = j10;
    }

    public final synchronized d5.d a() {
        try {
            if (this.f9759e == null) {
                this.f9759e = d5.d.O(this.f9756b, this.f9757c);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.f9759e;
    }

    @Override // j5.a
    public final void n(f5.f fVar, v3.f fVar2) {
        b bVarA;
        d5.d dVarA;
        boolean z;
        String strT = this.f9755a.T(fVar);
        g1 g1Var = this.f9758d;
        synchronized (g1Var) {
            try {
                bVarA = (b) ((HashMap) g1Var.f175b).get(strT);
                if (bVarA == null) {
                    bVarA = ((c) g1Var.f176c).a();
                    ((HashMap) g1Var.f175b).put(strT, bVarA);
                }
                bVarA.f9753b++;
            } finally {
            }
        }
        bVarA.f9752a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2) && fVar != null) {
                fVar.toString();
            }
            try {
                dVarA = a();
            } catch (IOException unused) {
            }
            if (dVarA.M(strT) != null) {
                this.f9758d.X(strT);
                return;
            }
            androidx.room.i iVarK = dVarA.K(strT);
            if (iVarK == null) {
                throw new IllegalStateException("Had two simultaneous puts for: ".concat(strT));
            }
            try {
                if (((f5.c) fVar2.f16474b).g(fVar2.f16475c, iVarK.e(), (f5.i) fVar2.f16476d)) {
                    d5.d.r((d5.d) iVarK.f2407d, iVarK, true);
                    iVarK.f2404a = true;
                }
                if (!z) {
                    iVarK.c();
                }
                this.f9758d.X(strT);
            } finally {
                if (!iVarK.f2404a) {
                    try {
                        iVarK.c();
                    } catch (IOException unused2) {
                    }
                }
            }
        } catch (Throwable th2) {
            this.f9758d.X(strT);
            throw th2;
        }
    }

    @Override // j5.a
    public final File y(f5.f fVar) {
        String strT = this.f9755a.T(fVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2) && fVar != null) {
            fVar.toString();
        }
        try {
            a1.i iVarM = a().M(strT);
            if (iVarM != null) {
                return ((File[]) iVarM.f76b)[0];
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }
}

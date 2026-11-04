package z8;

import android.app.Application;
import java.io.IOException;
import java.io.InputStream;
import xh.d;
import xh.k;

/* loaded from: classes.dex */
public final class b extends k {

    /* renamed from: c, reason: collision with root package name */
    public final Application f19487c;

    public b(Application application) {
        this.f19487c = application;
    }

    @Override // xh.k
    public final void a() throws IOException {
        InputStream inputStreamOpen = null;
        try {
            try {
                inputStreamOpen = this.f19487c.getAssets().open("org/threeten/bp/TZDB.dat");
                d dVar = new d(inputStreamOpen);
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (IOException unused) {
                    }
                }
                d.c(dVar);
            } catch (IOException e7) {
                throw new IllegalStateException("org/threeten/bp/TZDB.dat missing from assets", e7);
            }
        } catch (Throwable th2) {
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                } catch (IOException unused2) {
                }
            }
            throw th2;
        }
    }
}

package h2;

import android.media.Spatializer;
import android.os.Build;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements t7.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f6332a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i f6333b;

    public /* synthetic */ c(n nVar, i iVar) {
        this.f6332a = nVar;
        this.f6333b = iVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    @Override // t7.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean apply(Object obj) {
        int i10;
        j2.d dVar;
        Spatializer spatializer;
        Spatializer spatializer2;
        j2.d dVar2;
        char c7 = 2;
        r1.p pVar = (r1.p) obj;
        n nVar = this.f6332a;
        nVar.getClass();
        if (!this.f6333b.B) {
            return true;
        }
        Boolean bool = nVar.f6401j;
        if ((bool != null && bool.booleanValue()) || (i10 = pVar.G) == -1 || i10 <= 2) {
            return true;
        }
        String str = pVar.f13523o;
        if (str != null) {
            switch (str.hashCode()) {
                case -2123537834:
                    if (!str.equals("audio/eac3-joc")) {
                        c7 = 65535;
                        break;
                    } else {
                        c7 = 0;
                        break;
                    }
                case 187078296:
                    if (str.equals("audio/ac3")) {
                        c7 = 1;
                        break;
                    }
                    break;
                case 187078297:
                    if (!str.equals("audio/ac4")) {
                    }
                    break;
                case 1504578661:
                    if (str.equals("audio/eac3")) {
                        c7 = 3;
                        break;
                    }
                    break;
            }
            switch (c7) {
                case 0:
                case 1:
                case 2:
                case 3:
                    if (Build.VERSION.SDK_INT < 32 || (dVar2 = nVar.f6399h) == null || !dVar2.f9663b) {
                        return true;
                    }
                    break;
            }
        }
        return Build.VERSION.SDK_INT >= 32 && (dVar = nVar.f6399h) != null && dVar.f9663b && (spatializer = dVar.f9662a) != null && spatializer.isAvailable() && (spatializer2 = nVar.f6399h.f9662a) != null && spatializer2.isEnabled() && nVar.f6399h.a(nVar.f6400i, pVar);
    }
}

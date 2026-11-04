package p0;

import a0.t;
import a2.c0;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import l5.y;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final y f12547a;

    /* renamed from: b, reason: collision with root package name */
    public static final a0.m f12548b;

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            f12547a = new l();
        } else if (i10 >= 28) {
            f12547a = new k();
        } else if (i10 >= 26) {
            f12547a = new j();
        } else if (i10 >= 24 && i.f12556e != null) {
            f12547a = new i();
        } else if (i10 >= 21) {
            f12547a = new h();
        } else {
            f12547a = new y((byte) 0, 9);
        }
        f12548b = new a0.m(16);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Typeface a(Context context, o0.e eVar, Resources resources, int i10, String str, int i11, int i12, o0.b bVar, boolean z) {
        Typeface typefaceU;
        Typeface typefaceCreate;
        int i13 = 4;
        int i14 = 1;
        int i15 = 27;
        int i16 = 0;
        int i17 = 21;
        int i18 = -3;
        if (eVar instanceof o0.h) {
            o0.h hVar = (o0.h) eVar;
            String str2 = hVar.f11466d;
            typefaceU = null;
            if (str2 == null || str2.isEmpty()) {
                typefaceCreate = null;
                if (typefaceCreate == null) {
                    if (bVar != null) {
                        new Handler(Looper.getMainLooper()).post(new c0(bVar, i15, typefaceCreate));
                    }
                    return typefaceCreate;
                }
                boolean z4 = !z ? bVar != null : hVar.f11465c != 0;
                int i19 = z ? hVar.f11464b : -1;
                Handler handler = new Handler(Looper.getMainLooper());
                y yVar = new y(8, bVar);
                kf.b bVar2 = hVar.f11463a;
                kf.d dVar = new kf.d(yVar, i17, handler);
                if (z4) {
                    a0.m mVar = u0.f.f15171a;
                    String str3 = ((String) bVar2.f10282f) + "-" + i12;
                    Typeface typeface = (Typeface) u0.f.f15171a.a(str3);
                    if (typeface != null) {
                        handler.post(new y7.b(yVar, i17, typeface));
                        typefaceU = typeface;
                    } else if (i19 == -1) {
                        u0.e eVarA = u0.f.a(str3, context, bVar2, i12);
                        dVar.K(eVarA);
                        typefaceU = eVarA.f15169a;
                    } else {
                        try {
                            try {
                                try {
                                    u0.e eVar2 = (u0.e) u0.f.f15172b.submit(new u0.c(str3, context, bVar2, i12, 0)).get(i19, TimeUnit.MILLISECONDS);
                                    dVar.K(eVar2);
                                    typefaceU = eVar2.f15169a;
                                } catch (InterruptedException e7) {
                                    throw e7;
                                }
                            } catch (ExecutionException e10) {
                                throw new RuntimeException(e10);
                            } catch (TimeoutException unused) {
                                throw new InterruptedException("timeout");
                            }
                        } catch (InterruptedException unused2) {
                            ((Handler) dVar.f10287c).post(new androidx.emoji2.text.j(i18, i13, (y) dVar.f10286b));
                        }
                    }
                } else {
                    a0.m mVar2 = u0.f.f15171a;
                    String str4 = ((String) bVar2.f10282f) + "-" + i12;
                    Typeface typeface2 = (Typeface) u0.f.f15171a.a(str4);
                    if (typeface2 != null) {
                        handler.post(new y7.b(yVar, i17, typeface2));
                        typefaceU = typeface2;
                    } else {
                        u0.d dVar2 = new u0.d(i16, dVar);
                        synchronized (u0.f.f15173c) {
                            try {
                                t tVar = u0.f.f15174d;
                                ArrayList arrayList = (ArrayList) tVar.get(str4);
                                if (arrayList != null) {
                                    arrayList.add(dVar2);
                                } else {
                                    ArrayList arrayList2 = new ArrayList();
                                    arrayList2.add(dVar2);
                                    tVar.put(str4, arrayList2);
                                    u0.f.f15172b.execute(new com.yunpan.appmanage.util.l(Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler(), new u0.c(str4, context, bVar2, i12, 1), new u0.d(i14, str4), i13));
                                }
                            } finally {
                            }
                        }
                    }
                }
            } else {
                typefaceCreate = Typeface.create(str2, 0);
                Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
                if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
                }
                if (typefaceCreate == null) {
                }
            }
        } else {
            typefaceU = f12547a.u(context, (o0.f) eVar, resources, i12);
            if (bVar != null) {
                if (typefaceU != null) {
                    new Handler(Looper.getMainLooper()).post(new c0(bVar, i15, typefaceU));
                } else {
                    bVar.a(-3);
                }
            }
        }
        if (typefaceU != null) {
            f12548b.c(b(resources, i10, str, i11, i12), typefaceU);
        }
        return typefaceU;
    }

    public static String b(Resources resources, int i10, String str, int i11, int i12) {
        return resources.getResourcePackageName(i10) + '-' + str + '-' + i11 + '-' + i10 + '-' + i12;
    }
}

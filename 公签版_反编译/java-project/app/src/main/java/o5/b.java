package o5;

import a2.k1;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class b implements f5.l {

    /* renamed from: b, reason: collision with root package name */
    public static final f5.h f11579b = f5.h.a(90, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality");

    /* renamed from: c, reason: collision with root package name */
    public static final f5.h f11580c = new f5.h("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, f5.h.f5619e);

    /* renamed from: a, reason: collision with root package name */
    public final k1 f11581a;

    public b(k1 k1Var) {
        this.f11581a = k1Var;
    }

    @Override // f5.l
    public final int f(f5.i iVar) {
        return 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0076  */
    @Override // f5.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean g(Object obj, File file, f5.i iVar) throws Throwable {
        boolean z;
        Bitmap bitmap = (Bitmap) ((h5.z) obj).get();
        f5.h hVar = f11580c;
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) iVar.c(hVar);
        if (compressFormat == null) {
            compressFormat = bitmap.hasAlpha() ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG;
        }
        bitmap.getWidth();
        bitmap.getHeight();
        int i10 = a6.k.f434a;
        SystemClock.elapsedRealtimeNanos();
        int iIntValue = ((Integer) iVar.c(f11579b)).intValue();
        OutputStream cVar = null;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            k1 k1Var = this.f11581a;
            if (k1Var != null) {
                try {
                    cVar = new com.bumptech.glide.load.data.c(fileOutputStream, k1Var);
                } catch (IOException unused) {
                    cVar = fileOutputStream;
                    if (cVar != null) {
                        try {
                            cVar.close();
                        } catch (IOException unused2) {
                        }
                    }
                    z = false;
                    if (Log.isLoggable("BitmapEncoder", 2)) {
                    }
                    return z;
                } catch (Throwable th2) {
                    th = th2;
                    cVar = fileOutputStream;
                    if (cVar != null) {
                        try {
                            cVar.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } else {
                cVar = fileOutputStream;
            }
            bitmap.compress(compressFormat, iIntValue, cVar);
            cVar.close();
            try {
                cVar.close();
            } catch (IOException unused4) {
            }
            z = true;
        } catch (IOException unused5) {
        } catch (Throwable th3) {
            th = th3;
        }
        if (Log.isLoggable("BitmapEncoder", 2)) {
            if (compressFormat != null) {
                compressFormat.toString();
            }
            a6.q.c(bitmap);
            SystemClock.elapsedRealtimeNanos();
            Object objC = iVar.c(hVar);
            if (objC != null) {
                objC.toString();
            }
            bitmap.hasAlpha();
        }
        return z;
    }
}

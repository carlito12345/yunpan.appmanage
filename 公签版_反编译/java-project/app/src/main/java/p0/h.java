package p0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import l5.y;

/* loaded from: classes.dex */
public class h extends y {

    /* renamed from: c, reason: collision with root package name */
    public static Class f12549c = null;

    /* renamed from: d, reason: collision with root package name */
    public static Constructor f12550d = null;

    /* renamed from: e, reason: collision with root package name */
    public static Method f12551e = null;

    /* renamed from: f, reason: collision with root package name */
    public static Method f12552f = null;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f12553g = false;

    public h() {
        super((byte) 0, 9);
    }

    public static boolean O(int i10, Object obj, String str, boolean z) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Q();
        try {
            return ((Boolean) f12551e.invoke(obj, str, Integer.valueOf(i10), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e7) {
            throw new RuntimeException(e7);
        }
    }

    public static File P(ParcelFileDescriptor parcelFileDescriptor) throws ErrnoException {
        try {
            String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(str).st_mode)) {
                return new File(str);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    public static void Q() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Method method;
        Class<?> cls;
        Method method2;
        if (f12553g) {
            return;
        }
        f12553g = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            method = null;
            cls = null;
            method2 = null;
        }
        f12550d = constructor;
        f12549c = cls;
        f12551e = method2;
        f12552f = method;
    }

    @Override // l5.y
    public Typeface u(Context context, o0.f fVar, Resources resources, int i10) throws IllegalAccessException, NoSuchMethodException, InstantiationException, ClassNotFoundException, SecurityException, ArrayIndexOutOfBoundsException, IllegalArgumentException, InvocationTargetException, NegativeArraySizeException {
        Q();
        try {
            Object objNewInstance = f12550d.newInstance(null);
            for (o0.g gVar : fVar.f11456a) {
                File fileL = nh.b.L(context);
                if (fileL == null) {
                    return null;
                }
                try {
                    if (!nh.b.n(fileL, resources, gVar.f11462f)) {
                        return null;
                    }
                    if (!O(gVar.f11458b, objNewInstance, fileL.getPath(), gVar.f11459c)) {
                        return null;
                    }
                    fileL.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    fileL.delete();
                }
            }
            Q();
            try {
                Object objNewInstance2 = Array.newInstance((Class<?>) f12549c, 1);
                Array.set(objNewInstance2, 0, objNewInstance);
                return (Typeface) f12552f.invoke(null, objNewInstance2);
            } catch (IllegalAccessException | InvocationTargetException e7) {
                throw new RuntimeException(e7);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // l5.y
    public Typeface v(Context context, u0.g[] gVarArr, int i10) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        if (gVarArr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(z(gVarArr, i10).f15175a, "r", null);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                File fileP = P(parcelFileDescriptorOpenFileDescriptor);
                if (fileP != null && fileP.canRead()) {
                    Typeface typefaceCreateFromFile = Typeface.createFromFile(fileP);
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceCreateFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    Typeface typefaceW = w(context, fileInputStream);
                    fileInputStream.close();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceW;
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    parcelFileDescriptorOpenFileDescriptor.close();
                } catch (Throwable th5) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th4, th5);
                    } catch (Exception unused2) {
                    }
                }
                throw th4;
            }
        } catch (IOException unused3) {
            return null;
        }
    }
}

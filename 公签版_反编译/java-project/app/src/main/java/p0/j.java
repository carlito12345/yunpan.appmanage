package p0;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class j extends h {

    /* renamed from: h, reason: collision with root package name */
    public final Class f12558h;

    /* renamed from: i, reason: collision with root package name */
    public final Constructor f12559i;

    /* renamed from: j, reason: collision with root package name */
    public final Method f12560j;

    /* renamed from: k, reason: collision with root package name */
    public final Method f12561k;
    public final Method l;

    /* renamed from: m, reason: collision with root package name */
    public final Method f12562m;

    /* renamed from: n, reason: collision with root package name */
    public final Method f12563n;

    public j() throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        Method methodX;
        Constructor<?> constructor;
        Method methodW;
        Method method;
        Method method2;
        Method method3;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            methodW = W(cls2);
            Class<?> cls3 = Integer.TYPE;
            method = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method2 = cls2.getMethod("freeze", null);
            method3 = cls2.getMethod("abortCreation", null);
            methodX = X(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            methodX = null;
            constructor = null;
            methodW = null;
            method = null;
            method2 = null;
            method3 = null;
        }
        this.f12558h = cls;
        this.f12559i = constructor;
        this.f12560j = methodW;
        this.f12561k = method;
        this.l = method2;
        this.f12562m = method3;
        this.f12563n = methodX;
    }

    public static Method W(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public final void R(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            this.f12562m.invoke(obj, null);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public final boolean S(Context context, Object obj, String str, int i10, int i11, int i12, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f12560j.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Typeface T(Object obj) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) this.f12558h, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f12563n.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean U(Object obj) {
        try {
            return ((Boolean) this.l.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final Object V() {
        try {
            return this.f12559i.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    public Method X(Class cls) throws NoSuchMethodException, SecurityException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance((Class<?>) cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // p0.h, l5.y
    public final Typeface u(Context context, o0.f fVar, Resources resources, int i10) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f12560j == null) {
            return super.u(context, fVar, resources, i10);
        }
        Object objV = V();
        if (objV == null) {
            return null;
        }
        for (o0.g gVar : fVar.f11456a) {
            if (!S(context, objV, gVar.f11457a, gVar.f11461e, gVar.f11458b, gVar.f11459c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(gVar.f11460d))) {
                R(objV);
                return null;
            }
        }
        if (U(objV)) {
            return T(objV);
        }
        return null;
    }

    @Override // p0.h, l5.y
    public final Typeface v(Context context, u0.g[] gVarArr, int i10) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        Typeface typefaceT;
        boolean zBooleanValue;
        if (gVarArr.length < 1) {
            return null;
        }
        if (this.f12560j == null) {
            u0.g gVarZ = z(gVarArr, i10);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(gVarZ.f15175a, "r", null);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(gVarZ.f15177c).setItalic(gVarZ.f15178d).build();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } catch (Throwable th2) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            } catch (IOException unused2) {
                return null;
            }
        }
        HashMap map = new HashMap();
        for (u0.g gVar : gVarArr) {
            if (gVar.f15179e == 0) {
                Uri uri = gVar.f15175a;
                if (!map.containsKey(uri)) {
                    map.put(uri, nh.b.Z(context, uri));
                }
            }
        }
        Map mapUnmodifiableMap = Collections.unmodifiableMap(map);
        Object objV = V();
        if (objV == null) {
            return null;
        }
        boolean z = false;
        for (u0.g gVar2 : gVarArr) {
            ByteBuffer byteBuffer = (ByteBuffer) mapUnmodifiableMap.get(gVar2.f15175a);
            if (byteBuffer != null) {
                try {
                    zBooleanValue = ((Boolean) this.f12561k.invoke(objV, byteBuffer, Integer.valueOf(gVar2.f15176b), null, Integer.valueOf(gVar2.f15177c), Integer.valueOf(gVar2.f15178d ? 1 : 0))).booleanValue();
                } catch (IllegalAccessException | InvocationTargetException unused3) {
                    zBooleanValue = false;
                }
                if (!zBooleanValue) {
                    R(objV);
                    return null;
                }
                z = true;
            }
        }
        if (!z) {
            R(objV);
            return null;
        }
        if (U(objV) && (typefaceT = T(objV)) != null) {
            return Typeface.create(typefaceT, i10);
        }
        return null;
    }

    @Override // l5.y
    public final Typeface x(Context context, Resources resources, int i10, String str, int i11) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f12560j == null) {
            return super.x(context, resources, i10, str, i11);
        }
        Object objV = V();
        if (objV == null) {
            return null;
        }
        if (!S(context, objV, str, 0, -1, -1, null)) {
            R(objV);
            return null;
        }
        if (U(objV)) {
            return T(objV);
        }
        return null;
    }
}

package p0;

import a0.t;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.util.List;
import l5.y;

/* loaded from: classes.dex */
public final class i extends y {

    /* renamed from: c, reason: collision with root package name */
    public static final Class f12554c;

    /* renamed from: d, reason: collision with root package name */
    public static final Constructor f12555d;

    /* renamed from: e, reason: collision with root package name */
    public static final Method f12556e;

    /* renamed from: f, reason: collision with root package name */
    public static final Method f12557f;

    static {
        Method method;
        Class<?> cls;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(null);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            method = null;
            cls = null;
            method2 = null;
        }
        f12555d = constructor;
        f12554c = cls;
        f12556e = method2;
        f12557f = method;
    }

    public i() {
        super((byte) 0, 9);
    }

    public static boolean O(Object obj, ByteBuffer byteBuffer, int i10, int i11, boolean z) {
        try {
            return ((Boolean) f12556e.invoke(obj, byteBuffer, Integer.valueOf(i10), null, Integer.valueOf(i11), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface P(Object obj) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        try {
            Object objNewInstance = Array.newInstance((Class<?>) f12554c, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f12557f.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // l5.y
    public final Typeface u(Context context, o0.f fVar, Resources resources, int i10) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        Object objNewInstance;
        MappedByteBuffer mappedByteBufferA0;
        try {
            objNewInstance = f12555d.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        for (o0.g gVar : fVar.f11456a) {
            int i11 = gVar.f11462f;
            File fileL = nh.b.L(context);
            if (fileL != null) {
                try {
                    mappedByteBufferA0 = !nh.b.n(fileL, resources, i11) ? null : nh.b.a0(fileL);
                } finally {
                    fileL.delete();
                }
            }
            if (mappedByteBufferA0 == null) {
                return null;
            }
            if (!O(objNewInstance, mappedByteBufferA0, gVar.f11461e, gVar.f11458b, gVar.f11459c)) {
                return null;
            }
        }
        return P(objNewInstance);
    }

    @Override // l5.y
    public final Typeface v(Context context, u0.g[] gVarArr, int i10) throws IllegalAccessException, InstantiationException, IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException, InvocationTargetException, NegativeArraySizeException {
        Object objNewInstance;
        try {
            objNewInstance = f12555d.newInstance(null);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            objNewInstance = null;
        }
        if (objNewInstance == null) {
            return null;
        }
        t tVar = new t(0);
        for (u0.g gVar : gVarArr) {
            Uri uri = gVar.f15175a;
            ByteBuffer byteBufferZ = (ByteBuffer) tVar.get(uri);
            if (byteBufferZ == null) {
                byteBufferZ = nh.b.Z(context, uri);
                tVar.put(uri, byteBufferZ);
            }
            if (byteBufferZ == null) {
                return null;
            }
            if (!O(objNewInstance, byteBufferZ, gVar.f15176b, gVar.f15177c, gVar.f15178d)) {
                return null;
            }
        }
        Typeface typefaceP = P(objNewInstance);
        if (typefaceP == null) {
            return null;
        }
        return Typeface.create(typefaceP, i10);
    }
}

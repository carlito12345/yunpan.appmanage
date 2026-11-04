package o0;

import a2.c0;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.util.TypedValue;
import java.io.IOException;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class o {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f11472a = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f11473b = new WeakHashMap(0);

    /* renamed from: c, reason: collision with root package name */
    public static final Object f11474c = new Object();

    public static void a(m mVar, int i10, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f11474c) {
            try {
                WeakHashMap weakHashMap = f11473b;
                SparseArray sparseArray = (SparseArray) weakHashMap.get(mVar);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    weakHashMap.put(mVar, sparseArray);
                }
                sparseArray.append(i10, new l(colorStateList, mVar.f11470a.getConfiguration(), theme));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Drawable b(Resources resources, int i10, Resources.Theme theme) {
        return Build.VERSION.SDK_INT >= 21 ? j.a(resources, i10, theme) : resources.getDrawable(i10);
    }

    public static Typeface c(Context context, int i10, TypedValue typedValue, int i11, b bVar, boolean z, boolean z4) throws Resources.NotFoundException {
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i10) + "\" (" + Integer.toHexString(i10) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        Typeface typefaceA = null;
        if (string.startsWith("res/")) {
            int i12 = typedValue.assetCookie;
            a0.m mVar = p0.g.f12548b;
            Typeface typeface = (Typeface) mVar.a(p0.g.b(resources, i10, string, i12, i11));
            if (typeface != null) {
                if (bVar != null) {
                    new Handler(Looper.getMainLooper()).post(new c0(bVar, 27, typeface));
                }
                typefaceA = typeface;
            } else if (!z4) {
                try {
                    if (string.toLowerCase().endsWith(".xml")) {
                        e eVarJ = b.j(resources.getXml(i10), resources);
                        if (eVarJ != null) {
                            typefaceA = p0.g.a(context, eVarJ, resources, i10, string, typedValue.assetCookie, i11, bVar, z);
                        } else if (bVar != null) {
                            bVar.a(-3);
                        }
                    } else {
                        int i13 = typedValue.assetCookie;
                        Typeface typefaceX = p0.g.f12547a.x(context, resources, i10, string, i11);
                        if (typefaceX != null) {
                            mVar.c(p0.g.b(resources, i10, string, i13, i11), typefaceX);
                        }
                        if (bVar != null) {
                            if (typefaceX != null) {
                                new Handler(Looper.getMainLooper()).post(new c0(bVar, 27, typefaceX));
                            } else {
                                bVar.a(-3);
                            }
                        }
                        typefaceA = typefaceX;
                    }
                } catch (IOException | XmlPullParserException unused) {
                    if (bVar != null) {
                        bVar.a(-3);
                    }
                }
            }
        } else if (bVar != null) {
            bVar.a(-3);
        }
        if (typefaceA != null || bVar != null || z4) {
            return typefaceA;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i10) + " could not be retrieved.");
    }
}

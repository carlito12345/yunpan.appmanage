package q0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public abstract class d {
    public static Uri a(Object obj) {
        if (Build.VERSION.SDK_INT >= 28) {
            return f.d(obj);
        }
        try {
            return (Uri) obj.getClass().getMethod("getUri", null).invoke(obj, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    public static Drawable b(Icon icon, Context context) {
        return icon.loadDrawable(context);
    }

    public static Icon c(IconCompat iconCompat, Context context) throws FileNotFoundException {
        Icon iconCreateWithBitmap;
        int i10;
        int i11 = iconCompat.f1065a;
        String strB = null;
        inputStreamOpenInputStream = null;
        InputStream inputStreamOpenInputStream = null;
        switch (i11) {
            case -1:
                return (Icon) iconCompat.f1066b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f1066b);
                break;
            case 2:
                if (i11 == -1 && (i10 = Build.VERSION.SDK_INT) >= 23) {
                    Object obj = iconCompat.f1066b;
                    if (i10 >= 28) {
                        strB = f.b(obj);
                    } else {
                        try {
                            strB = (String) obj.getClass().getMethod("getResPackage", null).invoke(obj, null);
                        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                        }
                    }
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("called getResPackage() on " + iconCompat);
                    }
                    String str = iconCompat.f1074j;
                    strB = (str == null || TextUtils.isEmpty(str)) ? ((String) iconCompat.f1066b).split(":", -1)[0] : iconCompat.f1074j;
                }
                iconCreateWithBitmap = Icon.createWithResource(strB, iconCompat.f1069e);
                break;
            case 3:
                iconCreateWithBitmap = Icon.createWithData((byte[]) iconCompat.f1066b, iconCompat.f1069e, iconCompat.f1070f);
                break;
            case 4:
                iconCreateWithBitmap = Icon.createWithContentUri((String) iconCompat.f1066b);
                break;
            case 5:
                if (Build.VERSION.SDK_INT < 26) {
                    iconCreateWithBitmap = Icon.createWithBitmap(IconCompat.a((Bitmap) iconCompat.f1066b, false));
                    break;
                } else {
                    iconCreateWithBitmap = e.b((Bitmap) iconCompat.f1066b);
                    break;
                }
            case 6:
                if (Build.VERSION.SDK_INT >= 30) {
                    iconCreateWithBitmap = g.a(iconCompat.d());
                    break;
                } else {
                    if (context == null) {
                        throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + iconCompat.d());
                    }
                    Uri uriD = iconCompat.d();
                    String scheme = uriD.getScheme();
                    if ("content".equals(scheme) || "file".equals(scheme)) {
                        try {
                            inputStreamOpenInputStream = context.getContentResolver().openInputStream(uriD);
                        } catch (Exception unused2) {
                            uriD.toString();
                        }
                    } else {
                        try {
                            inputStreamOpenInputStream = new FileInputStream(new File((String) iconCompat.f1066b));
                        } catch (FileNotFoundException unused3) {
                            uriD.toString();
                        }
                    }
                    if (inputStreamOpenInputStream == null) {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + iconCompat.d());
                    }
                    if (Build.VERSION.SDK_INT < 26) {
                        iconCreateWithBitmap = Icon.createWithBitmap(IconCompat.a(BitmapFactory.decodeStream(inputStreamOpenInputStream), false));
                        break;
                    } else {
                        iconCreateWithBitmap = e.b(BitmapFactory.decodeStream(inputStreamOpenInputStream));
                        break;
                    }
                }
                break;
        }
        ColorStateList colorStateList = iconCompat.f1071g;
        if (colorStateList != null) {
            iconCreateWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = iconCompat.f1072h;
        if (mode != IconCompat.f1064k) {
            iconCreateWithBitmap.setTintMode(mode);
        }
        return iconCreateWithBitmap;
    }
}

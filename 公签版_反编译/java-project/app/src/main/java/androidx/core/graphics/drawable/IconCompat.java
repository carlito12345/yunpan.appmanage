package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.reflect.InvocationTargetException;
import q0.d;
import q0.f;

/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f1064k = PorterDuff.Mode.SRC_IN;

    /* renamed from: a, reason: collision with root package name */
    public int f1065a;

    /* renamed from: b, reason: collision with root package name */
    public Object f1066b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f1067c;

    /* renamed from: d, reason: collision with root package name */
    public Parcelable f1068d;

    /* renamed from: e, reason: collision with root package name */
    public int f1069e;

    /* renamed from: f, reason: collision with root package name */
    public int f1070f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f1071g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f1072h;

    /* renamed from: i, reason: collision with root package name */
    public String f1073i;

    /* renamed from: j, reason: collision with root package name */
    public String f1074j;

    public IconCompat() {
        this.f1065a = -1;
        this.f1067c = null;
        this.f1068d = null;
        this.f1069e = 0;
        this.f1070f = 0;
        this.f1071g = null;
        this.f1072h = f1064k;
        this.f1073i = null;
    }

    public static Bitmap a(Bitmap bitmap, boolean z) {
        int iMin = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        float f10 = iMin;
        float f11 = 0.5f * f10;
        float f12 = 0.9166667f * f11;
        if (z) {
            float f13 = 0.010416667f * f10;
            paint.setColor(0);
            paint.setShadowLayer(f13, 0.0f, f10 * 0.020833334f, 1023410176);
            canvas.drawCircle(f11, f11, f12, paint);
            paint.setShadowLayer(f13, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f11, f11, f12, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2.0f, (-(bitmap.getHeight() - iMin)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f11, f11, f12, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public static IconCompat b(int i10) {
        if (i10 == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(0);
        iconCompat.f1069e = i10;
        iconCompat.f1066b = "";
        iconCompat.f1074j = "";
        return iconCompat;
    }

    public final int c() {
        int i10;
        int i11 = this.f1065a;
        if (i11 != -1 || (i10 = Build.VERSION.SDK_INT) < 23) {
            if (i11 == 2) {
                return this.f1069e;
            }
            throw new IllegalStateException("called getResId() on " + this);
        }
        Object obj = this.f1066b;
        if (i10 >= 28) {
            return f.a(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getResId", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return 0;
        }
    }

    public final Uri d() {
        int i10 = this.f1065a;
        if (i10 == -1 && Build.VERSION.SDK_INT >= 23) {
            return d.a(this.f1066b);
        }
        if (i10 == 4 || i10 == 6) {
            return Uri.parse((String) this.f1066b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    public final String toString() {
        String str;
        if (this.f1065a == -1) {
            return String.valueOf(this.f1066b);
        }
        StringBuilder sb2 = new StringBuilder("Icon(typ=");
        switch (this.f1065a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb2.append(str);
        switch (this.f1065a) {
            case 1:
            case 5:
                sb2.append(" size=");
                sb2.append(((Bitmap) this.f1066b).getWidth());
                sb2.append("x");
                sb2.append(((Bitmap) this.f1066b).getHeight());
                break;
            case 2:
                sb2.append(" pkg=");
                sb2.append(this.f1074j);
                sb2.append(" id=");
                sb2.append(String.format("0x%08x", Integer.valueOf(c())));
                break;
            case 3:
                sb2.append(" len=");
                sb2.append(this.f1069e);
                if (this.f1070f != 0) {
                    sb2.append(" off=");
                    sb2.append(this.f1070f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb2.append(" uri=");
                sb2.append(this.f1066b);
                break;
        }
        if (this.f1071g != null) {
            sb2.append(" tint=");
            sb2.append(this.f1071g);
        }
        if (this.f1072h != f1064k) {
            sb2.append(" mode=");
            sb2.append(this.f1072h);
        }
        sb2.append(")");
        return sb2.toString();
    }

    public IconCompat(int i10) {
        this.f1067c = null;
        this.f1068d = null;
        this.f1069e = 0;
        this.f1070f = 0;
        this.f1071g = null;
        this.f1072h = f1064k;
        this.f1073i = null;
        this.f1065a = 2;
    }
}

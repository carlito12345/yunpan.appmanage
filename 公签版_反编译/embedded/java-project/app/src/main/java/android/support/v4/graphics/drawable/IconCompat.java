package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {
    public static final PorterDuff.Mode j = PorterDuff.Mode.SRC_IN;

    /* renamed from: a, reason: collision with root package name */
    public int f6a;

    /* renamed from: b, reason: collision with root package name */
    public Object f7b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f8c;

    /* renamed from: d, reason: collision with root package name */
    public Parcelable f9d;

    /* renamed from: e, reason: collision with root package name */
    public int f10e;

    /* renamed from: f, reason: collision with root package name */
    public int f11f;
    public ColorStateList g = null;
    public PorterDuff.Mode h = j;
    public String i;

    /* JADX WARN: Removed duplicated region for block: B:50:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0170  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String toString() {
        String resPackage;
        int i;
        if (this.f6a == -1) {
            return String.valueOf(this.f7b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        int i2 = this.f6a;
        sb.append(i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? "UNKNOWN" : "BITMAP_MASKABLE" : "URI" : "DATA" : "RESOURCE" : "BITMAP");
        int i3 = this.f6a;
        if (i3 == 1) {
            sb.append(" size=");
            sb.append(((Bitmap) this.f7b).getWidth());
            sb.append("x");
            sb.append(((Bitmap) this.f7b).getHeight());
        } else if (i3 == 2) {
            sb.append(" pkg=");
            int i4 = this.f6a;
            int iIntValue = 0;
            if (i4 == -1) {
                int i5 = Build.VERSION.SDK_INT;
                Icon icon = (Icon) this.f7b;
                if (i5 >= 28) {
                    resPackage = icon.getResPackage();
                } else {
                    try {
                        resPackage = (String) icon.getClass().getMethod("getResPackage", null).invoke(icon, null);
                    } catch (IllegalAccessException e2) {
                        Log.e("IconCompat", "Unable to get icon package", e2);
                        resPackage = null;
                        sb.append(resPackage);
                        sb.append(" id=");
                        i = this.f6a;
                        if (i != -1) {
                        }
                        sb.append(String.format("0x%08x", Integer.valueOf(iIntValue)));
                        if (this.g != null) {
                        }
                        if (this.h != j) {
                        }
                        sb.append(")");
                        return sb.toString();
                    } catch (NoSuchMethodException e3) {
                        Log.e("IconCompat", "Unable to get icon package", e3);
                        resPackage = null;
                        sb.append(resPackage);
                        sb.append(" id=");
                        i = this.f6a;
                        if (i != -1) {
                        }
                        sb.append(String.format("0x%08x", Integer.valueOf(iIntValue)));
                        if (this.g != null) {
                        }
                        if (this.h != j) {
                        }
                        sb.append(")");
                        return sb.toString();
                    } catch (InvocationTargetException e4) {
                        Log.e("IconCompat", "Unable to get icon package", e4);
                        resPackage = null;
                        sb.append(resPackage);
                        sb.append(" id=");
                        i = this.f6a;
                        if (i != -1) {
                        }
                        sb.append(String.format("0x%08x", Integer.valueOf(iIntValue)));
                        if (this.g != null) {
                        }
                        if (this.h != j) {
                        }
                        sb.append(")");
                        return sb.toString();
                    }
                }
            } else {
                if (i4 != 2) {
                    throw new IllegalStateException("called getResPackage() on " + this);
                }
                resPackage = ((String) this.f7b).split(":", -1)[0];
            }
            sb.append(resPackage);
            sb.append(" id=");
            i = this.f6a;
            if (i != -1) {
                int i6 = Build.VERSION.SDK_INT;
                Icon icon2 = (Icon) this.f7b;
                if (i6 >= 28) {
                    iIntValue = icon2.getResId();
                } else {
                    try {
                        iIntValue = ((Integer) icon2.getClass().getMethod("getResId", null).invoke(icon2, null)).intValue();
                    } catch (IllegalAccessException e5) {
                        Log.e("IconCompat", "Unable to get icon resource", e5);
                    } catch (NoSuchMethodException e6) {
                        Log.e("IconCompat", "Unable to get icon resource", e6);
                    } catch (InvocationTargetException e7) {
                        Log.e("IconCompat", "Unable to get icon resource", e7);
                    }
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException("called getResId() on " + this);
                }
                iIntValue = this.f10e;
            }
            sb.append(String.format("0x%08x", Integer.valueOf(iIntValue)));
        } else if (i3 == 3) {
            sb.append(" len=");
            sb.append(this.f10e);
            if (this.f11f != 0) {
                sb.append(" off=");
                sb.append(this.f11f);
            }
        } else if (i3 == 4) {
            sb.append(" uri=");
            sb.append(this.f7b);
        } else if (i3 == 5) {
        }
        if (this.g != null) {
            sb.append(" tint=");
            sb.append(this.g);
        }
        if (this.h != j) {
            sb.append(" mode=");
            sb.append(this.h);
        }
        sb.append(")");
        return sb.toString();
    }
}

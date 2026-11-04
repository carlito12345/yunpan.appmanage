package m0;

import android.app.PendingIntent;
import android.os.Build;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f10768a;

    /* renamed from: b, reason: collision with root package name */
    public IconCompat f10769b;

    /* renamed from: c, reason: collision with root package name */
    public final q0[] f10770c;

    /* renamed from: d, reason: collision with root package name */
    public final q0[] f10771d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f10772e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f10773f;

    /* renamed from: g, reason: collision with root package name */
    public final int f10774g;

    /* renamed from: h, reason: collision with root package name */
    public final CharSequence f10775h;

    /* renamed from: i, reason: collision with root package name */
    public final PendingIntent f10776i;

    /* JADX WARN: Removed duplicated region for block: B:25:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public n(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, q0[] q0VarArr, q0[] q0VarArr2) {
        int i10;
        this.f10773f = true;
        this.f10769b = iconCompat;
        if (iconCompat != null) {
            int iIntValue = iconCompat.f1065a;
            if (iIntValue == -1 && (i10 = Build.VERSION.SDK_INT) >= 23) {
                Object obj = iconCompat.f1066b;
                if (i10 >= 28) {
                    iIntValue = q0.f.c(obj);
                } else {
                    try {
                        iIntValue = ((Integer) obj.getClass().getMethod("getType", null).invoke(obj, null)).intValue();
                    } catch (IllegalAccessException unused) {
                        if (obj != null) {
                            obj.toString();
                        }
                        iIntValue = -1;
                        if (iIntValue == 2) {
                        }
                        this.f10775h = q.b(charSequence);
                        this.f10776i = pendingIntent;
                        this.f10768a = bundle;
                        this.f10770c = q0VarArr;
                        this.f10771d = q0VarArr2;
                        this.f10772e = true;
                        this.f10773f = true;
                    } catch (NoSuchMethodException unused2) {
                        if (obj != null) {
                            obj.toString();
                        }
                        iIntValue = -1;
                        if (iIntValue == 2) {
                        }
                        this.f10775h = q.b(charSequence);
                        this.f10776i = pendingIntent;
                        this.f10768a = bundle;
                        this.f10770c = q0VarArr;
                        this.f10771d = q0VarArr2;
                        this.f10772e = true;
                        this.f10773f = true;
                    } catch (InvocationTargetException unused3) {
                        if (obj != null) {
                            obj.toString();
                        }
                        iIntValue = -1;
                        if (iIntValue == 2) {
                        }
                        this.f10775h = q.b(charSequence);
                        this.f10776i = pendingIntent;
                        this.f10768a = bundle;
                        this.f10770c = q0VarArr;
                        this.f10771d = q0VarArr2;
                        this.f10772e = true;
                        this.f10773f = true;
                    }
                }
            }
            if (iIntValue == 2) {
                this.f10774g = iconCompat.c();
            }
        }
        this.f10775h = q.b(charSequence);
        this.f10776i = pendingIntent;
        this.f10768a = bundle;
        this.f10770c = q0VarArr;
        this.f10771d = q0VarArr2;
        this.f10772e = true;
        this.f10773f = true;
    }

    public final IconCompat a() {
        int i10;
        if (this.f10769b == null && (i10 = this.f10774g) != 0) {
            this.f10769b = IconCompat.b(i10);
        }
        return this.f10769b;
    }
}

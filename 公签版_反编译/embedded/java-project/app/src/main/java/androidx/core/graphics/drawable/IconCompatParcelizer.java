package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.graphics.drawable.IconCompat;
import e.a;
import e.b;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Removed duplicated region for block: B:22:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static IconCompat read(a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f6a = aVar.d(iconCompat.f6a, 1);
        byte[] bArr = iconCompat.f8c;
        if (aVar.c(2)) {
            Parcel parcel = ((b) aVar).f84b;
            int i = parcel.readInt();
            if (i < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.f8c = bArr;
        iconCompat.f9d = aVar.e(iconCompat.f9d, 3);
        iconCompat.f10e = aVar.d(iconCompat.f10e, 4);
        iconCompat.f11f = aVar.d(iconCompat.f11f, 5);
        iconCompat.g = (ColorStateList) aVar.e(iconCompat.g, 6);
        String string = iconCompat.i;
        if (aVar.c(7)) {
            string = ((b) aVar).f84b.readString();
        }
        iconCompat.i = string;
        iconCompat.h = PorterDuff.Mode.valueOf(string);
        int i2 = iconCompat.f6a;
        if (i2 == -1) {
            Parcelable parcelable = iconCompat.f9d;
            if (parcelable == null) {
                throw new IllegalArgumentException("Invalid icon");
            }
            iconCompat.f7b = parcelable;
        } else if (i2 == 1) {
            Parcelable parcelable2 = iconCompat.f9d;
            if (parcelable2 != null) {
                iconCompat.f7b = parcelable2;
            } else {
                byte[] bArr3 = iconCompat.f8c;
                iconCompat.f7b = bArr3;
                iconCompat.f6a = 3;
                iconCompat.f10e = 0;
                iconCompat.f11f = bArr3.length;
            }
        } else if (i2 == 2) {
            iconCompat.f7b = new String(iconCompat.f8c, Charset.forName("UTF-16"));
        } else if (i2 == 3) {
            iconCompat.f7b = iconCompat.f8c;
        } else if (i2 != 4) {
            if (i2 == 5) {
            }
        }
        return iconCompat;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void write(IconCompat iconCompat, a aVar) {
        aVar.getClass();
        iconCompat.i = iconCompat.h.name();
        int i = iconCompat.f6a;
        if (i == -1 || i == 1) {
            iconCompat.f9d = (Parcelable) iconCompat.f7b;
        } else if (i == 2) {
            iconCompat.f8c = ((String) iconCompat.f7b).getBytes(Charset.forName("UTF-16"));
        } else if (i == 3) {
            iconCompat.f8c = (byte[]) iconCompat.f7b;
        } else if (i == 4) {
            iconCompat.f8c = iconCompat.f7b.toString().getBytes(Charset.forName("UTF-16"));
        } else if (i == 5) {
        }
        aVar.h(iconCompat.f6a, 1);
        byte[] bArr = iconCompat.f8c;
        aVar.g(2);
        Parcel parcel = ((b) aVar).f84b;
        if (bArr != null) {
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        } else {
            parcel.writeInt(-1);
        }
        Parcelable parcelable = iconCompat.f9d;
        aVar.g(3);
        parcel.writeParcelable(parcelable, 0);
        aVar.h(iconCompat.f10e, 4);
        aVar.h(iconCompat.f11f, 5);
        ColorStateList colorStateList = iconCompat.g;
        aVar.g(6);
        parcel.writeParcelable(colorStateList, 0);
        String str = iconCompat.i;
        aVar.g(7);
        parcel.writeString(str);
    }
}

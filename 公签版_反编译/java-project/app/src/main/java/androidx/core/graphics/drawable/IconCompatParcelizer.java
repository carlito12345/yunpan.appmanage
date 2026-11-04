package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcel;
import android.os.Parcelable;
import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import j4.a;
import j4.b;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1065a = aVar.f(iconCompat.f1065a, 1);
        byte[] bArr = iconCompat.f1067c;
        if (aVar.e(2)) {
            Parcel parcel = ((b) aVar).f9745e;
            int i10 = parcel.readInt();
            if (i10 < 0) {
                bArr = null;
            } else {
                byte[] bArr2 = new byte[i10];
                parcel.readByteArray(bArr2);
                bArr = bArr2;
            }
        }
        iconCompat.f1067c = bArr;
        iconCompat.f1068d = aVar.g(iconCompat.f1068d, 3);
        iconCompat.f1069e = aVar.f(iconCompat.f1069e, 4);
        iconCompat.f1070f = aVar.f(iconCompat.f1070f, 5);
        iconCompat.f1071g = (ColorStateList) aVar.g(iconCompat.f1071g, 6);
        String string = iconCompat.f1073i;
        if (aVar.e(7)) {
            string = ((b) aVar).f9745e.readString();
        }
        iconCompat.f1073i = string;
        String string2 = iconCompat.f1074j;
        if (aVar.e(8)) {
            string2 = ((b) aVar).f9745e.readString();
        }
        iconCompat.f1074j = string2;
        iconCompat.f1072h = PorterDuff.Mode.valueOf(iconCompat.f1073i);
        switch (iconCompat.f1065a) {
            case -1:
                Parcelable parcelable = iconCompat.f1068d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.f1066b = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.f1068d;
                if (parcelable2 != null) {
                    iconCompat.f1066b = parcelable2;
                } else {
                    byte[] bArr3 = iconCompat.f1067c;
                    iconCompat.f1066b = bArr3;
                    iconCompat.f1065a = 3;
                    iconCompat.f1069e = 0;
                    iconCompat.f1070f = bArr3.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str = new String(iconCompat.f1067c, Charset.forName(HTTP.UTF_16));
                iconCompat.f1066b = str;
                if (iconCompat.f1065a == 2 && iconCompat.f1074j == null) {
                    iconCompat.f1074j = str.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.f1066b = iconCompat.f1067c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, a aVar) {
        aVar.getClass();
        iconCompat.f1073i = iconCompat.f1072h.name();
        switch (iconCompat.f1065a) {
            case -1:
                iconCompat.f1068d = (Parcelable) iconCompat.f1066b;
                break;
            case 1:
            case 5:
                iconCompat.f1068d = (Parcelable) iconCompat.f1066b;
                break;
            case 2:
                iconCompat.f1067c = ((String) iconCompat.f1066b).getBytes(Charset.forName(HTTP.UTF_16));
                break;
            case 3:
                iconCompat.f1067c = (byte[]) iconCompat.f1066b;
                break;
            case 4:
            case 6:
                iconCompat.f1067c = iconCompat.f1066b.toString().getBytes(Charset.forName(HTTP.UTF_16));
                break;
        }
        int i10 = iconCompat.f1065a;
        if (-1 != i10) {
            aVar.j(i10, 1);
        }
        byte[] bArr = iconCompat.f1067c;
        if (bArr != null) {
            aVar.i(2);
            int length = bArr.length;
            Parcel parcel = ((b) aVar).f9745e;
            parcel.writeInt(length);
            parcel.writeByteArray(bArr);
        }
        Parcelable parcelable = iconCompat.f1068d;
        if (parcelable != null) {
            aVar.i(3);
            ((b) aVar).f9745e.writeParcelable(parcelable, 0);
        }
        int i11 = iconCompat.f1069e;
        if (i11 != 0) {
            aVar.j(i11, 4);
        }
        int i12 = iconCompat.f1070f;
        if (i12 != 0) {
            aVar.j(i12, 5);
        }
        ColorStateList colorStateList = iconCompat.f1071g;
        if (colorStateList != null) {
            aVar.i(6);
            ((b) aVar).f9745e.writeParcelable(colorStateList, 0);
        }
        String str = iconCompat.f1073i;
        if (str != null) {
            aVar.i(7);
            ((b) aVar).f9745e.writeString(str);
        }
        String str2 = iconCompat.f1074j;
        if (str2 != null) {
            aVar.i(8);
            ((b) aVar).f9745e.writeString(str2);
        }
    }
}

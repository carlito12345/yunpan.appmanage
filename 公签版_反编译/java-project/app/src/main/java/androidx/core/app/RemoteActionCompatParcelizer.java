package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcel;
import android.text.TextUtils;
import androidx.core.graphics.drawable.IconCompat;
import j4.a;
import j4.b;
import j4.c;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(a aVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        c cVarH = remoteActionCompat.f1053a;
        if (aVar.e(1)) {
            cVarH = aVar.h();
        }
        remoteActionCompat.f1053a = (IconCompat) cVarH;
        CharSequence charSequence = remoteActionCompat.f1054b;
        if (aVar.e(2)) {
            charSequence = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((b) aVar).f9745e);
        }
        remoteActionCompat.f1054b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f1055c;
        if (aVar.e(3)) {
            charSequence2 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((b) aVar).f9745e);
        }
        remoteActionCompat.f1055c = charSequence2;
        remoteActionCompat.f1056d = (PendingIntent) aVar.g(remoteActionCompat.f1056d, 4);
        boolean z = remoteActionCompat.f1057e;
        if (aVar.e(5)) {
            z = ((b) aVar).f9745e.readInt() != 0;
        }
        remoteActionCompat.f1057e = z;
        boolean z4 = remoteActionCompat.f1058f;
        if (aVar.e(6)) {
            z4 = ((b) aVar).f9745e.readInt() != 0;
        }
        remoteActionCompat.f1058f = z4;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, a aVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        aVar.getClass();
        IconCompat iconCompat = remoteActionCompat.f1053a;
        aVar.i(1);
        aVar.k(iconCompat);
        CharSequence charSequence = remoteActionCompat.f1054b;
        aVar.i(2);
        Parcel parcel = ((b) aVar).f9745e;
        TextUtils.writeToParcel(charSequence, parcel, 0);
        CharSequence charSequence2 = remoteActionCompat.f1055c;
        aVar.i(3);
        TextUtils.writeToParcel(charSequence2, parcel, 0);
        PendingIntent pendingIntent = remoteActionCompat.f1056d;
        aVar.i(4);
        parcel.writeParcelable(pendingIntent, 0);
        boolean z = remoteActionCompat.f1057e;
        aVar.i(5);
        parcel.writeInt(z ? 1 : 0);
        boolean z4 = remoteActionCompat.f1058f;
        aVar.i(6);
        parcel.writeInt(z4 ? 1 : 0);
    }
}

package ii;

import android.os.IBinder;
import android.os.Parcel;
import hi.b;
import hi.g;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f8693a;

    public static boolean a(String str) {
        IBinder strongBinder;
        IBinder iBinderA = g.a("activity");
        IBinder iBinder = null;
        if (iBinderA != null) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("android.app.IActivityManager");
                parcelObtain.writeInt(2);
                iBinderA.transact(1599296841, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                strongBinder = parcelObtain2.readStrongBinder();
            } finally {
                try {
                } finally {
                }
            }
            if (strongBinder != null) {
                parcelObtain.recycle();
                parcelObtain2.recycle();
                iBinder = strongBinder;
            }
        }
        if (iBinder == null) {
            f8693a = false;
            return false;
        }
        b.g(iBinder, str);
        f8693a = true;
        return true;
    }
}

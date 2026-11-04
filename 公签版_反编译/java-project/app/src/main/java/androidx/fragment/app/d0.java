package androidx.fragment.app;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.j2;
import w.l3;
import w.x2;

/* loaded from: classes.dex */
public final class d0 implements Parcelable.ClassLoaderCreator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1228a;

    public /* synthetic */ d0(int i10) {
        this.f1228a = i10;
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f1228a) {
            case 0:
                return new e0(parcel, classLoader);
            case 1:
                return new j2(parcel, classLoader);
            case 2:
                if (parcel.readParcelable(classLoader) == null) {
                    return e1.b.f4708b;
                }
                throw new IllegalStateException("superState must be null");
            case 3:
                return new g7.a(parcel, classLoader);
            case 4:
                return new k0.e(parcel, classLoader);
            case 5:
                return new k4.f(parcel, classLoader);
            case 6:
                return Build.VERSION.SDK_INT >= 24 ? new m4.n(parcel, classLoader) : new m4.n(parcel);
            case 7:
                return new n7.c(parcel, classLoader);
            case 8:
                return new q7.b0(parcel, classLoader);
            case 9:
                return new x2(parcel, classLoader);
            case 10:
                return new l3(parcel, classLoader);
            case 11:
                return new w6.a(parcel, classLoader);
            default:
                return new x6.b(parcel, classLoader);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        switch (this.f1228a) {
            case 0:
                return new e0[i10];
            case 1:
                return new j2[i10];
            case 2:
                return new e1.b[i10];
            case 3:
                return new g7.a[i10];
            case 4:
                return new k0.e[i10];
            case 5:
                return new k4.f[i10];
            case 6:
                return new m4.n[i10];
            case 7:
                return new n7.c[i10];
            case 8:
                return new q7.b0[i10];
            case 9:
                return new x2[i10];
            case 10:
                return new l3[i10];
            case 11:
                return new w6.a[i10];
            default:
                return new x6.b[i10];
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f1228a) {
            case 0:
                return new e0(parcel, null);
            case 1:
                return new j2(parcel, null);
            case 2:
                if (parcel.readParcelable(null) == null) {
                    return e1.b.f4708b;
                }
                throw new IllegalStateException("superState must be null");
            case 3:
                return new g7.a(parcel, null);
            case 4:
                return new k0.e(parcel, null);
            case 5:
                return new k4.f(parcel, null);
            case 6:
                if (Build.VERSION.SDK_INT >= 24) {
                    return new m4.n(parcel, null);
                }
                return new m4.n(parcel);
            case 7:
                return new n7.c(parcel, (ClassLoader) null);
            case 8:
                return new q7.b0(parcel, null);
            case 9:
                return new x2(parcel, null);
            case 10:
                return new l3(parcel, null);
            case 11:
                return new w6.a(parcel, (ClassLoader) null);
            default:
                return new x6.b(parcel, null);
        }
    }
}

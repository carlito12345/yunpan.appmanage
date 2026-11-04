package mb;

import android.os.Parcel;
import android.os.Parcelable;
import w.o0;

/* loaded from: classes.dex */
public final class r implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11109a;

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f11109a) {
            case 0:
                s sVar = new s();
                sVar.f11110b = parcel.readInt();
                sVar.f11112d = parcel.readInt();
                sVar.f11111c = parcel.readInt();
                sVar.f11113e = parcel.readInt();
                sVar.f11115g = parcel.readString();
                return sVar;
            case 1:
                t tVar = new t();
                tVar.f11116b = parcel.readInt();
                tVar.f11118d = parcel.readInt();
                tVar.f11117c = parcel.readInt();
                tVar.f11119e = parcel.readInt();
                tVar.f11121g = parcel.readString();
                return tVar;
            case 2:
                u uVar = new u();
                for (int i10 = parcel.readInt(); i10 > 0; i10--) {
                    uVar.f11122b.add((q) parcel.readParcelable(u.class.getClassLoader()));
                }
                return uVar;
            case 3:
                v vVar = new v();
                vVar.f11123b = (t) parcel.readParcelable(v.class.getClassLoader());
                vVar.f11124c = (s) parcel.readParcelable(v.class.getClassLoader());
                return vVar;
            case 4:
                return new p9.a(parcel);
            case 5:
                return new p9.e(parcel);
            case 6:
                return new t6.b(parcel);
            default:
                return new o0(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i10) {
        switch (this.f11109a) {
            case 0:
                return new s[i10];
            case 1:
                return new t[i10];
            case 2:
                return new u[i10];
            case 3:
                return new v[i10];
            case 4:
                return new p9.a[i10];
            case 5:
                return new p9.e[i10];
            case 6:
                return new t6.b[i10];
            default:
                return new o0[i10];
        }
    }
}

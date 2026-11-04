package mb;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class v extends q {
    public static final Parcelable.Creator<v> CREATOR = new r(3);

    /* renamed from: b, reason: collision with root package name */
    public t f11123b;

    /* renamed from: c, reason: collision with root package name */
    public s f11124c;

    @Override // mb.q
    public final boolean a(q qVar) {
        return false;
    }

    @Override // mb.q
    public final void b(q qVar) {
        throw new UnsupportedOperationException();
    }

    @Override // mb.q
    public final void c(g gVar) {
        this.f11124c.c(gVar);
        this.f11123b.c(gVar);
    }

    @Override // mb.q
    public final void d(g gVar) {
        this.f11123b.d(gVar);
        this.f11124c.d(gVar);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "ReplaceAction{insert=" + this.f11123b + ", delete=" + this.f11124c + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f11123b, i10);
        parcel.writeParcelable(this.f11124c, i10);
    }
}

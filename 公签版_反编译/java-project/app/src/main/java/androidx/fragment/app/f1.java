package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class f1 implements Parcelable {
    public static final Parcelable.Creator<f1> CREATOR = new a7.b(15);

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f1263a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f1264b;

    /* renamed from: c, reason: collision with root package name */
    public b[] f1265c;

    /* renamed from: d, reason: collision with root package name */
    public int f1266d;

    /* renamed from: e, reason: collision with root package name */
    public String f1267e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f1268f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f1269g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f1270h;

    public f1() {
        this.f1267e = null;
        this.f1268f = new ArrayList();
        this.f1269g = new ArrayList();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeStringList(this.f1263a);
        parcel.writeStringList(this.f1264b);
        parcel.writeTypedArray(this.f1265c, i10);
        parcel.writeInt(this.f1266d);
        parcel.writeString(this.f1267e);
        parcel.writeStringList(this.f1268f);
        parcel.writeTypedList(this.f1269g);
        parcel.writeTypedList(this.f1270h);
    }

    public f1(Parcel parcel) {
        this.f1267e = null;
        this.f1268f = new ArrayList();
        this.f1269g = new ArrayList();
        this.f1263a = parcel.createStringArrayList();
        this.f1264b = parcel.createStringArrayList();
        this.f1265c = (b[]) parcel.createTypedArray(b.CREATOR);
        this.f1266d = parcel.readInt();
        this.f1267e = parcel.readString();
        this.f1268f = parcel.createStringArrayList();
        this.f1269g = parcel.createTypedArrayList(c.CREATOR);
        this.f1270h = parcel.createTypedArrayList(a1.CREATOR);
    }
}

package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a7.b(12);

    /* renamed from: a, reason: collision with root package name */
    public final int[] f1197a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1198b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f1199c;

    /* renamed from: d, reason: collision with root package name */
    public final int[] f1200d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1201e;

    /* renamed from: f, reason: collision with root package name */
    public final String f1202f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1203g;

    /* renamed from: h, reason: collision with root package name */
    public final int f1204h;

    /* renamed from: i, reason: collision with root package name */
    public final CharSequence f1205i;

    /* renamed from: j, reason: collision with root package name */
    public final int f1206j;

    /* renamed from: k, reason: collision with root package name */
    public final CharSequence f1207k;
    public final ArrayList l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f1208m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f1209n;

    public b(a aVar) {
        int size = aVar.f1161a.size();
        this.f1197a = new int[size * 6];
        if (!aVar.f1167g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f1198b = new ArrayList(size);
        this.f1199c = new int[size];
        this.f1200d = new int[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            m1 m1Var = (m1) aVar.f1161a.get(i11);
            int i12 = i10 + 1;
            this.f1197a[i10] = m1Var.f1341a;
            ArrayList arrayList = this.f1198b;
            Fragment fragment = m1Var.f1342b;
            arrayList.add(fragment != null ? fragment.mWho : null);
            int[] iArr = this.f1197a;
            iArr[i12] = m1Var.f1343c ? 1 : 0;
            iArr[i10 + 2] = m1Var.f1344d;
            iArr[i10 + 3] = m1Var.f1345e;
            int i13 = i10 + 5;
            iArr[i10 + 4] = m1Var.f1346f;
            i10 += 6;
            iArr[i13] = m1Var.f1347g;
            this.f1199c[i11] = m1Var.f1348h.ordinal();
            this.f1200d[i11] = m1Var.f1349i.ordinal();
        }
        this.f1201e = aVar.f1166f;
        this.f1202f = aVar.f1168h;
        this.f1203g = aVar.r;
        this.f1204h = aVar.f1169i;
        this.f1205i = aVar.f1170j;
        this.f1206j = aVar.f1171k;
        this.f1207k = aVar.l;
        this.l = aVar.f1172m;
        this.f1208m = aVar.f1173n;
        this.f1209n = aVar.f1174o;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeIntArray(this.f1197a);
        parcel.writeStringList(this.f1198b);
        parcel.writeIntArray(this.f1199c);
        parcel.writeIntArray(this.f1200d);
        parcel.writeInt(this.f1201e);
        parcel.writeString(this.f1202f);
        parcel.writeInt(this.f1203g);
        parcel.writeInt(this.f1204h);
        TextUtils.writeToParcel(this.f1205i, parcel, 0);
        parcel.writeInt(this.f1206j);
        TextUtils.writeToParcel(this.f1207k, parcel, 0);
        parcel.writeStringList(this.l);
        parcel.writeStringList(this.f1208m);
        parcel.writeInt(this.f1209n ? 1 : 0);
    }

    public b(Parcel parcel) {
        this.f1197a = parcel.createIntArray();
        this.f1198b = parcel.createStringArrayList();
        this.f1199c = parcel.createIntArray();
        this.f1200d = parcel.createIntArray();
        this.f1201e = parcel.readInt();
        this.f1202f = parcel.readString();
        this.f1203g = parcel.readInt();
        this.f1204h = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f1205i = (CharSequence) creator.createFromParcel(parcel);
        this.f1206j = parcel.readInt();
        this.f1207k = (CharSequence) creator.createFromParcel(parcel);
        this.l = parcel.createStringArrayList();
        this.f1208m = parcel.createStringArrayList();
        this.f1209n = parcel.readInt() != 0;
    }
}

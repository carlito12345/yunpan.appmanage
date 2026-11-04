package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class i1 implements Parcelable {
    public static final Parcelable.Creator<i1> CREATOR = new a7.b(16);

    /* renamed from: a, reason: collision with root package name */
    public final String f1292a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1293b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1294c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1295d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1296e;

    /* renamed from: f, reason: collision with root package name */
    public final String f1297f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f1298g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f1299h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f1300i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f1301j;

    /* renamed from: k, reason: collision with root package name */
    public final int f1302k;
    public final String l;

    /* renamed from: m, reason: collision with root package name */
    public final int f1303m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f1304n;

    public i1(Fragment fragment) {
        this.f1292a = fragment.getClass().getName();
        this.f1293b = fragment.mWho;
        this.f1294c = fragment.mFromLayout;
        this.f1295d = fragment.mFragmentId;
        this.f1296e = fragment.mContainerId;
        this.f1297f = fragment.mTag;
        this.f1298g = fragment.mRetainInstance;
        this.f1299h = fragment.mRemoving;
        this.f1300i = fragment.mDetached;
        this.f1301j = fragment.mHidden;
        this.f1302k = fragment.mMaxState.ordinal();
        this.l = fragment.mTargetWho;
        this.f1303m = fragment.mTargetRequestCode;
        this.f1304n = fragment.mUserVisibleHint;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("FragmentState{");
        sb2.append(this.f1292a);
        sb2.append(" (");
        sb2.append(this.f1293b);
        sb2.append(")}:");
        if (this.f1294c) {
            sb2.append(" fromLayout");
        }
        int i10 = this.f1296e;
        if (i10 != 0) {
            sb2.append(" id=0x");
            sb2.append(Integer.toHexString(i10));
        }
        String str = this.f1297f;
        if (str != null && !str.isEmpty()) {
            sb2.append(" tag=");
            sb2.append(str);
        }
        if (this.f1298g) {
            sb2.append(" retainInstance");
        }
        if (this.f1299h) {
            sb2.append(" removing");
        }
        if (this.f1300i) {
            sb2.append(" detached");
        }
        if (this.f1301j) {
            sb2.append(" hidden");
        }
        String str2 = this.l;
        if (str2 != null) {
            sb2.append(" targetWho=");
            sb2.append(str2);
            sb2.append(" targetRequestCode=");
            sb2.append(this.f1303m);
        }
        if (this.f1304n) {
            sb2.append(" userVisibleHint");
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f1292a);
        parcel.writeString(this.f1293b);
        parcel.writeInt(this.f1294c ? 1 : 0);
        parcel.writeInt(this.f1295d);
        parcel.writeInt(this.f1296e);
        parcel.writeString(this.f1297f);
        parcel.writeInt(this.f1298g ? 1 : 0);
        parcel.writeInt(this.f1299h ? 1 : 0);
        parcel.writeInt(this.f1300i ? 1 : 0);
        parcel.writeInt(this.f1301j ? 1 : 0);
        parcel.writeInt(this.f1302k);
        parcel.writeString(this.l);
        parcel.writeInt(this.f1303m);
        parcel.writeInt(this.f1304n ? 1 : 0);
    }

    public i1(Parcel parcel) {
        this.f1292a = parcel.readString();
        this.f1293b = parcel.readString();
        this.f1294c = parcel.readInt() != 0;
        this.f1295d = parcel.readInt();
        this.f1296e = parcel.readInt();
        this.f1297f = parcel.readString();
        this.f1298g = parcel.readInt() != 0;
        this.f1299h = parcel.readInt() != 0;
        this.f1300i = parcel.readInt() != 0;
        this.f1301j = parcel.readInt() != 0;
        this.f1302k = parcel.readInt();
        this.l = parcel.readString();
        this.f1303m = parcel.readInt();
        this.f1304n = parcel.readInt() != 0;
    }
}

package r1;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;

/* loaded from: classes.dex */
public final class l implements Comparator, Parcelable {
    public static final Parcelable.Creator<l> CREATOR = new j(0);

    /* renamed from: a, reason: collision with root package name */
    public final k[] f13466a;

    /* renamed from: b, reason: collision with root package name */
    public int f13467b;

    /* renamed from: c, reason: collision with root package name */
    public final String f13468c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13469d;

    public l(String str, boolean z, k... kVarArr) {
        this.f13468c = str;
        kVarArr = z ? (k[]) kVarArr.clone() : kVarArr;
        this.f13466a = kVarArr;
        this.f13469d = kVarArr.length;
        Arrays.sort(kVarArr, this);
    }

    public final l a(String str) {
        return Objects.equals(this.f13468c, str) ? this : new l(str, false, this.f13466a);
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        k kVar = (k) obj;
        k kVar2 = (k) obj2;
        UUID uuid = f.f13434a;
        return uuid.equals(kVar.f13462b) ? uuid.equals(kVar2.f13462b) ? 0 : 1 : kVar.f13462b.compareTo(kVar2.f13462b);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return Objects.equals(this.f13468c, lVar.f13468c) && Arrays.equals(this.f13466a, lVar.f13466a);
    }

    public final int hashCode() {
        if (this.f13467b == 0) {
            String str = this.f13468c;
            this.f13467b = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f13466a);
        }
        return this.f13467b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f13468c);
        parcel.writeTypedArray(this.f13466a, 0);
    }

    public l(Parcel parcel) {
        this.f13468c = parcel.readString();
        k[] kVarArr = (k[]) parcel.createTypedArray(k.CREATOR);
        String str = u1.f0.f15206a;
        this.f13466a = kVarArr;
        this.f13469d = kVarArr.length;
    }
}

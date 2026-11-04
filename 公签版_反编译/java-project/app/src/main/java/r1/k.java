package r1;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import java.util.Arrays;
import java.util.UUID;

/* loaded from: classes.dex */
public final class k implements Parcelable {
    public static final Parcelable.Creator<k> CREATOR = new j(1);

    /* renamed from: a, reason: collision with root package name */
    public int f13461a;

    /* renamed from: b, reason: collision with root package name */
    public final UUID f13462b;

    /* renamed from: c, reason: collision with root package name */
    public final String f13463c;

    /* renamed from: d, reason: collision with root package name */
    public final String f13464d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f13465e;

    public k(UUID uuid, String str, String str2, byte[] bArr) {
        uuid.getClass();
        this.f13462b = uuid;
        this.f13463c = str;
        str2.getClass();
        this.f13464d = e0.l(str2);
        this.f13465e = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        k kVar = (k) obj;
        return Objects.equals(this.f13463c, kVar.f13463c) && Objects.equals(this.f13464d, kVar.f13464d) && Objects.equals(this.f13462b, kVar.f13462b) && Arrays.equals(this.f13465e, kVar.f13465e);
    }

    public final int hashCode() {
        if (this.f13461a == 0) {
            int iHashCode = this.f13462b.hashCode() * 31;
            String str = this.f13463c;
            this.f13461a = Arrays.hashCode(this.f13465e) + org.bouncycastle.jcajce.provider.digest.a.c((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f13464d);
        }
        return this.f13461a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        UUID uuid = this.f13462b;
        parcel.writeLong(uuid.getMostSignificantBits());
        parcel.writeLong(uuid.getLeastSignificantBits());
        parcel.writeString(this.f13463c);
        parcel.writeString(this.f13464d);
        parcel.writeByteArray(this.f13465e);
    }

    public k(Parcel parcel) {
        this.f13462b = new UUID(parcel.readLong(), parcel.readLong());
        this.f13463c = parcel.readString();
        String string = parcel.readString();
        String str = u1.f0.f15206a;
        this.f13464d = string;
        this.f13465e = parcel.createByteArray();
    }
}

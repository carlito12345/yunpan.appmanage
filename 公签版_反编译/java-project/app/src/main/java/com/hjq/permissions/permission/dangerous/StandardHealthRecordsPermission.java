package com.hjq.permissions.permission.dangerous;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class StandardHealthRecordsPermission extends HealthDataBasePermission {
    public static final Parcelable.Creator<StandardHealthRecordsPermission> CREATOR = new Parcelable.Creator<StandardHealthRecordsPermission>() { // from class: com.hjq.permissions.permission.dangerous.StandardHealthRecordsPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StandardHealthRecordsPermission createFromParcel(Parcel parcel) {
            return new StandardHealthRecordsPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StandardHealthRecordsPermission[] newArray(int i10) {
            return new StandardHealthRecordsPermission[i10];
        }
    };
    private final int mFromAndroidVersion;
    private final String mPermissionName;

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return this.mFromAndroidVersion;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return this.mPermissionName;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeString(this.mPermissionName);
        parcel.writeInt(this.mFromAndroidVersion);
    }

    public StandardHealthRecordsPermission(String str, int i10) {
        this.mPermissionName = str;
        this.mFromAndroidVersion = i10;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private StandardHealthRecordsPermission(Parcel parcel) {
        String string = parcel.readString();
        Objects.requireNonNull(string);
        this(string, parcel.readInt());
    }
}

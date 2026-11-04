package com.hjq.permissions.permission.dangerous;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.permission.common.DangerousPermission;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class StandardDangerousPermission extends DangerousPermission {
    public static final Parcelable.Creator<StandardDangerousPermission> CREATOR = new Parcelable.Creator<StandardDangerousPermission>() { // from class: com.hjq.permissions.permission.dangerous.StandardDangerousPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StandardDangerousPermission createFromParcel(Parcel parcel) {
            return new StandardDangerousPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public StandardDangerousPermission[] newArray(int i10) {
            return new StandardDangerousPermission[i10];
        }
    };
    private final int mFromAndroidVersion;
    private final String mPermissionGroup;
    private final String mPermissionName;

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return this.mFromAndroidVersion;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, com.hjq.permissions.permission.base.IPermission
    public String getPermissionGroup(Context context) {
        return this.mPermissionGroup;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return this.mPermissionName;
    }

    @Override // com.hjq.permissions.permission.base.BasePermission, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeString(this.mPermissionName);
        parcel.writeString(this.mPermissionGroup);
        parcel.writeInt(this.mFromAndroidVersion);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    private StandardDangerousPermission(Parcel parcel) {
        String string = parcel.readString();
        Objects.requireNonNull(string);
        this(string, parcel.readString(), parcel.readInt());
    }

    public StandardDangerousPermission(String str, int i10) {
        this(str, null, i10);
    }

    public StandardDangerousPermission(String str, String str2, int i10) {
        this.mPermissionName = str;
        this.mPermissionGroup = str2;
        this.mFromAndroidVersion = i10;
    }
}

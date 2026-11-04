package com.hjq.permissions.permission.dangerous;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import com.hjq.permissions.permission.base.IPermission;
import com.hjq.permissions.tools.PermissionApi;
import com.hjq.permissions.tools.PermissionUtils;
import java.util.List;

/* loaded from: classes.dex */
public final class ReadHealthDataHistoryPermission extends HealthDataBasePermission {
    public static final Parcelable.Creator<ReadHealthDataHistoryPermission> CREATOR = new Parcelable.Creator<ReadHealthDataHistoryPermission>() { // from class: com.hjq.permissions.permission.dangerous.ReadHealthDataHistoryPermission.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadHealthDataHistoryPermission createFromParcel(Parcel parcel) {
            return new ReadHealthDataHistoryPermission(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ReadHealthDataHistoryPermission[] newArray(int i10) {
            return new ReadHealthDataHistoryPermission[i10];
        }
    };
    public static final String PERMISSION_NAME = "android.permission.health.READ_HEALTH_DATA_HISTORY";

    @Override // com.hjq.permissions.permission.base.BasePermission
    public void checkSelfByRequestPermissions(Activity activity, List<IPermission> list) {
        super.checkSelfByRequestPermissions(activity, list);
        int i10 = -1;
        int i11 = -1;
        for (int i12 = 0; i12 < list.size(); i12++) {
            IPermission iPermission = list.get(i12);
            if (PermissionUtils.equalsPermission(iPermission, this)) {
                i11 = i12;
            } else if (PermissionApi.isHealthPermission(iPermission) && !PermissionUtils.equalsPermission(iPermission, "android.permission.health.READ_HEALTH_DATA_IN_BACKGROUND")) {
                i10 = i12;
            }
        }
        if (i10 == -1 || i10 <= i11) {
            return;
        }
        throw new IllegalArgumentException("Please place the \"" + getPermissionName() + "\" permission after the \"" + list.get(i10) + "\" permission");
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public int getFromAndroidVersion(Context context) {
        return 35;
    }

    @Override // com.hjq.permissions.permission.base.IPermission
    public String getPermissionName() {
        return "android.permission.health.READ_HEALTH_DATA_HISTORY";
    }

    public ReadHealthDataHistoryPermission() {
    }

    private ReadHealthDataHistoryPermission(Parcel parcel) {
        super(parcel);
    }
}

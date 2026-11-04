package com.autolink.adapterinterface;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.a;

/* loaded from: classes.dex */
public class FotaUserComfResp implements Parcelable {
    public static final Parcelable.Creator<FotaUserComfResp> CREATOR = new Parcelable.Creator<FotaUserComfResp>() { // from class: com.autolink.adapterinterface.FotaUserComfResp.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FotaUserComfResp createFromParcel(Parcel parcel) {
            return new FotaUserComfResp(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FotaUserComfResp[] newArray(int i10) {
            return new FotaUserComfResp[i10];
        }
    };
    public int confirmType;
    public long eventTime;
    public int orderTime;
    public String sessionId;
    public long taskId;
    public int uid;

    public FotaUserComfResp() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
        this.uid = parcel.readInt();
        this.taskId = parcel.readLong();
        this.sessionId = parcel.readString();
        this.confirmType = parcel.readInt();
        this.orderTime = parcel.readInt();
        this.eventTime = parcel.readLong();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("FotaUserComfResp{uid=");
        sb2.append(this.uid);
        sb2.append(", taskId=");
        sb2.append(this.taskId);
        sb2.append(", sessionId='");
        sb2.append(this.sessionId);
        sb2.append("', confirmType=");
        sb2.append(this.confirmType);
        sb2.append(", orderTime=");
        sb2.append(this.orderTime);
        sb2.append(", eventTime=");
        return a.t(sb2, this.eventTime, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.uid);
        parcel.writeLong(this.taskId);
        parcel.writeString(this.sessionId);
        parcel.writeInt(this.confirmType);
        parcel.writeInt(this.orderTime);
        parcel.writeLong(this.eventTime);
    }

    public FotaUserComfResp(Parcel parcel) {
        this.uid = parcel.readInt();
        this.taskId = parcel.readLong();
        this.sessionId = parcel.readString();
        this.confirmType = parcel.readInt();
        this.orderTime = parcel.readInt();
        this.eventTime = parcel.readLong();
    }
}

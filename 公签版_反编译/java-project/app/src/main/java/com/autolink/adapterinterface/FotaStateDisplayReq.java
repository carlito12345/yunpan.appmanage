package com.autolink.adapterinterface;

import android.os.Parcel;
import android.os.Parcelable;
import g.b;

/* loaded from: classes.dex */
public class FotaStateDisplayReq implements Parcelable {
    public static final Parcelable.Creator<FotaStateDisplayReq> CREATOR = new Parcelable.Creator<FotaStateDisplayReq>() { // from class: com.autolink.adapterinterface.FotaStateDisplayReq.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FotaStateDisplayReq createFromParcel(Parcel parcel) {
            return new FotaStateDisplayReq(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FotaStateDisplayReq[] newArray(int i10) {
            return new FotaStateDisplayReq[i10];
        }
    };
    public int ackCode;
    public String afterVersion;
    public String beforeVersion;
    public int ecuId;
    public String ecuName;
    public long taskId;
    public int updateModel;
    public int updateProgress;
    public int updateResult;

    public FotaStateDisplayReq() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
        this.updateModel = parcel.readInt();
        this.ecuId = parcel.readInt();
        this.updateProgress = parcel.readInt();
        this.updateResult = parcel.readInt();
        this.ackCode = parcel.readInt();
        this.taskId = parcel.readLong();
        this.beforeVersion = parcel.readString();
        this.afterVersion = parcel.readString();
        this.ecuName = parcel.readString();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("FotaStateDisplayReq{updateModel=");
        sb2.append(this.updateModel);
        sb2.append(", ecuId=");
        sb2.append(this.ecuId);
        sb2.append(", updateProgress=");
        sb2.append(this.updateProgress);
        sb2.append(", updateResult=");
        sb2.append(this.updateResult);
        sb2.append(", ackCode=");
        sb2.append(this.ackCode);
        sb2.append(", taskId=");
        sb2.append(this.taskId);
        sb2.append(", beforeVersion='");
        sb2.append(this.beforeVersion);
        sb2.append("', afterVersion='");
        sb2.append(this.afterVersion);
        sb2.append("', ecuName='");
        return b.l(this.ecuName, "'}", sb2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.updateModel);
        parcel.writeInt(this.ecuId);
        parcel.writeInt(this.updateProgress);
        parcel.writeInt(this.updateResult);
        parcel.writeInt(this.ackCode);
        parcel.writeLong(this.taskId);
        parcel.writeString(this.beforeVersion);
        parcel.writeString(this.afterVersion);
        parcel.writeString(this.ecuName);
    }

    public FotaStateDisplayReq(Parcel parcel) {
        readFromParcel(parcel);
    }
}

package com.autolink.adapterinterface.clusterinteraction;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class AdsL1ChimeStatusInfo implements Parcelable {
    public static final Parcelable.Creator<AdsL1ChimeStatusInfo> CREATOR = new Parcelable.Creator<AdsL1ChimeStatusInfo>() { // from class: com.autolink.adapterinterface.clusterinteraction.AdsL1ChimeStatusInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdsL1ChimeStatusInfo createFromParcel(Parcel parcel) {
            return new AdsL1ChimeStatusInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdsL1ChimeStatusInfo[] newArray(int i10) {
            return new AdsL1ChimeStatusInfo[i10];
        }
    };
    private int chimeId;
    private boolean chimeStatus;

    public AdsL1ChimeStatusInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getChimeId() {
        return this.chimeId;
    }

    public boolean isChimeStatus() {
        return this.chimeStatus;
    }

    public void setChimeId(int i10) {
        this.chimeId = i10;
    }

    public void setChimeStatus(boolean z) {
        this.chimeStatus = z;
    }

    public String toString() {
        return "AdsL1ChimeStatusInfo{chimeId=" + this.chimeId + ", chimeStatus=" + this.chimeStatus + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.chimeId);
        parcel.writeByte(this.chimeStatus ? (byte) 1 : (byte) 0);
    }

    public AdsL1ChimeStatusInfo(Parcel parcel) {
        this.chimeId = parcel.readInt();
        this.chimeStatus = parcel.readByte() != 0;
    }
}

package com.autolink.adapterinterface.clusterinteraction;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.a;

/* loaded from: classes.dex */
public class TbtTrafficLaneInfo implements Parcelable {
    public static final Parcelable.Creator<TbtTrafficLaneInfo> CREATOR = new Parcelable.Creator<TbtTrafficLaneInfo>() { // from class: com.autolink.adapterinterface.clusterinteraction.TbtTrafficLaneInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TbtTrafficLaneInfo createFromParcel(Parcel parcel) {
            return new TbtTrafficLaneInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TbtTrafficLaneInfo[] newArray(int i10) {
            return new TbtTrafficLaneInfo[i10];
        }
    };
    private boolean islaneAdvised;
    private int laneExtended;
    private int laneIcon;
    private int laneNo;
    private int laneType;

    public TbtTrafficLaneInfo(boolean z, int i10, int i11, int i12, int i13) {
        this.islaneAdvised = z;
        this.laneExtended = i10;
        this.laneIcon = i11;
        this.laneNo = i12;
        this.laneType = i13;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getLaneExtended() {
        return this.laneExtended;
    }

    public int getLaneIcon() {
        return this.laneIcon;
    }

    public int getLaneNo() {
        return this.laneNo;
    }

    public int getLaneType() {
        return this.laneType;
    }

    public boolean isIslaneAdvised() {
        return this.islaneAdvised;
    }

    public void setIslaneAdvised(boolean z) {
        this.islaneAdvised = z;
    }

    public void setLaneExtended(int i10) {
        this.laneExtended = i10;
    }

    public void setLaneIcon(int i10) {
        this.laneIcon = i10;
    }

    public void setLaneNo(int i10) {
        this.laneNo = i10;
    }

    public void setLaneType(int i10) {
        this.laneType = i10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("TbtTrafficLaneInfo{islaneAdvised=");
        sb2.append(this.islaneAdvised);
        sb2.append(", laneExtended=");
        sb2.append(this.laneExtended);
        sb2.append(", laneIcon=");
        sb2.append(this.laneIcon);
        sb2.append(", laneNo=");
        sb2.append(this.laneNo);
        sb2.append(", laneType=");
        return a.s(sb2, this.laneType, "}");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeByte(this.islaneAdvised ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.laneExtended);
        parcel.writeInt(this.laneIcon);
        parcel.writeInt(this.laneNo);
        parcel.writeInt(this.laneType);
    }

    public TbtTrafficLaneInfo(Parcel parcel) {
        this.islaneAdvised = parcel.readByte() != 0;
        this.laneExtended = parcel.readInt();
        this.laneIcon = parcel.readInt();
        this.laneNo = parcel.readInt();
        this.laneType = parcel.readInt();
    }
}

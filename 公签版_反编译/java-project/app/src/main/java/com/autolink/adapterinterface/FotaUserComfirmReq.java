package com.autolink.adapterinterface;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class FotaUserComfirmReq implements Parcelable {
    public static final Parcelable.Creator<FotaUserComfirmReq> CREATOR = new Parcelable.Creator<FotaUserComfirmReq>() { // from class: com.autolink.adapterinterface.FotaUserComfirmReq.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FotaUserComfirmReq createFromParcel(Parcel parcel) {
            return new FotaUserComfirmReq(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FotaUserComfirmReq[] newArray(int i10) {
            return new FotaUserComfirmReq[i10];
        }
    };
    public int ecuNumber;
    public String sessionId;
    public long taskId;
    public ArrayList<UpdateEcuMessage> updateEcuMsgs = new ArrayList<>();

    public static class UpdateEcuMessage {
        public String ecuName;
        public int estimateUpgradeTime;
        public String partNo;
        public String releaseNote;
        public String targetVersion;
        public int updateModel;

        public String toString() {
            return "UpdateEcuMessage msg TODO";
        }
    }

    public FotaUserComfirmReq() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
        this.taskId = parcel.readLong();
        this.sessionId = parcel.readString();
        this.ecuNumber = parcel.readInt();
        for (int i10 = 0; i10 < this.ecuNumber; i10++) {
            UpdateEcuMessage updateEcuMessage = new UpdateEcuMessage();
            updateEcuMessage.updateModel = parcel.readInt();
            updateEcuMessage.targetVersion = parcel.readString();
            updateEcuMessage.partNo = parcel.readString();
            updateEcuMessage.releaseNote = parcel.readString();
            updateEcuMessage.estimateUpgradeTime = parcel.readInt();
            updateEcuMessage.ecuName = parcel.readString();
            this.updateEcuMsgs.add(updateEcuMessage);
        }
    }

    public String toString() {
        return "FotaUserComfirmReq msg TODO";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.taskId);
        parcel.writeString(this.sessionId);
        parcel.writeInt(this.ecuNumber);
        for (int i11 = 0; i11 < this.ecuNumber; i11++) {
            parcel.writeInt(this.updateEcuMsgs.get(i11).updateModel);
            parcel.writeString(this.updateEcuMsgs.get(i11).targetVersion);
            parcel.writeString(this.updateEcuMsgs.get(i11).partNo);
            parcel.writeString(this.updateEcuMsgs.get(i11).releaseNote);
            parcel.writeInt(this.updateEcuMsgs.get(i11).estimateUpgradeTime);
            parcel.writeString(this.updateEcuMsgs.get(i11).ecuName);
        }
    }

    public FotaUserComfirmReq(Parcel parcel) {
        readFromParcel(parcel);
    }
}

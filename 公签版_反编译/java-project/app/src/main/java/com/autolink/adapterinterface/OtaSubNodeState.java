package com.autolink.adapterinterface;

import android.os.Parcel;
import android.os.Parcelable;
import g.b;

/* loaded from: classes.dex */
public class OtaSubNodeState implements Parcelable {
    public static final Parcelable.Creator<OtaSubNodeState> CREATOR = new Parcelable.Creator<OtaSubNodeState>() { // from class: com.autolink.adapterinterface.OtaSubNodeState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OtaSubNodeState createFromParcel(Parcel parcel) {
            return new OtaSubNodeState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OtaSubNodeState[] newArray(int i10) {
            return new OtaSubNodeState[i10];
        }
    };
    public int code;
    public int ecuId;
    public String hardwareAfterVersion;
    public String hardwareBeforeVersion;
    public int result;
    public String sessionId;
    public String softwareAfterVersion;
    public String softwareBeforeVersion;
    public long taskId;
    public int updateProgress;
    public int updateState;

    public OtaSubNodeState() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void readFromParcel(Parcel parcel) {
        this.ecuId = parcel.readInt();
        this.updateState = parcel.readInt();
        this.updateProgress = parcel.readInt();
        this.result = parcel.readInt();
        this.code = parcel.readInt();
        this.taskId = parcel.readLong();
        this.sessionId = parcel.readString();
        this.hardwareBeforeVersion = parcel.readString();
        this.softwareBeforeVersion = parcel.readString();
        this.hardwareAfterVersion = parcel.readString();
        this.softwareAfterVersion = parcel.readString();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("OtaSubNodeState{ecuId=");
        sb2.append(this.ecuId);
        sb2.append(", updateState=");
        sb2.append(this.updateState);
        sb2.append(", updateProgress=");
        sb2.append(this.updateProgress);
        sb2.append(", result=");
        sb2.append(this.result);
        sb2.append(", code=");
        sb2.append(this.code);
        sb2.append(", taskId=");
        sb2.append(this.taskId);
        sb2.append(", sessionId='");
        sb2.append(this.sessionId);
        sb2.append("', hardwareBeforeVersion='");
        sb2.append(this.hardwareBeforeVersion);
        sb2.append("', softwareBeforeVersion='");
        sb2.append(this.softwareBeforeVersion);
        sb2.append("', hardwareAfterVersion='");
        sb2.append(this.hardwareAfterVersion);
        sb2.append("', softwareAfterVersion='");
        return b.l(this.softwareAfterVersion, "'}", sb2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.ecuId);
        parcel.writeInt(this.updateState);
        parcel.writeInt(this.updateProgress);
        parcel.writeInt(this.result);
        parcel.writeInt(this.code);
        parcel.writeLong(this.taskId);
        parcel.writeString(this.sessionId);
        parcel.writeString(this.hardwareBeforeVersion);
        parcel.writeString(this.softwareBeforeVersion);
        parcel.writeString(this.hardwareAfterVersion);
        parcel.writeString(this.softwareAfterVersion);
    }

    public OtaSubNodeState(Parcel parcel) {
        readFromParcel(parcel);
    }
}

package com.autolink.adapterinterface.clusterinteraction;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class CallInfo implements Parcelable {
    public static final Parcelable.Creator<CallInfo> CREATOR = new Parcelable.Creator<CallInfo>() { // from class: com.autolink.adapterinterface.clusterinteraction.CallInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallInfo createFromParcel(Parcel parcel) {
            return new CallInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CallInfo[] newArray(int i10) {
            return new CallInfo[i10];
        }
    };
    private CallStatus status;

    public enum CallStatus {
        START_CALL_PROJECTION_SCREEN(1),
        STOP_CALL_PROJECTION_SCREEN(2);

        private final int value;

        CallStatus(int i10) {
            this.value = i10;
        }

        public static CallStatus forNumber(int i10) {
            if (i10 == 1) {
                return START_CALL_PROJECTION_SCREEN;
            }
            if (i10 != 2) {
                return null;
            }
            return STOP_CALL_PROJECTION_SCREEN;
        }

        public final int getNumber() {
            return this.value;
        }
    }

    public CallInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CallStatus getStatus() {
        return this.status;
    }

    public void setStatus(CallStatus callStatus) {
        this.status = callStatus;
    }

    public String toString() {
        return "CallInfo{status=" + this.status.name() + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.status.getNumber());
    }

    public CallInfo(Parcel parcel) {
        this.status = CallStatus.forNumber(parcel.readInt());
    }
}

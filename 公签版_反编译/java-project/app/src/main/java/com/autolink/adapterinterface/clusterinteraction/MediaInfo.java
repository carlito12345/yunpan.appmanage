package com.autolink.adapterinterface.clusterinteraction;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class MediaInfo implements Parcelable {
    public static final Parcelable.Creator<MediaInfo> CREATOR = new Parcelable.Creator<MediaInfo>() { // from class: com.autolink.adapterinterface.clusterinteraction.MediaInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaInfo createFromParcel(Parcel parcel) {
            return new MediaInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MediaInfo[] newArray(int i10) {
            return new MediaInfo[i10];
        }
    };
    private MediaStatus status;

    public enum MediaStatus {
        START_MEDIA_PROJECTION_SCREEN(1),
        STOP_MEDIA_PROJECTION_SCREEN(2);

        private final int value;

        MediaStatus(int i10) {
            this.value = i10;
        }

        public static MediaStatus forNumber(int i10) {
            if (i10 == 1) {
                return START_MEDIA_PROJECTION_SCREEN;
            }
            if (i10 != 2) {
                return null;
            }
            return STOP_MEDIA_PROJECTION_SCREEN;
        }

        public final int getNumber() {
            return this.value;
        }
    }

    public MediaInfo() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public MediaStatus getStatus() {
        return this.status;
    }

    public void setStatus(MediaStatus mediaStatus) {
        this.status = mediaStatus;
    }

    public String toString() {
        return "MediaInfo [status=" + this.status + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.status.getNumber());
    }

    public MediaInfo(Parcel parcel) {
        this.status = MediaStatus.forNumber(parcel.readInt());
    }
}

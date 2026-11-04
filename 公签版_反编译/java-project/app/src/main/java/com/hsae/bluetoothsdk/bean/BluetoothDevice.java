package com.hsae.bluetoothsdk.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BluetoothDevice implements Parcelable {
    public static final Parcelable.Creator<BluetoothDevice> CREATOR = new Parcelable.Creator<BluetoothDevice>() { // from class: com.hsae.bluetoothsdk.bean.BluetoothDevice.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothDevice createFromParcel(Parcel parcel) {
            return new BluetoothDevice(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BluetoothDevice[] newArray(int i10) {
            return new BluetoothDevice[i10];
        }
    };
    public static final int STATUS_CONNECTED = 5;
    public static final int STATUS_CONNECTING = 4;
    public static final int STATUS_DISCONNECTED = 2;
    public static final int STATUS_DISCONNECTING = 6;
    public static final int STATUS_PAIRED = 2;
    public static final int STATUS_PAIRING = 1;
    public static final int STATUS_UNPAIRED = 0;
    public static final int STATUS_UNPAIRING = 3;
    private int COD;
    private int RSSI;
    private String mac;
    private String name;
    private int status;

    public BluetoothDevice() {
        this.name = "";
        this.mac = "";
        this.COD = 0;
        this.RSSI = 0;
        this.status = 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCOD() {
        return this.COD;
    }

    public String getMac() {
        return this.mac;
    }

    public String getName() {
        return this.name;
    }

    public int getRSSI() {
        return this.RSSI;
    }

    public int getStatus() {
        return this.status;
    }

    public void readFromParcel(Parcel parcel) {
        this.name = parcel.readString();
        this.mac = parcel.readString();
        this.COD = parcel.readInt();
        this.RSSI = parcel.readInt();
        this.status = parcel.readInt();
    }

    public void setCOD(int i10) {
        this.COD = i10;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRSSI(int i10) {
        this.RSSI = i10;
    }

    public void setStatus(int i10) {
        this.status = i10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.name);
        parcel.writeString(this.mac);
        parcel.writeInt(this.COD);
        parcel.writeInt(this.RSSI);
        parcel.writeInt(this.status);
    }

    public BluetoothDevice(String str, String str2, int i10, int i11, int i12) {
        this.name = str;
        this.mac = str2;
        this.COD = i10;
        this.RSSI = i11;
        this.status = i12;
    }

    public BluetoothDevice(Parcel parcel) {
        readFromParcel(parcel);
    }
}

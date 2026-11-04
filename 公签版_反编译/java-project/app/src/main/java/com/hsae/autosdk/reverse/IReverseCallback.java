package com.hsae.autosdk.reverse;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IReverseCallback extends IInterface {

    public static abstract class Stub extends Binder implements IReverseCallback {
        private static final String DESCRIPTOR = "com.hsae.autosdk.reverse.IReverseCallback";
        static final int TRANSACTION_onAVMChangeDAFrameResponse = 7;
        static final int TRANSACTION_onAVMCheckLanguageResponse = 9;
        static final int TRANSACTION_onAVMCheckViewStateResponse = 6;
        static final int TRANSACTION_onAVMHardwareVersionResponse = 4;
        static final int TRANSACTION_onAVMReverseStateResponse = 2;
        static final int TRANSACTION_onAVMSettingInfoResponse = 8;
        static final int TRANSACTION_onAVMSoftwareVersionResponse = 3;
        static final int TRANSACTION_onAVMStartResponse = 1;
        static final int TRANSACTION_onAVMStatusAndRequestResponseNoIPA = 23;
        static final int TRANSACTION_onAVMStatusAndRequestResponseWithIPA = 22;
        static final int TRANSACTION_onAVMVINResponse = 5;
        static final int TRANSACTION_onAvmBeepSoundResponse = 21;
        static final int TRANSACTION_onButtonEnableStatusResponse = 17;
        static final int TRANSACTION_onCarTypeResponse = 19;
        static final int TRANSACTION_onDistanceResponse = 16;
        static final int TRANSACTION_onFrCenterResponse = 13;
        static final int TRANSACTION_onFrLeftResponse = 14;
        static final int TRANSACTION_onFrRightResponse = 15;
        static final int TRANSACTION_onFrameResponse = 20;
        static final int TRANSACTION_onLightsStatusResponse = 18;
        static final int TRANSACTION_onRrCenterResponse = 10;
        static final int TRANSACTION_onRrLeftResponse = 11;
        static final int TRANSACTION_onRrRightResponse = 12;

        public static class Proxy implements IReverseCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAVMChangeDAFrameResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAVMCheckLanguageResponse() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAVMCheckViewStateResponse() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAVMHardwareVersionResponse(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAVMReverseStateResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAVMSettingInfoResponse(byte b10, byte b11, byte b12) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    parcelObtain.writeByte(b11);
                    parcelObtain.writeByte(b12);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAVMSoftwareVersionResponse(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAVMStartResponse() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAVMStatusAndRequestResponseNoIPA(byte b10, byte b11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    parcelObtain.writeByte(b11);
                    this.mRemote.transact(23, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAVMStatusAndRequestResponseWithIPA(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16, byte b17) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    parcelObtain.writeByte(b11);
                    parcelObtain.writeByte(b12);
                    parcelObtain.writeByte(b13);
                    parcelObtain.writeByte(b14);
                    parcelObtain.writeByte(b15);
                    parcelObtain.writeByte(b16);
                    parcelObtain.writeByte(b17);
                    this.mRemote.transact(22, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAVMVINResponse(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onAvmBeepSoundResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(21, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onButtonEnableStatusResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(17, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onCarTypeResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(19, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onDistanceResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(16, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onFrCenterResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(13, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onFrLeftResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(14, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onFrRightResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(15, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onFrameResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(20, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onLightsStatusResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(18, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onRrCenterResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onRrLeftResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(11, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.reverse.IReverseCallback
            public void onRrRightResponse(byte b10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByte(b10);
                    this.mRemote.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IReverseCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IReverseCallback)) ? new Proxy(iBinder) : (IReverseCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAVMStartResponse();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAVMReverseStateResponse(parcel.readByte());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAVMSoftwareVersionResponse(parcel.readString());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAVMHardwareVersionResponse(parcel.readString());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAVMVINResponse(parcel.readString());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAVMCheckViewStateResponse();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAVMChangeDAFrameResponse(parcel.readByte());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAVMSettingInfoResponse(parcel.readByte(), parcel.readByte(), parcel.readByte());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAVMCheckLanguageResponse();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRrCenterResponse(parcel.readByte());
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRrLeftResponse(parcel.readByte());
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRrRightResponse(parcel.readByte());
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFrCenterResponse(parcel.readByte());
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFrLeftResponse(parcel.readByte());
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFrRightResponse(parcel.readByte());
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDistanceResponse(parcel.readByte());
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    onButtonEnableStatusResponse(parcel.readByte());
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    onLightsStatusResponse(parcel.readByte());
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    onCarTypeResponse(parcel.readByte());
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    onFrameResponse(parcel.readByte());
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAvmBeepSoundResponse(parcel.readByte());
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAVMStatusAndRequestResponseWithIPA(parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte(), parcel.readByte());
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAVMStatusAndRequestResponseNoIPA(parcel.readByte(), parcel.readByte());
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void onAVMChangeDAFrameResponse(byte b10);

    void onAVMCheckLanguageResponse();

    void onAVMCheckViewStateResponse();

    void onAVMHardwareVersionResponse(String str);

    void onAVMReverseStateResponse(byte b10);

    void onAVMSettingInfoResponse(byte b10, byte b11, byte b12);

    void onAVMSoftwareVersionResponse(String str);

    void onAVMStartResponse();

    void onAVMStatusAndRequestResponseNoIPA(byte b10, byte b11);

    void onAVMStatusAndRequestResponseWithIPA(byte b10, byte b11, byte b12, byte b13, byte b14, byte b15, byte b16, byte b17);

    void onAVMVINResponse(String str);

    void onAvmBeepSoundResponse(byte b10);

    void onButtonEnableStatusResponse(byte b10);

    void onCarTypeResponse(byte b10);

    void onDistanceResponse(byte b10);

    void onFrCenterResponse(byte b10);

    void onFrLeftResponse(byte b10);

    void onFrRightResponse(byte b10);

    void onFrameResponse(byte b10);

    void onLightsStatusResponse(byte b10);

    void onRrCenterResponse(byte b10);

    void onRrLeftResponse(byte b10);

    void onRrRightResponse(byte b10);
}

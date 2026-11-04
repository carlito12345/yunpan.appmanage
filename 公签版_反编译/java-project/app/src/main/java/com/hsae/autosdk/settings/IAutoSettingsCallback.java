package com.hsae.autosdk.settings;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IAutoSettingsCallback extends IInterface {

    public static abstract class Stub extends Binder implements IAutoSettingsCallback {
        private static final String DESCRIPTOR = "com.hsae.autosdk.settings.IAutoSettingsCallback";
        static final int TRANSACTION_onAcConnectState = 13;
        static final int TRANSACTION_onAcRemoteControlRequest = 14;
        static final int TRANSACTION_onAvmConnectState = 12;
        static final int TRANSACTION_onBTPhoneVolumeResponse = 7;
        static final int TRANSACTION_onBrightnessResponse = 2;
        static final int TRANSACTION_onContrastResponse = 3;
        static final int TRANSACTION_onDayNightAutoStateResponse = 4;
        static final int TRANSACTION_onDrivingSafetyStateResponse = 5;
        static final int TRANSACTION_onMCANInstrumentSetClock = 11;
        static final int TRANSACTION_onMapSkinModeChanged = 16;
        static final int TRANSACTION_onOnlineAppUpgradeStateChanged = 15;
        static final int TRANSACTION_onProductTypeChanged = 9;
        static final int TRANSACTION_onScreenStateResponse = 1;
        static final int TRANSACTION_onSoundEffectWithSpeedChanged = 10;
        static final int TRANSACTION_onSystemVolumeResponse = 6;
        static final int TRANSACTION_setNaviMuteState = 8;

        public static class Proxy implements IAutoSettingsCallback {
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

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onAcConnectState(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(13, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onAcRemoteControlRequest(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(14, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onAvmConnectState(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(12, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onBTPhoneVolumeResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onBrightnessResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onContrastResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onDayNightAutoStateResponse(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onDrivingSafetyStateResponse(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onMCANInstrumentSetClock(int i10, long j10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeLong(j10);
                    this.mRemote.transact(11, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onMapSkinModeChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(16, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onOnlineAppUpgradeStateChanged(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(15, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onProductTypeChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onScreenStateResponse(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onSoundEffectWithSpeedChanged(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void onSystemVolumeResponse(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.settings.IAutoSettingsCallback
            public void setNaviMuteState(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAutoSettingsCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAutoSettingsCallback)) ? new Proxy(iBinder) : (IAutoSettingsCallback) iInterfaceQueryLocalInterface;
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
                    onScreenStateResponse(parcel.readInt() != 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBrightnessResponse(parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onContrastResponse(parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDayNightAutoStateResponse(parcel.readInt());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDrivingSafetyStateResponse(parcel.readInt() != 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSystemVolumeResponse(parcel.readInt(), parcel.readInt());
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBTPhoneVolumeResponse(parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setNaviMuteState(parcel.readInt() != 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onProductTypeChanged(parcel.readInt());
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSoundEffectWithSpeedChanged(parcel.readInt());
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMCANInstrumentSetClock(parcel.readInt(), parcel.readLong());
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAvmConnectState(parcel.readInt());
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAcConnectState(parcel.readInt());
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAcRemoteControlRequest(parcel.readInt());
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    onOnlineAppUpgradeStateChanged(parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMapSkinModeChanged(parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void onAcConnectState(int i10);

    void onAcRemoteControlRequest(int i10);

    void onAvmConnectState(int i10);

    void onBTPhoneVolumeResponse(int i10);

    void onBrightnessResponse(int i10);

    void onContrastResponse(int i10);

    void onDayNightAutoStateResponse(int i10);

    void onDrivingSafetyStateResponse(boolean z);

    void onMCANInstrumentSetClock(int i10, long j10);

    void onMapSkinModeChanged(int i10);

    void onOnlineAppUpgradeStateChanged(int i10, boolean z);

    void onProductTypeChanged(int i10);

    void onScreenStateResponse(boolean z);

    void onSoundEffectWithSpeedChanged(int i10);

    void onSystemVolumeResponse(int i10, int i11);

    void setNaviMuteState(boolean z);
}

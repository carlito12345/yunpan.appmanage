package com.hsae.autosdk.voice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.hsae.autosdk.voice.IVRListener;

/* loaded from: classes.dex */
public interface IVoiceManager extends IInterface {

    public static abstract class Stub extends Binder implements IVoiceManager {
        private static final String DESCRIPTOR = "com.hsae.autosdk.voice.IVoiceManager";
        static final int TRANSACTION_hideVR = 13;
        static final int TRANSACTION_isAllowMediaPlay = 20;
        static final int TRANSACTION_isIflytekChipPrepared = 21;
        static final int TRANSACTION_isSpeechStarted = 11;
        static final int TRANSACTION_isTtsPlayStarted = 12;
        static final int TRANSACTION_isVrStarted = 8;
        static final int TRANSACTION_isWakeUpStarted = 14;
        static final int TRANSACTION_phoneCallStateChange = 10;
        static final int TRANSACTION_reStartWakeRecord = 9;
        static final int TRANSACTION_resetIflytekSetting = 19;
        static final int TRANSACTION_resetVRListener = 6;
        static final int TRANSACTION_resourceRefresh = 7;
        static final int TRANSACTION_setVRListener = 5;
        static final int TRANSACTION_startSettings = 15;
        static final int TRANSACTION_startTTS = 3;
        static final int TRANSACTION_startVR = 1;
        static final int TRANSACTION_stopIflytekTts = 17;
        static final int TRANSACTION_stopSrView = 18;
        static final int TRANSACTION_stopTTS = 4;
        static final int TRANSACTION_stopVR = 2;
        static final int TRANSACTION_stopWakeRecord = 16;

        public static class Proxy implements IVoiceManager {
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

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void hideVR() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(13, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public boolean isAllowMediaPlay() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public boolean isIflytekChipPrepared() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public boolean isSpeechStarted() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public boolean isTtsPlayStarted() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public boolean isVrStarted() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public boolean isWakeUpStarted() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void phoneCallStateChange(int i10, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void reStartWakeRecord() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void resetIflytekSetting() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void resetVRListener(IVRListener iVRListener) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVRListener != null ? iVRListener.asBinder() : null);
                    this.mRemote.transact(6, parcelObtain, null, 1);
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void resourceRefresh(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    this.mRemote.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void setVRListener(IVRListener iVRListener) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVRListener != null ? iVRListener.asBinder() : null);
                    this.mRemote.transact(5, parcelObtain, null, 1);
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void startSettings() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void startTTS(String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void startVR() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void stopIflytekTts() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void stopSrView() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void stopTTS() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void stopVR() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.hsae.autosdk.voice.IVoiceManager
            public void stopWakeRecord() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVoiceManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IVoiceManager)) ? new Proxy(iBinder) : (IVoiceManager) iInterfaceQueryLocalInterface;
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
                    startVR();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopVR();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    startTTS(parcel.readString());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopTTS();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVRListener(IVRListener.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    resetVRListener(IVRListener.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    resourceRefresh(parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsVrStarted = isVrStarted();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsVrStarted ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    reStartWakeRecord();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    phoneCallStateChange(parcel.readInt(), parcel.readString());
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSpeechStarted = isSpeechStarted();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSpeechStarted ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsTtsPlayStarted = isTtsPlayStarted();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsTtsPlayStarted ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    hideVR();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsWakeUpStarted = isWakeUpStarted();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsWakeUpStarted ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    startSettings();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopWakeRecord();
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopIflytekTts();
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSrView();
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    resetIflytekSetting();
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsAllowMediaPlay = isAllowMediaPlay();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsAllowMediaPlay ? 1 : 0);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsIflytekChipPrepared = isIflytekChipPrepared();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsIflytekChipPrepared ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void hideVR();

    boolean isAllowMediaPlay();

    boolean isIflytekChipPrepared();

    boolean isSpeechStarted();

    boolean isTtsPlayStarted();

    boolean isVrStarted();

    boolean isWakeUpStarted();

    void phoneCallStateChange(int i10, String str);

    void reStartWakeRecord();

    void resetIflytekSetting();

    void resetVRListener(IVRListener iVRListener);

    void resourceRefresh(int i10);

    void setVRListener(IVRListener iVRListener);

    void startSettings();

    void startTTS(String str);

    void startVR();

    void stopIflytekTts();

    void stopSrView();

    void stopTTS();

    void stopVR();

    void stopWakeRecord();
}

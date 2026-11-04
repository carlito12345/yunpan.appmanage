package com.autolink.adapterinterface.audio;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IALAudio extends IInterface {

    public static class Default implements IALAudio {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.audio.IALAudio
        public boolean isRhythmLampOpen() {
            return false;
        }

        @Override // com.autolink.adapterinterface.audio.IALAudio
        public void registerRhythmLampListener(IBinder iBinder) {
        }

        @Override // com.autolink.adapterinterface.audio.IALAudio
        public void setRhythmLampChangeSpeed(int i10) {
        }

        @Override // com.autolink.adapterinterface.audio.IALAudio
        public boolean setRhythmLampOpen(boolean z) {
            return false;
        }

        @Override // com.autolink.adapterinterface.audio.IALAudio
        public boolean setVoiceLampOpen(boolean z) {
            return false;
        }

        @Override // com.autolink.adapterinterface.audio.IALAudio
        public void unregisterRhythmLampListener(IBinder iBinder) {
        }
    }

    public static abstract class Stub extends Binder implements IALAudio {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.audio.IALAudio";
        static final int TRANSACTION_isRhythmLampOpen = 2;
        static final int TRANSACTION_registerRhythmLampListener = 5;
        static final int TRANSACTION_setRhythmLampChangeSpeed = 4;
        static final int TRANSACTION_setRhythmLampOpen = 1;
        static final int TRANSACTION_setVoiceLampOpen = 3;
        static final int TRANSACTION_unregisterRhythmLampListener = 6;

        public static class Proxy implements IALAudio {
            public static IALAudio sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.audio.IALAudio
            public boolean isRhythmLampOpen() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isRhythmLampOpen();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.audio.IALAudio
            public void registerRhythmLampListener(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerRhythmLampListener(iBinder);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.audio.IALAudio
            public void setRhythmLampChangeSpeed(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setRhythmLampChangeSpeed(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.audio.IALAudio
            public boolean setRhythmLampOpen(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setRhythmLampOpen(z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.audio.IALAudio
            public boolean setVoiceLampOpen(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setVoiceLampOpen(z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.audio.IALAudio
            public void unregisterRhythmLampListener(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterRhythmLampListener(iBinder);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IALAudio asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IALAudio)) ? new Proxy(iBinder) : (IALAudio) iInterfaceQueryLocalInterface;
        }

        public static IALAudio getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IALAudio iALAudio) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iALAudio == null) {
                return false;
            }
            Proxy.sDefaultImpl = iALAudio;
            return true;
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
                    boolean rhythmLampOpen = setRhythmLampOpen(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(rhythmLampOpen ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsRhythmLampOpen = isRhythmLampOpen();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsRhythmLampOpen ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean voiceLampOpen = setVoiceLampOpen(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(voiceLampOpen ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRhythmLampChangeSpeed(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerRhythmLampListener(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterRhythmLampListener(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    boolean isRhythmLampOpen();

    void registerRhythmLampListener(IBinder iBinder);

    void setRhythmLampChangeSpeed(int i10);

    boolean setRhythmLampOpen(boolean z);

    boolean setVoiceLampOpen(boolean z);

    void unregisterRhythmLampListener(IBinder iBinder);
}

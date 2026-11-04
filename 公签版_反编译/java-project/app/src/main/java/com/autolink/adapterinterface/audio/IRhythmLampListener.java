package com.autolink.adapterinterface.audio;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IRhythmLampListener extends IInterface {

    public static class Default implements IRhythmLampListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.audio.IRhythmLampListener
        public void onRhythmChanged(int[] iArr) {
        }

        @Override // com.autolink.adapterinterface.audio.IRhythmLampListener
        public void onRhythmStateChange(boolean z) {
        }
    }

    public static abstract class Stub extends Binder implements IRhythmLampListener {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.audio.IRhythmLampListener";
        static final int TRANSACTION_onRhythmChanged = 1;
        static final int TRANSACTION_onRhythmStateChange = 2;

        public static class Proxy implements IRhythmLampListener {
            public static IRhythmLampListener sDefaultImpl;
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

            @Override // com.autolink.adapterinterface.audio.IRhythmLampListener
            public void onRhythmChanged(int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeIntArray(iArr);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onRhythmChanged(iArr);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.audio.IRhythmLampListener
            public void onRhythmStateChange(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(2, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onRhythmStateChange(z);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRhythmLampListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRhythmLampListener)) ? new Proxy(iBinder) : (IRhythmLampListener) iInterfaceQueryLocalInterface;
        }

        public static IRhythmLampListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IRhythmLampListener iRhythmLampListener) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iRhythmLampListener == null) {
                return false;
            }
            Proxy.sDefaultImpl = iRhythmLampListener;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                onRhythmChanged(parcel.createIntArray());
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                onRhythmStateChange(parcel.readInt() != 0);
                return true;
            }
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    void onRhythmChanged(int[] iArr);

    void onRhythmStateChange(boolean z);
}

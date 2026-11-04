package com.yunpan.appmanage.shizuku;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public interface IUserService extends IInterface {
    public static final String DESCRIPTOR = "com.yunpan.appmanage.shizuku.IUserService";

    public static class Default implements IUserService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.yunpan.appmanage.shizuku.IUserService
        public void destroy() {
        }

        @Override // com.yunpan.appmanage.shizuku.IUserService
        public CmdResult exec(String str, long j10) {
            return null;
        }

        @Override // com.yunpan.appmanage.shizuku.IUserService
        public void exit() {
        }
    }

    public static abstract class Stub extends Binder implements IUserService {
        static final int TRANSACTION_destroy = 16777115;
        static final int TRANSACTION_exec = 3;
        static final int TRANSACTION_exit = 2;

        public static class Proxy implements IUserService {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.yunpan.appmanage.shizuku.IUserService
            public void destroy() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IUserService.DESCRIPTOR);
                    this.mRemote.transact(Stub.TRANSACTION_destroy, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IUserService
            public CmdResult exec(String str, long j10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IUserService.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeLong(j10);
                    this.mRemote.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (CmdResult) _Parcel.readTypedObject(parcelObtain2, CmdResult.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.yunpan.appmanage.shizuku.IUserService
            public void exit() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IUserService.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return IUserService.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, IUserService.DESCRIPTOR);
        }

        public static IUserService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IUserService.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IUserService)) ? new Proxy(iBinder) : (IUserService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IUserService.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IUserService.DESCRIPTOR);
                return true;
            }
            if (i10 == 2) {
                exit();
                parcel2.writeNoException();
            } else if (i10 == 3) {
                CmdResult cmdResultExec = exec(parcel.readString(), parcel.readLong());
                parcel2.writeNoException();
                _Parcel.writeTypedObject(parcel2, cmdResultExec, 1);
            } else {
                if (i10 != TRANSACTION_destroy) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                destroy();
                parcel2.writeNoException();
            }
            return true;
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t10, int i10) {
            if (t10 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t10.writeToParcel(parcel, i10);
            }
        }
    }

    void destroy();

    CmdResult exec(String str, long j10);

    void exit();
}

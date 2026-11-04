package com.desay_svautomotive.p023a;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface InterfaceC0530f extends IInterface {

    public static abstract class a extends Binder implements InterfaceC0530f {

        public static class C0865a implements InterfaceC0530f {
            private IBinder f309a;

            public C0865a(IBinder iBinder) {
                this.f309a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f309a;
            }

            @Override // com.desay_svautomotive.p023a.InterfaceC0530f
            public void mo251a(int i10, int i11, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.desay_svautomotive.libsvcarinfo.ICarLanCallBack");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str);
                    this.f309a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } catch (Exception unused) {
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        public static InterfaceC0530f m252a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.desay_svautomotive.libsvcarinfo.ICarLanCallBack");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0530f)) ? new C0865a(iBinder) : (InterfaceC0530f) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 != 1) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("com.desay_svautomotive.libsvcarinfo.ICarLanCallBack");
                return true;
            }
            parcel.enforceInterface("com.desay_svautomotive.libsvcarinfo.ICarLanCallBack");
            mo251a(parcel.readInt(), parcel.readInt(), parcel.readString());
            parcel2.writeNoException();
            return true;
        }
    }

    void mo251a(int i10, int i11, String str);
}

package com.autolink.app.vehicleservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.autolink.app.vehicleservice.IVehicleControlCallback;

/* loaded from: classes.dex */
public interface IVehicleControl extends IInterface {

    public static class Default implements IVehicleControl {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public CarModelColorBean geCarModelColor(int i10) {
            return null;
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public ChargeInfoBean getChargeInfo(int i10) {
            return null;
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public float getFloat(int i10) {
            return 0.0f;
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public int getInt(int i10) {
            return 0;
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void registerCallback(IVehicleControlCallback iVehicleControlCallback, int[] iArr) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void registerRemoteCallback(IVehicleControlCallback iVehicleControlCallback, int[] iArr, String str) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void setAppointmentTime(int i10, AppointmentTimeBean appointmentTimeBean) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void setCarModelColor(int i10, CarModelColorBean carModelColorBean) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void setCustomCarSeat(int i10, CustomCarSeatBean customCarSeatBean) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void setCustomWindow(int i10, CustomWindowBean customWindowBean) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void setFloat(int i10, float f10) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void setFloatData(int i10, float f10, String str) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void setFloatDataImmediately(int i10, float f10, String str) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void setInt(int i10, int i11) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void setIntData(int i10, int i11, String str) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void setIntDataImmediately(int i10, int i11, String str) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void setVehicleLicense(int i10, VehicleLicenseBean vehicleLicenseBean) {
        }

        @Override // com.autolink.app.vehicleservice.IVehicleControl
        public void unregisterCallback(IVehicleControlCallback iVehicleControlCallback) {
        }
    }

    public static abstract class Stub extends Binder implements IVehicleControl {
        private static final String DESCRIPTOR = "com.autolink.app.vehicleservice.IVehicleControl";
        static final int TRANSACTION_geCarModelColor = 12;
        static final int TRANSACTION_getChargeInfo = 7;
        static final int TRANSACTION_getFloat = 6;
        static final int TRANSACTION_getInt = 5;
        static final int TRANSACTION_registerCallback = 1;
        static final int TRANSACTION_registerRemoteCallback = 14;
        static final int TRANSACTION_setAppointmentTime = 9;
        static final int TRANSACTION_setCarModelColor = 11;
        static final int TRANSACTION_setCustomCarSeat = 13;
        static final int TRANSACTION_setCustomWindow = 8;
        static final int TRANSACTION_setFloat = 4;
        static final int TRANSACTION_setFloatData = 16;
        static final int TRANSACTION_setFloatDataImmediately = 18;
        static final int TRANSACTION_setInt = 3;
        static final int TRANSACTION_setIntData = 15;
        static final int TRANSACTION_setIntDataImmediately = 17;
        static final int TRANSACTION_setVehicleLicense = 10;
        static final int TRANSACTION_unregisterCallback = 2;

        public static class Proxy implements IVehicleControl {
            public static IVehicleControl sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public CarModelColorBean geCarModelColor(int i10) {
                CarModelColorBean carModelColorBeanCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        carModelColorBeanCreateFromParcel = parcelObtain2.readInt() != 0 ? CarModelColorBean.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        carModelColorBeanCreateFromParcel = Stub.getDefaultImpl().geCarModelColor(i10);
                    }
                    return carModelColorBeanCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public ChargeInfoBean getChargeInfo(int i10) {
                ChargeInfoBean chargeInfoBeanCreateFromParcel;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        chargeInfoBeanCreateFromParcel = parcelObtain2.readInt() != 0 ? ChargeInfoBean.CREATOR.createFromParcel(parcelObtain2) : null;
                    } else {
                        chargeInfoBeanCreateFromParcel = Stub.getDefaultImpl().getChargeInfo(i10);
                    }
                    return chargeInfoBeanCreateFromParcel;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public float getFloat(int i10) {
                float f10;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        f10 = parcelObtain2.readFloat();
                    } else {
                        f10 = Stub.getDefaultImpl().getFloat(i10);
                    }
                    return f10;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public int getInt(int i10) {
                int i11;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        i11 = parcelObtain2.readInt();
                    } else {
                        i11 = Stub.getDefaultImpl().getInt(i10);
                    }
                    return i11;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void registerCallback(IVehicleControlCallback iVehicleControlCallback, int[] iArr) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVehicleControlCallback != null ? iVehicleControlCallback.asBinder() : null);
                    parcelObtain.writeIntArray(iArr);
                    if (!this.mRemote.transact(1, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerCallback(iVehicleControlCallback, iArr);
                        parcelObtain.recycle();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void registerRemoteCallback(IVehicleControlCallback iVehicleControlCallback, int[] iArr, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVehicleControlCallback != null ? iVehicleControlCallback.asBinder() : null);
                    parcelObtain.writeIntArray(iArr);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(14, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().registerRemoteCallback(iVehicleControlCallback, iArr, str);
                        parcelObtain.recycle();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void setAppointmentTime(int i10, AppointmentTimeBean appointmentTimeBean) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (appointmentTimeBean != null) {
                        parcelObtain.writeInt(1);
                        appointmentTimeBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(9, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setAppointmentTime(i10, appointmentTimeBean);
                        parcelObtain.recycle();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void setCarModelColor(int i10, CarModelColorBean carModelColorBean) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (carModelColorBean != null) {
                        parcelObtain.writeInt(1);
                        carModelColorBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(11, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setCarModelColor(i10, carModelColorBean);
                        parcelObtain.recycle();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void setCustomCarSeat(int i10, CustomCarSeatBean customCarSeatBean) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (customCarSeatBean != null) {
                        parcelObtain.writeInt(1);
                        customCarSeatBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(13, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setCustomCarSeat(i10, customCarSeatBean);
                        parcelObtain.recycle();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void setCustomWindow(int i10, CustomWindowBean customWindowBean) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (customWindowBean != null) {
                        parcelObtain.writeInt(1);
                        customWindowBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(8, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setCustomWindow(i10, customWindowBean);
                        parcelObtain.recycle();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void setFloat(int i10, float f10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeFloat(f10);
                    if (!this.mRemote.transact(4, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setFloat(i10, f10);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void setFloatData(int i10, float f10, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeFloat(f10);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(16, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setFloatData(i10, f10, str);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void setFloatDataImmediately(int i10, float f10, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeFloat(f10);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(18, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setFloatDataImmediately(i10, f10, str);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void setInt(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (!this.mRemote.transact(3, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setInt(i10, i11);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void setIntData(int i10, int i11, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(15, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setIntData(i10, i11, str);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void setIntDataImmediately(int i10, int i11, String str) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str);
                    if (!this.mRemote.transact(17, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setIntDataImmediately(i10, i11, str);
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void setVehicleLicense(int i10, VehicleLicenseBean vehicleLicenseBean) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (vehicleLicenseBean != null) {
                        parcelObtain.writeInt(1);
                        vehicleLicenseBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(10, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setVehicleLicense(i10, vehicleLicenseBean);
                        parcelObtain.recycle();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.app.vehicleservice.IVehicleControl
            public void unregisterCallback(IVehicleControlCallback iVehicleControlCallback) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iVehicleControlCallback != null ? iVehicleControlCallback.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, null, 1) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().unregisterCallback(iVehicleControlCallback);
                        parcelObtain.recycle();
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IVehicleControl asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IVehicleControl)) ? new Proxy(iBinder) : (IVehicleControl) iInterfaceQueryLocalInterface;
        }

        public static IVehicleControl getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IVehicleControl iVehicleControl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iVehicleControl == null) {
                return false;
            }
            Proxy.sDefaultImpl = iVehicleControl;
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
                    registerCallback(IVehicleControlCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.createIntArray());
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCallback(IVehicleControlCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    setInt(parcel.readInt(), parcel.readInt());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFloat(parcel.readInt(), parcel.readFloat());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i12 = getInt(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(i12);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    float f10 = getFloat(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeFloat(f10);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    ChargeInfoBean chargeInfo = getChargeInfo(parcel.readInt());
                    parcel2.writeNoException();
                    if (chargeInfo != null) {
                        parcel2.writeInt(1);
                        chargeInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCustomWindow(parcel.readInt(), parcel.readInt() != 0 ? CustomWindowBean.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAppointmentTime(parcel.readInt(), parcel.readInt() != 0 ? AppointmentTimeBean.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVehicleLicense(parcel.readInt(), parcel.readInt() != 0 ? VehicleLicenseBean.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCarModelColor(parcel.readInt(), parcel.readInt() != 0 ? CarModelColorBean.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    CarModelColorBean carModelColorBeanGeCarModelColor = geCarModelColor(parcel.readInt());
                    parcel2.writeNoException();
                    if (carModelColorBeanGeCarModelColor != null) {
                        parcel2.writeInt(1);
                        carModelColorBeanGeCarModelColor.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCustomCarSeat(parcel.readInt(), parcel.readInt() != 0 ? CustomCarSeatBean.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerRemoteCallback(IVehicleControlCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.createIntArray(), parcel.readString());
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    setIntData(parcel.readInt(), parcel.readInt(), parcel.readString());
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFloatData(parcel.readInt(), parcel.readFloat(), parcel.readString());
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    setIntDataImmediately(parcel.readInt(), parcel.readInt(), parcel.readString());
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFloatDataImmediately(parcel.readInt(), parcel.readFloat(), parcel.readString());
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    CarModelColorBean geCarModelColor(int i10);

    ChargeInfoBean getChargeInfo(int i10);

    float getFloat(int i10);

    int getInt(int i10);

    void registerCallback(IVehicleControlCallback iVehicleControlCallback, int[] iArr);

    void registerRemoteCallback(IVehicleControlCallback iVehicleControlCallback, int[] iArr, String str);

    void setAppointmentTime(int i10, AppointmentTimeBean appointmentTimeBean);

    void setCarModelColor(int i10, CarModelColorBean carModelColorBean);

    void setCustomCarSeat(int i10, CustomCarSeatBean customCarSeatBean);

    void setCustomWindow(int i10, CustomWindowBean customWindowBean);

    void setFloat(int i10, float f10);

    void setFloatData(int i10, float f10, String str);

    void setFloatDataImmediately(int i10, float f10, String str);

    void setInt(int i10, int i11);

    void setIntData(int i10, int i11, String str);

    void setIntDataImmediately(int i10, int i11, String str);

    void setVehicleLicense(int i10, VehicleLicenseBean vehicleLicenseBean);

    void unregisterCallback(IVehicleControlCallback iVehicleControlCallback);
}

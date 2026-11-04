package com.autolink.adapterinterface.car;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.autolink.adapterinterface.car.IALCarAVMPropertyListener;
import com.autolink.adapterinterface.car.IALCarEngineSpeedListener;
import com.autolink.adapterinterface.car.IALCarExtPropertyListener;
import com.autolink.adapterinterface.car.IALCarHvacPropertyListener;
import com.autolink.adapterinterface.car.IALCarSpeedListener;
import com.autolink.adapterinterface.car.IALCarSteerListener;
import com.autolink.adapterinterface.car.IALCarTyreListener;
import com.autolink.adapterinterface.car.IALCarVehicleControlPropertyListener;
import com.autolink.adapterinterface.car.IALCarWindListener;

/* loaded from: classes.dex */
public interface IALCar extends IInterface {

    public static class Default implements IALCar {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void controlFraganceConcentration(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void controlUltravioletLuminance(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void factoryResetForAL() {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public float getFloatProperty(int i10, int i11) {
            return 0.0f;
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public int getIntProperty(int i10, int i11) {
            return 0;
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void registerAVMPropertyListener(IALCarAVMPropertyListener iALCarAVMPropertyListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void registerCarEngineSpeedListener(IALCarEngineSpeedListener iALCarEngineSpeedListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void registerCarSpeedListener(IALCarSpeedListener iALCarSpeedListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void registerCarSteerListener(IALCarSteerListener iALCarSteerListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void registerCarTyreListener(IALCarTyreListener iALCarTyreListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void registerCarWindListener(IALCarWindListener iALCarWindListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void registerExtPropertyListener(IALCarExtPropertyListener iALCarExtPropertyListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void registerHvacPropertyListener(IALCarHvacPropertyListener iALCarHvacPropertyListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void registerVehicleControlPropertyListener(IALCarVehicleControlPropertyListener iALCarVehicleControlPropertyListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void sendChargeTime(int i10, int i11, int i12, int i13) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void sendFrontCrashWarningSignals(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void sendHVACsignalsForSmartScene(byte[] bArr) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void sendIHU03signals(byte[] bArr) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void sendIHU11signals(byte[] bArr) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void sendTboxSignalGroupForT1J(int i10, int i11, int i12, int i13, int i14) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void sendTboxSignalGroupForT1P(int i10, int i11, int i12, int i13, int i14) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setGroupPropertyForDriverSeatMassage(int i10, int i11, int i12) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setGroupPropertyForHUD(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setGroupPropertyForIHU14SUB1(int i10, int i11, int i12) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setGroupPropertyForIHU14SUB2(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setGroupPropertyForIHU14SUB3(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setGroupPropertyForIHU14SUB4(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setGroupPropertyForIHUDVR1(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setGroupPropertyForIHUDVR2(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setGroupPropertyForIHUDVR3(int i10, int i11, int i12) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setGroupPropertyForIHUDVRT1L(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setGroupPropertyForMusicLoud(byte[] bArr) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public int setIntProperty(int i10, int i11, int i12) {
            return 0;
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public int setIntPropertyReduceLog(int i10, int i11) {
            return 0;
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setMultiWindow(int i10, int i11, int i12, int i13) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setT1KMirrorFlip(int i10) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void setT1PSeatHeatAndVentilation(int i10, int i11) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void unregisterAVMPropertyListener(IALCarAVMPropertyListener iALCarAVMPropertyListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void unregisterCarEngineSpeedListener(IALCarEngineSpeedListener iALCarEngineSpeedListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void unregisterCarSpeedListener(IALCarSpeedListener iALCarSpeedListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void unregisterCarSteerListener(IALCarSteerListener iALCarSteerListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void unregisterCarTyreListener(IALCarTyreListener iALCarTyreListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void unregisterCarWindListener(IALCarWindListener iALCarWindListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void unregisterExtPropertyListener(IALCarExtPropertyListener iALCarExtPropertyListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void unregisterHvacPropertyListener(IALCarHvacPropertyListener iALCarHvacPropertyListener) {
        }

        @Override // com.autolink.adapterinterface.car.IALCar
        public void unregisterVehicleControlPropertyListener(IALCarVehicleControlPropertyListener iALCarVehicleControlPropertyListener) {
        }
    }

    public static abstract class Stub extends Binder implements IALCar {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.car.IALCar";
        static final int TRANSACTION_controlFraganceConcentration = 14;
        static final int TRANSACTION_controlUltravioletLuminance = 13;
        static final int TRANSACTION_factoryResetForAL = 10;
        static final int TRANSACTION_getFloatProperty = 9;
        static final int TRANSACTION_getIntProperty = 2;
        static final int TRANSACTION_registerAVMPropertyListener = 7;
        static final int TRANSACTION_registerCarEngineSpeedListener = 25;
        static final int TRANSACTION_registerCarSpeedListener = 17;
        static final int TRANSACTION_registerCarSteerListener = 19;
        static final int TRANSACTION_registerCarTyreListener = 21;
        static final int TRANSACTION_registerCarWindListener = 23;
        static final int TRANSACTION_registerExtPropertyListener = 15;
        static final int TRANSACTION_registerHvacPropertyListener = 3;
        static final int TRANSACTION_registerVehicleControlPropertyListener = 5;
        static final int TRANSACTION_sendChargeTime = 28;
        static final int TRANSACTION_sendFrontCrashWarningSignals = 33;
        static final int TRANSACTION_sendHVACsignalsForSmartScene = 27;
        static final int TRANSACTION_sendIHU03signals = 32;
        static final int TRANSACTION_sendIHU11signals = 31;
        static final int TRANSACTION_sendTboxSignalGroupForT1J = 29;
        static final int TRANSACTION_sendTboxSignalGroupForT1P = 30;
        static final int TRANSACTION_setGroupPropertyForDriverSeatMassage = 46;
        static final int TRANSACTION_setGroupPropertyForHUD = 39;
        static final int TRANSACTION_setGroupPropertyForIHU14SUB1 = 42;
        static final int TRANSACTION_setGroupPropertyForIHU14SUB2 = 43;
        static final int TRANSACTION_setGroupPropertyForIHU14SUB3 = 44;
        static final int TRANSACTION_setGroupPropertyForIHU14SUB4 = 45;
        static final int TRANSACTION_setGroupPropertyForIHUDVR1 = 36;
        static final int TRANSACTION_setGroupPropertyForIHUDVR2 = 37;
        static final int TRANSACTION_setGroupPropertyForIHUDVR3 = 38;
        static final int TRANSACTION_setGroupPropertyForIHUDVRT1L = 40;
        static final int TRANSACTION_setGroupPropertyForMusicLoud = 34;
        static final int TRANSACTION_setIntProperty = 1;
        static final int TRANSACTION_setIntPropertyReduceLog = 11;
        static final int TRANSACTION_setMultiWindow = 12;
        static final int TRANSACTION_setT1KMirrorFlip = 35;
        static final int TRANSACTION_setT1PSeatHeatAndVentilation = 41;
        static final int TRANSACTION_unregisterAVMPropertyListener = 8;
        static final int TRANSACTION_unregisterCarEngineSpeedListener = 26;
        static final int TRANSACTION_unregisterCarSpeedListener = 18;
        static final int TRANSACTION_unregisterCarSteerListener = 20;
        static final int TRANSACTION_unregisterCarTyreListener = 22;
        static final int TRANSACTION_unregisterCarWindListener = 24;
        static final int TRANSACTION_unregisterExtPropertyListener = 16;
        static final int TRANSACTION_unregisterHvacPropertyListener = 4;
        static final int TRANSACTION_unregisterVehicleControlPropertyListener = 6;

        public static class Proxy implements IALCar {
            public static IALCar sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void controlFraganceConcentration(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().controlFraganceConcentration(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void controlUltravioletLuminance(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().controlUltravioletLuminance(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void factoryResetForAL() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().factoryResetForAL();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public float getFloatProperty(int i10, int i11) {
                float floatProperty;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        floatProperty = parcelObtain2.readFloat();
                    } else {
                        floatProperty = Stub.getDefaultImpl().getFloatProperty(i10, i11);
                    }
                    return floatProperty;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public int getIntProperty(int i10, int i11) {
                int intProperty;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        intProperty = parcelObtain2.readInt();
                    } else {
                        intProperty = Stub.getDefaultImpl().getIntProperty(i10, i11);
                    }
                    return intProperty;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void registerAVMPropertyListener(IALCarAVMPropertyListener iALCarAVMPropertyListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarAVMPropertyListener != null ? iALCarAVMPropertyListener.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerAVMPropertyListener(iALCarAVMPropertyListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void registerCarEngineSpeedListener(IALCarEngineSpeedListener iALCarEngineSpeedListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarEngineSpeedListener != null ? iALCarEngineSpeedListener.asBinder() : null);
                    if (this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerCarEngineSpeedListener(iALCarEngineSpeedListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void registerCarSpeedListener(IALCarSpeedListener iALCarSpeedListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarSpeedListener != null ? iALCarSpeedListener.asBinder() : null);
                    if (this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerCarSpeedListener(iALCarSpeedListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void registerCarSteerListener(IALCarSteerListener iALCarSteerListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarSteerListener != null ? iALCarSteerListener.asBinder() : null);
                    if (this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerCarSteerListener(iALCarSteerListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void registerCarTyreListener(IALCarTyreListener iALCarTyreListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarTyreListener != null ? iALCarTyreListener.asBinder() : null);
                    if (this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerCarTyreListener(iALCarTyreListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void registerCarWindListener(IALCarWindListener iALCarWindListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarWindListener != null ? iALCarWindListener.asBinder() : null);
                    if (this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerCarWindListener(iALCarWindListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void registerExtPropertyListener(IALCarExtPropertyListener iALCarExtPropertyListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarExtPropertyListener != null ? iALCarExtPropertyListener.asBinder() : null);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerExtPropertyListener(iALCarExtPropertyListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void registerHvacPropertyListener(IALCarHvacPropertyListener iALCarHvacPropertyListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarHvacPropertyListener != null ? iALCarHvacPropertyListener.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerHvacPropertyListener(iALCarHvacPropertyListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void registerVehicleControlPropertyListener(IALCarVehicleControlPropertyListener iALCarVehicleControlPropertyListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarVehicleControlPropertyListener != null ? iALCarVehicleControlPropertyListener.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerVehicleControlPropertyListener(iALCarVehicleControlPropertyListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void sendChargeTime(int i10, int i11, int i12, int i13) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeInt(i13);
                    if (this.mRemote.transact(28, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendChargeTime(i10, i11, i12, i13);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void sendFrontCrashWarningSignals(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(33, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendFrontCrashWarningSignals(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void sendHVACsignalsForSmartScene(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(27, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendHVACsignalsForSmartScene(bArr);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void sendIHU03signals(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(32, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendIHU03signals(bArr);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void sendIHU11signals(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(31, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendIHU11signals(bArr);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void sendTboxSignalGroupForT1J(int i10, int i11, int i12, int i13, int i14) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeInt(i13);
                    parcelObtain.writeInt(i14);
                    if (this.mRemote.transact(29, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendTboxSignalGroupForT1J(i10, i11, i12, i13, i14);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void sendTboxSignalGroupForT1P(int i10, int i11, int i12, int i13, int i14) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeInt(i13);
                    parcelObtain.writeInt(i14);
                    if (this.mRemote.transact(30, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendTboxSignalGroupForT1P(i10, i11, i12, i13, i14);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void setGroupPropertyForDriverSeatMassage(int i10, int i11, int i12) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (this.mRemote.transact(46, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setGroupPropertyForDriverSeatMassage(i10, i11, i12);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:31:0x0058 A[Catch: all -> 0x007b, TryCatch #6 {all -> 0x007b, blocks: (B:29:0x004d, B:31:0x0058, B:33:0x005e, B:36:0x007d), top: B:61:0x004d }] */
            @Override // com.autolink.adapterinterface.car.IALCar
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void setGroupPropertyForHUD(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        parcelObtain.writeInt(i10);
                        try {
                            parcelObtain.writeInt(i11);
                            try {
                                parcelObtain.writeInt(i12);
                            } catch (Throwable unused) {
                                if (this.mRemote.transact(39, parcelObtain, parcelObtain2, 0)) {
                                }
                                parcelObtain2.readException();
                                parcelObtain2.recycle();
                                parcelObtain.recycle();
                            }
                        } catch (Throwable unused2) {
                            if (this.mRemote.transact(39, parcelObtain, parcelObtain2, 0)) {
                            }
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    } catch (Throwable unused3) {
                        if (this.mRemote.transact(39, parcelObtain, parcelObtain2, 0)) {
                        }
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable unused4) {
                }
                try {
                    try {
                        parcelObtain.writeInt(i13);
                        try {
                            parcelObtain.writeInt(i14);
                            try {
                                parcelObtain.writeInt(i15);
                                try {
                                    parcelObtain.writeInt(i16);
                                    try {
                                        parcelObtain.writeInt(i17);
                                    } catch (Throwable unused5) {
                                    }
                                } catch (Throwable unused6) {
                                    if (this.mRemote.transact(39, parcelObtain, parcelObtain2, 0)) {
                                    }
                                    parcelObtain2.readException();
                                    parcelObtain2.recycle();
                                    parcelObtain.recycle();
                                }
                            } catch (Throwable unused7) {
                                if (this.mRemote.transact(39, parcelObtain, parcelObtain2, 0)) {
                                }
                                parcelObtain2.readException();
                                parcelObtain2.recycle();
                                parcelObtain.recycle();
                            }
                        } catch (Throwable unused8) {
                            if (this.mRemote.transact(39, parcelObtain, parcelObtain2, 0)) {
                            }
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    } catch (Throwable unused9) {
                        if (this.mRemote.transact(39, parcelObtain, parcelObtain2, 0)) {
                        }
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                    if (!this.mRemote.transact(39, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().setGroupPropertyForHUD(i10, i11, i12, i13, i14, i15, i16, i17);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw new RemoteException(th2.getMessage());
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void setGroupPropertyForIHU14SUB1(int i10, int i11, int i12) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (this.mRemote.transact(42, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setGroupPropertyForIHU14SUB1(i10, i11, i12);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void setGroupPropertyForIHU14SUB2(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(43, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setGroupPropertyForIHU14SUB2(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void setGroupPropertyForIHU14SUB3(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(44, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setGroupPropertyForIHU14SUB3(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void setGroupPropertyForIHU14SUB4(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(45, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setGroupPropertyForIHU14SUB4(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:31:0x0058 A[Catch: all -> 0x007b, TryCatch #6 {all -> 0x007b, blocks: (B:29:0x004d, B:31:0x0058, B:33:0x005e, B:36:0x007d), top: B:61:0x004d }] */
            @Override // com.autolink.adapterinterface.car.IALCar
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void setGroupPropertyForIHUDVR1(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        parcelObtain.writeInt(i10);
                        try {
                            parcelObtain.writeInt(i11);
                            try {
                                parcelObtain.writeInt(i12);
                            } catch (Throwable unused) {
                                if (this.mRemote.transact(36, parcelObtain, parcelObtain2, 0)) {
                                }
                                parcelObtain2.readException();
                                parcelObtain2.recycle();
                                parcelObtain.recycle();
                            }
                        } catch (Throwable unused2) {
                            if (this.mRemote.transact(36, parcelObtain, parcelObtain2, 0)) {
                            }
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    } catch (Throwable unused3) {
                        if (this.mRemote.transact(36, parcelObtain, parcelObtain2, 0)) {
                        }
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable unused4) {
                }
                try {
                    try {
                        parcelObtain.writeInt(i13);
                        try {
                            parcelObtain.writeInt(i14);
                            try {
                                parcelObtain.writeInt(i15);
                                try {
                                    parcelObtain.writeInt(i16);
                                    try {
                                        parcelObtain.writeInt(i17);
                                    } catch (Throwable unused5) {
                                    }
                                } catch (Throwable unused6) {
                                    if (this.mRemote.transact(36, parcelObtain, parcelObtain2, 0)) {
                                    }
                                    parcelObtain2.readException();
                                    parcelObtain2.recycle();
                                    parcelObtain.recycle();
                                }
                            } catch (Throwable unused7) {
                                if (this.mRemote.transact(36, parcelObtain, parcelObtain2, 0)) {
                                }
                                parcelObtain2.readException();
                                parcelObtain2.recycle();
                                parcelObtain.recycle();
                            }
                        } catch (Throwable unused8) {
                            if (this.mRemote.transact(36, parcelObtain, parcelObtain2, 0)) {
                            }
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    } catch (Throwable unused9) {
                        if (this.mRemote.transact(36, parcelObtain, parcelObtain2, 0)) {
                        }
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                    if (!this.mRemote.transact(36, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().setGroupPropertyForIHUDVR1(i10, i11, i12, i13, i14, i15, i16, i17);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw new RemoteException(th2.getMessage());
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:31:0x0058 A[Catch: all -> 0x007b, TryCatch #6 {all -> 0x007b, blocks: (B:29:0x004d, B:31:0x0058, B:33:0x005e, B:36:0x007d), top: B:61:0x004d }] */
            @Override // com.autolink.adapterinterface.car.IALCar
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void setGroupPropertyForIHUDVR2(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        parcelObtain.writeInt(i10);
                        try {
                            parcelObtain.writeInt(i11);
                            try {
                                parcelObtain.writeInt(i12);
                            } catch (Throwable unused) {
                                if (this.mRemote.transact(37, parcelObtain, parcelObtain2, 0)) {
                                }
                                parcelObtain2.readException();
                                parcelObtain2.recycle();
                                parcelObtain.recycle();
                            }
                        } catch (Throwable unused2) {
                            if (this.mRemote.transact(37, parcelObtain, parcelObtain2, 0)) {
                            }
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    } catch (Throwable unused3) {
                        if (this.mRemote.transact(37, parcelObtain, parcelObtain2, 0)) {
                        }
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable unused4) {
                }
                try {
                    try {
                        parcelObtain.writeInt(i13);
                        try {
                            parcelObtain.writeInt(i14);
                            try {
                                parcelObtain.writeInt(i15);
                                try {
                                    parcelObtain.writeInt(i16);
                                    try {
                                        parcelObtain.writeInt(i17);
                                    } catch (Throwable unused5) {
                                    }
                                } catch (Throwable unused6) {
                                    if (this.mRemote.transact(37, parcelObtain, parcelObtain2, 0)) {
                                    }
                                    parcelObtain2.readException();
                                    parcelObtain2.recycle();
                                    parcelObtain.recycle();
                                }
                            } catch (Throwable unused7) {
                                if (this.mRemote.transact(37, parcelObtain, parcelObtain2, 0)) {
                                }
                                parcelObtain2.readException();
                                parcelObtain2.recycle();
                                parcelObtain.recycle();
                            }
                        } catch (Throwable unused8) {
                            if (this.mRemote.transact(37, parcelObtain, parcelObtain2, 0)) {
                            }
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    } catch (Throwable unused9) {
                        if (this.mRemote.transact(37, parcelObtain, parcelObtain2, 0)) {
                        }
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                    if (!this.mRemote.transact(37, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().setGroupPropertyForIHUDVR2(i10, i11, i12, i13, i14, i15, i16, i17);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw new RemoteException(th2.getMessage());
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void setGroupPropertyForIHUDVR3(int i10, int i11, int i12) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (this.mRemote.transact(38, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setGroupPropertyForIHUDVR3(i10, i11, i12);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:31:0x0058 A[Catch: all -> 0x007b, TryCatch #6 {all -> 0x007b, blocks: (B:29:0x004d, B:31:0x0058, B:33:0x005e, B:36:0x007d), top: B:61:0x004d }] */
            @Override // com.autolink.adapterinterface.car.IALCar
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void setGroupPropertyForIHUDVRT1L(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    try {
                        parcelObtain.writeInt(i10);
                        try {
                            parcelObtain.writeInt(i11);
                            try {
                                parcelObtain.writeInt(i12);
                            } catch (Throwable unused) {
                                if (this.mRemote.transact(40, parcelObtain, parcelObtain2, 0)) {
                                }
                                parcelObtain2.readException();
                                parcelObtain2.recycle();
                                parcelObtain.recycle();
                            }
                        } catch (Throwable unused2) {
                            if (this.mRemote.transact(40, parcelObtain, parcelObtain2, 0)) {
                            }
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    } catch (Throwable unused3) {
                        if (this.mRemote.transact(40, parcelObtain, parcelObtain2, 0)) {
                        }
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable unused4) {
                }
                try {
                    try {
                        parcelObtain.writeInt(i13);
                        try {
                            parcelObtain.writeInt(i14);
                            try {
                                parcelObtain.writeInt(i15);
                                try {
                                    parcelObtain.writeInt(i16);
                                    try {
                                        parcelObtain.writeInt(i17);
                                    } catch (Throwable unused5) {
                                    }
                                } catch (Throwable unused6) {
                                    if (this.mRemote.transact(40, parcelObtain, parcelObtain2, 0)) {
                                    }
                                    parcelObtain2.readException();
                                    parcelObtain2.recycle();
                                    parcelObtain.recycle();
                                }
                            } catch (Throwable unused7) {
                                if (this.mRemote.transact(40, parcelObtain, parcelObtain2, 0)) {
                                }
                                parcelObtain2.readException();
                                parcelObtain2.recycle();
                                parcelObtain.recycle();
                            }
                        } catch (Throwable unused8) {
                            if (this.mRemote.transact(40, parcelObtain, parcelObtain2, 0)) {
                            }
                            parcelObtain2.readException();
                            parcelObtain2.recycle();
                            parcelObtain.recycle();
                        }
                    } catch (Throwable unused9) {
                        if (this.mRemote.transact(40, parcelObtain, parcelObtain2, 0)) {
                        }
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                    if (!this.mRemote.transact(40, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().setGroupPropertyForIHUDVRT1L(i10, i11, i12, i13, i14, i15, i16, i17);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw new RemoteException(th2.getMessage());
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void setGroupPropertyForMusicLoud(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    if (this.mRemote.transact(34, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setGroupPropertyForMusicLoud(bArr);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public int setIntProperty(int i10, int i11, int i12) {
                int intProperty;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        intProperty = parcelObtain2.readInt();
                    } else {
                        intProperty = Stub.getDefaultImpl().setIntProperty(i10, i11, i12);
                    }
                    return intProperty;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public int setIntPropertyReduceLog(int i10, int i11) {
                int intPropertyReduceLog;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        intPropertyReduceLog = parcelObtain2.readInt();
                    } else {
                        intPropertyReduceLog = Stub.getDefaultImpl().setIntPropertyReduceLog(i10, i11);
                    }
                    return intPropertyReduceLog;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void setMultiWindow(int i10, int i11, int i12, int i13) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    parcelObtain.writeInt(i13);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setMultiWindow(i10, i11, i12, i13);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void setT1KMirrorFlip(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(35, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setT1KMirrorFlip(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void setT1PSeatHeatAndVentilation(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.mRemote.transact(41, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setT1PSeatHeatAndVentilation(i10, i11);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void unregisterAVMPropertyListener(IALCarAVMPropertyListener iALCarAVMPropertyListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarAVMPropertyListener != null ? iALCarAVMPropertyListener.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterAVMPropertyListener(iALCarAVMPropertyListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void unregisterCarEngineSpeedListener(IALCarEngineSpeedListener iALCarEngineSpeedListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarEngineSpeedListener != null ? iALCarEngineSpeedListener.asBinder() : null);
                    if (this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterCarEngineSpeedListener(iALCarEngineSpeedListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void unregisterCarSpeedListener(IALCarSpeedListener iALCarSpeedListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarSpeedListener != null ? iALCarSpeedListener.asBinder() : null);
                    if (this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterCarSpeedListener(iALCarSpeedListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void unregisterCarSteerListener(IALCarSteerListener iALCarSteerListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarSteerListener != null ? iALCarSteerListener.asBinder() : null);
                    if (this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterCarSteerListener(iALCarSteerListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void unregisterCarTyreListener(IALCarTyreListener iALCarTyreListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarTyreListener != null ? iALCarTyreListener.asBinder() : null);
                    if (this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterCarTyreListener(iALCarTyreListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void unregisterCarWindListener(IALCarWindListener iALCarWindListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarWindListener != null ? iALCarWindListener.asBinder() : null);
                    if (this.mRemote.transact(24, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterCarWindListener(iALCarWindListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void unregisterExtPropertyListener(IALCarExtPropertyListener iALCarExtPropertyListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarExtPropertyListener != null ? iALCarExtPropertyListener.asBinder() : null);
                    if (this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterExtPropertyListener(iALCarExtPropertyListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void unregisterHvacPropertyListener(IALCarHvacPropertyListener iALCarHvacPropertyListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarHvacPropertyListener != null ? iALCarHvacPropertyListener.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterHvacPropertyListener(iALCarHvacPropertyListener);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.car.IALCar
            public void unregisterVehicleControlPropertyListener(IALCarVehicleControlPropertyListener iALCarVehicleControlPropertyListener) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iALCarVehicleControlPropertyListener != null ? iALCarVehicleControlPropertyListener.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterVehicleControlPropertyListener(iALCarVehicleControlPropertyListener);
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

        public static IALCar asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IALCar)) ? new Proxy(iBinder) : (IALCar) iInterfaceQueryLocalInterface;
        }

        public static IALCar getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IALCar iALCar) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iALCar == null) {
                return false;
            }
            Proxy.sDefaultImpl = iALCar;
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
                    int intProperty = setIntProperty(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(intProperty);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int intProperty2 = getIntProperty(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(intProperty2);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerHvacPropertyListener(IALCarHvacPropertyListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterHvacPropertyListener(IALCarHvacPropertyListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerVehicleControlPropertyListener(IALCarVehicleControlPropertyListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterVehicleControlPropertyListener(IALCarVehicleControlPropertyListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerAVMPropertyListener(IALCarAVMPropertyListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterAVMPropertyListener(IALCarAVMPropertyListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    float floatProperty = getFloatProperty(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeFloat(floatProperty);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    factoryResetForAL();
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int intPropertyReduceLog = setIntPropertyReduceLog(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(intPropertyReduceLog);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMultiWindow(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    controlUltravioletLuminance(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    controlFraganceConcentration(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerExtPropertyListener(IALCarExtPropertyListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterExtPropertyListener(IALCarExtPropertyListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarSpeedListener(IALCarSpeedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarSpeedListener(IALCarSpeedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarSteerListener(IALCarSteerListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarSteerListener(IALCarSteerListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarTyreListener(IALCarTyreListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarTyreListener(IALCarTyreListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarWindListener(IALCarWindListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarWindListener(IALCarWindListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCarEngineSpeedListener(IALCarEngineSpeedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterCarEngineSpeedListener(IALCarEngineSpeedListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendHVACsignalsForSmartScene(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendChargeTime(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendTboxSignalGroupForT1J(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendTboxSignalGroupForT1P(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendIHU11signals(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendIHU03signals(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendFrontCrashWarningSignals(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupPropertyForMusicLoud(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    setT1KMirrorFlip(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupPropertyForIHUDVR1(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupPropertyForIHUDVR2(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupPropertyForIHUDVR3(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupPropertyForHUD(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupPropertyForIHUDVRT1L(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    setT1PSeatHeatAndVentilation(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupPropertyForIHU14SUB1(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupPropertyForIHU14SUB2(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupPropertyForIHU14SUB3(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupPropertyForIHU14SUB4(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    setGroupPropertyForDriverSeatMassage(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void controlFraganceConcentration(int i10, int i11);

    void controlUltravioletLuminance(int i10, int i11);

    void factoryResetForAL();

    float getFloatProperty(int i10, int i11);

    int getIntProperty(int i10, int i11);

    void registerAVMPropertyListener(IALCarAVMPropertyListener iALCarAVMPropertyListener);

    void registerCarEngineSpeedListener(IALCarEngineSpeedListener iALCarEngineSpeedListener);

    void registerCarSpeedListener(IALCarSpeedListener iALCarSpeedListener);

    void registerCarSteerListener(IALCarSteerListener iALCarSteerListener);

    void registerCarTyreListener(IALCarTyreListener iALCarTyreListener);

    void registerCarWindListener(IALCarWindListener iALCarWindListener);

    void registerExtPropertyListener(IALCarExtPropertyListener iALCarExtPropertyListener);

    void registerHvacPropertyListener(IALCarHvacPropertyListener iALCarHvacPropertyListener);

    void registerVehicleControlPropertyListener(IALCarVehicleControlPropertyListener iALCarVehicleControlPropertyListener);

    void sendChargeTime(int i10, int i11, int i12, int i13);

    void sendFrontCrashWarningSignals(int i10, int i11);

    void sendHVACsignalsForSmartScene(byte[] bArr);

    void sendIHU03signals(byte[] bArr);

    void sendIHU11signals(byte[] bArr);

    void sendTboxSignalGroupForT1J(int i10, int i11, int i12, int i13, int i14);

    void sendTboxSignalGroupForT1P(int i10, int i11, int i12, int i13, int i14);

    void setGroupPropertyForDriverSeatMassage(int i10, int i11, int i12);

    void setGroupPropertyForHUD(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17);

    void setGroupPropertyForIHU14SUB1(int i10, int i11, int i12);

    void setGroupPropertyForIHU14SUB2(int i10, int i11);

    void setGroupPropertyForIHU14SUB3(int i10, int i11);

    void setGroupPropertyForIHU14SUB4(int i10, int i11);

    void setGroupPropertyForIHUDVR1(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17);

    void setGroupPropertyForIHUDVR2(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17);

    void setGroupPropertyForIHUDVR3(int i10, int i11, int i12);

    void setGroupPropertyForIHUDVRT1L(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17);

    void setGroupPropertyForMusicLoud(byte[] bArr);

    int setIntProperty(int i10, int i11, int i12);

    int setIntPropertyReduceLog(int i10, int i11);

    void setMultiWindow(int i10, int i11, int i12, int i13);

    void setT1KMirrorFlip(int i10);

    void setT1PSeatHeatAndVentilation(int i10, int i11);

    void unregisterAVMPropertyListener(IALCarAVMPropertyListener iALCarAVMPropertyListener);

    void unregisterCarEngineSpeedListener(IALCarEngineSpeedListener iALCarEngineSpeedListener);

    void unregisterCarSpeedListener(IALCarSpeedListener iALCarSpeedListener);

    void unregisterCarSteerListener(IALCarSteerListener iALCarSteerListener);

    void unregisterCarTyreListener(IALCarTyreListener iALCarTyreListener);

    void unregisterCarWindListener(IALCarWindListener iALCarWindListener);

    void unregisterExtPropertyListener(IALCarExtPropertyListener iALCarExtPropertyListener);

    void unregisterHvacPropertyListener(IALCarHvacPropertyListener iALCarHvacPropertyListener);

    void unregisterVehicleControlPropertyListener(IALCarVehicleControlPropertyListener iALCarVehicleControlPropertyListener);
}

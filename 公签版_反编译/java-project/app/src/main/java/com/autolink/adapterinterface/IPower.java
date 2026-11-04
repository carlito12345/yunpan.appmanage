package com.autolink.adapterinterface;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.autolink.adapterinterface.IPowerCallback;

/* loaded from: classes.dex */
public interface IPower extends IInterface {

    public static class Default implements IPower {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.autolink.adapterinterface.IPower
        public void enterUpgradeState() {
        }

        @Override // com.autolink.adapterinterface.IPower
        public void exitUpgradeState() {
        }

        @Override // com.autolink.adapterinterface.IPower
        public int getClusterNightModeSwitch() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.IPower
        public int getHmiBrightness() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.IPower
        public int getIviBrightness() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.IPower
        public int getIviBrightnessMode() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.IPower
        public int getIviDisplayPowerState() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.IPower
        public int getIviThemeMode() {
            return 0;
        }

        @Override // com.autolink.adapterinterface.IPower
        public boolean isCurScreenSaver() {
            return false;
        }

        @Override // com.autolink.adapterinterface.IPower
        public void keepClusterNightModeSwitchOn(int i10) {
        }

        @Override // com.autolink.adapterinterface.IPower
        public void registerPowerCallback(IPowerCallback iPowerCallback) {
        }

        @Override // com.autolink.adapterinterface.IPower
        public void sendScreensaverEvent(int i10, boolean z) {
        }

        @Override // com.autolink.adapterinterface.IPower
        public void setClusterDisplayPowerState(int i10) {
        }

        @Override // com.autolink.adapterinterface.IPower
        public void setHmiBrightness(int i10) {
        }

        @Override // com.autolink.adapterinterface.IPower
        public void setIviBrightness(int i10) {
        }

        @Override // com.autolink.adapterinterface.IPower
        public void setIviBrightnessMode(int i10) {
        }

        @Override // com.autolink.adapterinterface.IPower
        public void setIviDisplayPowerState(int i10) {
        }

        @Override // com.autolink.adapterinterface.IPower
        public void setIviThemeMode(int i10) {
        }

        @Override // com.autolink.adapterinterface.IPower
        public void unregisterPowerCallback(IPowerCallback iPowerCallback) {
        }
    }

    public static abstract class Stub extends Binder implements IPower {
        private static final String DESCRIPTOR = "com.autolink.adapterinterface.IPower";
        static final int TRANSACTION_enterUpgradeState = 12;
        static final int TRANSACTION_exitUpgradeState = 13;
        static final int TRANSACTION_getClusterNightModeSwitch = 19;
        static final int TRANSACTION_getHmiBrightness = 6;
        static final int TRANSACTION_getIviBrightness = 4;
        static final int TRANSACTION_getIviBrightnessMode = 10;
        static final int TRANSACTION_getIviDisplayPowerState = 15;
        static final int TRANSACTION_getIviThemeMode = 8;
        static final int TRANSACTION_isCurScreenSaver = 16;
        static final int TRANSACTION_keepClusterNightModeSwitchOn = 18;
        static final int TRANSACTION_registerPowerCallback = 1;
        static final int TRANSACTION_sendScreensaverEvent = 11;
        static final int TRANSACTION_setClusterDisplayPowerState = 17;
        static final int TRANSACTION_setHmiBrightness = 5;
        static final int TRANSACTION_setIviBrightness = 3;
        static final int TRANSACTION_setIviBrightnessMode = 9;
        static final int TRANSACTION_setIviDisplayPowerState = 14;
        static final int TRANSACTION_setIviThemeMode = 7;
        static final int TRANSACTION_unregisterPowerCallback = 2;

        public static class Proxy implements IPower {
            public static IPower sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.autolink.adapterinterface.IPower
            public void enterUpgradeState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().enterUpgradeState();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public void exitUpgradeState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().exitUpgradeState();
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public int getClusterNightModeSwitch() {
                int clusterNightModeSwitch;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        clusterNightModeSwitch = parcelObtain2.readInt();
                    } else {
                        clusterNightModeSwitch = Stub.getDefaultImpl().getClusterNightModeSwitch();
                    }
                    return clusterNightModeSwitch;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public int getHmiBrightness() {
                int hmiBrightness;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        hmiBrightness = parcelObtain2.readInt();
                    } else {
                        hmiBrightness = Stub.getDefaultImpl().getHmiBrightness();
                    }
                    return hmiBrightness;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.autolink.adapterinterface.IPower
            public int getIviBrightness() {
                int iviBrightness;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iviBrightness = parcelObtain2.readInt();
                    } else {
                        iviBrightness = Stub.getDefaultImpl().getIviBrightness();
                    }
                    return iviBrightness;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public int getIviBrightnessMode() {
                int iviBrightnessMode;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iviBrightnessMode = parcelObtain2.readInt();
                    } else {
                        iviBrightnessMode = Stub.getDefaultImpl().getIviBrightnessMode();
                    }
                    return iviBrightnessMode;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public int getIviDisplayPowerState() {
                int iviDisplayPowerState;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iviDisplayPowerState = parcelObtain2.readInt();
                    } else {
                        iviDisplayPowerState = Stub.getDefaultImpl().getIviDisplayPowerState();
                    }
                    return iviDisplayPowerState;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public int getIviThemeMode() {
                int iviThemeMode;
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        iviThemeMode = parcelObtain2.readInt();
                    } else {
                        iviThemeMode = Stub.getDefaultImpl().getIviThemeMode();
                    }
                    return iviThemeMode;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public boolean isCurScreenSaver() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isCurScreenSaver();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public void keepClusterNightModeSwitchOn(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().keepClusterNightModeSwitchOn(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public void registerPowerCallback(IPowerCallback iPowerCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPowerCallback != null ? iPowerCallback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerPowerCallback(iPowerCallback);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public void sendScreensaverEvent(int i10, boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendScreensaverEvent(i10, z);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public void setClusterDisplayPowerState(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setClusterDisplayPowerState(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public void setHmiBrightness(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setHmiBrightness(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public void setIviBrightness(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setIviBrightness(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public void setIviBrightnessMode(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setIviBrightnessMode(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public void setIviDisplayPowerState(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setIviDisplayPowerState(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public void setIviThemeMode(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setIviThemeMode(i10);
                    }
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                } catch (Throwable th2) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th2;
                }
            }

            @Override // com.autolink.adapterinterface.IPower
            public void unregisterPowerCallback(IPowerCallback iPowerCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iPowerCallback != null ? iPowerCallback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterPowerCallback(iPowerCallback);
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

        public static IPower asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPower)) ? new Proxy(iBinder) : (IPower) iInterfaceQueryLocalInterface;
        }

        public static IPower getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IPower iPower) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iPower == null) {
                return false;
            }
            Proxy.sDefaultImpl = iPower;
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
                    registerPowerCallback(IPowerCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterPowerCallback(IPowerCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    setIviBrightness(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iviBrightness = getIviBrightness();
                    parcel2.writeNoException();
                    parcel2.writeInt(iviBrightness);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    setHmiBrightness(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int hmiBrightness = getHmiBrightness();
                    parcel2.writeNoException();
                    parcel2.writeInt(hmiBrightness);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    setIviThemeMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iviThemeMode = getIviThemeMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(iviThemeMode);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    setIviBrightnessMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iviBrightnessMode = getIviBrightnessMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(iviBrightnessMode);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendScreensaverEvent(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    enterUpgradeState();
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    exitUpgradeState();
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    setIviDisplayPowerState(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iviDisplayPowerState = getIviDisplayPowerState();
                    parcel2.writeNoException();
                    parcel2.writeInt(iviDisplayPowerState);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsCurScreenSaver = isCurScreenSaver();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsCurScreenSaver ? 1 : 0);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    setClusterDisplayPowerState(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    keepClusterNightModeSwitchOn(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int clusterNightModeSwitch = getClusterNightModeSwitch();
                    parcel2.writeNoException();
                    parcel2.writeInt(clusterNightModeSwitch);
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void enterUpgradeState();

    void exitUpgradeState();

    int getClusterNightModeSwitch();

    int getHmiBrightness();

    int getIviBrightness();

    int getIviBrightnessMode();

    int getIviDisplayPowerState();

    int getIviThemeMode();

    boolean isCurScreenSaver();

    void keepClusterNightModeSwitchOn(int i10);

    void registerPowerCallback(IPowerCallback iPowerCallback);

    void sendScreensaverEvent(int i10, boolean z);

    void setClusterDisplayPowerState(int i10);

    void setHmiBrightness(int i10);

    void setIviBrightness(int i10);

    void setIviBrightnessMode(int i10);

    void setIviDisplayPowerState(int i10);

    void setIviThemeMode(int i10);

    void unregisterPowerCallback(IPowerCallback iPowerCallback);
}

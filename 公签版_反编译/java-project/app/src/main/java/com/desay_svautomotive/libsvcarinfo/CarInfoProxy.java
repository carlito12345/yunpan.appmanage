package com.desay_svautomotive.libsvcarinfo;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.desay_svautomotive.libsvcarinfo.ICarInfo;
import com.desay_svautomotive.libsvcarinfo.MultiTaskTimer;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class CarInfoProxy {
    private static final String AIDL_BINDSERVICE_PACKAGENAME = "com.desay_svautomotive.svcarinfo";
    private static final String AIDL_BINDSERVICE_SERVICENAME = "com.desay_svautomotive.svcarinfo.CarInfoService";
    private static final String TAG = "SVLibCarInfo";
    private static final int TIMER_ID_REBIND_SERVICE = 0;
    private static final int TIMER_TIME_REBIND_SERVICE = 5000;
    private static volatile CarInfoProxy mInstance;
    private Context mContext = null;
    private ICarInfo mAidl = null;
    private MultiTaskTimer mTimer = null;
    private boolean mIsServiceConnnected = false;
    private List<IServiceConnectListener> mConnectListeners = new CopyOnWriteArrayList();
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.desay_svautomotive.libsvcarinfo.CarInfoProxy.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (CarInfoProxy.this.mTimer != null && CarInfoProxy.this.mTimer.isTaskExist(0)) {
                CarInfoProxy.this.mTimer.cancelTimeTask(0);
            }
            CarInfoProxy.this.mAidl = ICarInfo.Stub.asInterface(iBinder);
            CarInfoProxy.this.mIsServiceConnnected = true;
            synchronized (CarInfoProxy.this.mConnectListeners) {
                for (int i10 = 0; i10 < CarInfoProxy.this.mConnectListeners.size(); i10++) {
                    try {
                        ((IServiceConnectListener) CarInfoProxy.this.mConnectListeners.get(i10)).onServiceConnectedChanged(1);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            CarInfoProxy.this.mIsServiceConnnected = false;
            CarInfoProxy.this.mAidl = null;
            synchronized (CarInfoProxy.this.mConnectListeners) {
                for (int i10 = 0; i10 < CarInfoProxy.this.mConnectListeners.size(); i10++) {
                    try {
                        ((IServiceConnectListener) CarInfoProxy.this.mConnectListeners.get(i10)).onServiceConnectedChanged(0);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            if (CarInfoProxy.this.mTimer != null) {
                CarInfoProxy.this.mTimer.setTimeTask(0, 5000);
            }
        }
    };
    private MultiTaskTimer.ITimerTaskHandler timerTaskHandler = new MultiTaskTimer.ITimerTaskHandler() { // from class: com.desay_svautomotive.libsvcarinfo.CarInfoProxy.2
        @Override // com.desay_svautomotive.libsvcarinfo.MultiTaskTimer.ITimerTaskHandler
        public void onTimerTaskHandle(int i10) {
            if (i10 != 0) {
                return;
            }
            if (CarInfoProxy.this.mTimer != null && CarInfoProxy.this.mTimer.isTaskExist(0)) {
                CarInfoProxy.this.mTimer.cancelTimeTask(0);
            }
            try {
                CarInfoProxy.this.bindService();
            } catch (Throwable th2) {
                throw new RuntimeException(th2);
            }
        }
    };

    public static CarInfoProxy getInstance() {
        if (mInstance == null) {
            synchronized (CarInfoProxy.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new CarInfoProxy();
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    public void bindService() {
        MultiTaskTimer multiTaskTimer;
        MultiTaskTimer multiTaskTimer2;
        try {
            try {
                Intent intent = new Intent();
                intent.setClassName(AIDL_BINDSERVICE_PACKAGENAME, AIDL_BINDSERVICE_SERVICENAME);
                this.mContext.bindService(intent, this.serviceConnection, 1);
            } catch (Exception e7) {
                e7.toString();
            }
            if (this.mAidl != null || (multiTaskTimer2 = this.mTimer) == null) {
                return;
            }
            multiTaskTimer2.setTimeTask(0, 5000);
        } catch (Throwable th2) {
            if (this.mAidl == null && (multiTaskTimer = this.mTimer) != null) {
                multiTaskTimer.setTimeTask(0, 5000);
            }
            throw th2;
        }
    }

    public int getCarSettingValue(int i10) {
        return getItemValue(0, i10);
    }

    public int getCarSettingValue2(int i10) {
        return getItemValue(21, i10);
    }

    public int getClusterValue(int i10) {
        return getItemValue(7, i10);
    }

    public int getItemValue(int i10, int i11) {
        return getItemValues(i10, i11)[0];
    }

    public int[] getItemValues(int i10, int i11) {
        ICarInfo iCarInfo = this.mAidl;
        if (iCarInfo != null) {
            try {
                int[] itemValues = iCarInfo.getItemValues(i10, i11);
                if (itemValues != null) {
                    if (itemValues.length > 0) {
                        return itemValues;
                    }
                }
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
        return new int[]{0};
    }

    public int getNewEnergyValue(int i10) {
        return getItemValue(1, i10);
    }

    public void init(Context context) {
        if (this.mContext == null) {
            this.mContext = context;
            this.mTimer = new MultiTaskTimer(this.timerTaskHandler);
            bindService();
        }
    }

    public boolean isDataReceivedFromMCU(int i10, int i11) {
        ICarInfo iCarInfo = this.mAidl;
        if (iCarInfo == null) {
            return false;
        }
        try {
            int[] itemValues = iCarInfo.getItemValues(i10, i11);
            if (itemValues != null) {
                return itemValues.length > 0;
            }
            return false;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isServiceConnnected() {
        return this.mIsServiceConnnected;
    }

    public void regCallBack(int i10, ICarInfoCallBack iCarInfoCallBack) {
        regCallBack(i10, iCarInfoCallBack, new int[0]);
    }

    public void regServiceConnectListener(IServiceConnectListener iServiceConnectListener) {
        if (iServiceConnectListener != null) {
            synchronized (this.mConnectListeners) {
                this.mConnectListeners.add(iServiceConnectListener);
            }
        }
    }

    public void sendCarSettingValue(int i10, int i11) {
        sendItemValue(0, i10, i11);
    }

    public void sendCarSettingValue2(int i10, int i11) {
        sendItemValue(21, i10, i11);
    }

    public void sendClusterValue(int i10, int i11) {
        sendItemValue(7, i10, i11);
    }

    public boolean sendItemValue(int i10, int i11, int i12) {
        return sendItemValues(i10, i11, new int[]{i12});
    }

    public boolean sendItemValues(int i10, int i11, int[] iArr) {
        ICarInfo iCarInfo = this.mAidl;
        if (iCarInfo == null) {
            return false;
        }
        try {
            iCarInfo.sendItemValues(i10, i11, iArr);
            return true;
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public void sendNewEnergyValue(int i10, int i11) {
        sendItemValue(1, i10, i11);
    }

    public void sendValues(int i10, int[] iArr) {
        ICarInfo iCarInfo = this.mAidl;
        if (iCarInfo != null) {
            try {
                iCarInfo.sendValues(i10, iArr);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void unBindService() {
        Context context = this.mContext;
        if (context != null) {
            context.unbindService(this.serviceConnection);
        }
    }

    public void unRegCallBack(int i10, ICarInfoCallBack iCarInfoCallBack) {
        ICarInfo iCarInfo = this.mAidl;
        if (iCarInfo != null) {
            try {
                iCarInfo.unRegCallBack(i10, iCarInfoCallBack);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void unRegServiceConnectListener(IServiceConnectListener iServiceConnectListener) {
        if (iServiceConnectListener != null) {
            synchronized (this.mConnectListeners) {
                this.mConnectListeners.remove(iServiceConnectListener);
            }
        }
    }

    public void regCallBack(int i10, ICarInfoCallBack iCarInfoCallBack, int[] iArr) {
        ICarInfo iCarInfo = this.mAidl;
        if (iCarInfo != null) {
            try {
                iCarInfo.regCallBack(i10, iCarInfoCallBack, iArr);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }
}

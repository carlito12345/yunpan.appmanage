package com.desay_svautomotive.libsvcarmodel;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.Surface;
import com.desay_svautomotive.libsvcarmodel.ICarModel;
import com.desay_svautomotive.libsvcarmodel.MultiTaskTimer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class CarModelProxy {
    private static final String TAG = "SVLibCarModel";
    private static final int TIMER_ID_REBIND_SERVICE = 0;
    private static final int TIMER_ID_RESEND_DATA = 1;
    private static final int TIMER_TIME_REBIND_SERVICE = 5000;
    private static volatile CarModelProxy mInstance;
    private Surface mSurface;
    private Context mContext = null;
    private ICarModel mAidl = null;
    private MultiTaskTimer mTimer = null;
    private boolean mIsServiceConnnected = false;
    private List<IServiceConnectListener> mConnectListeners = new CopyOnWriteArrayList();
    private HashMap<String, ControlItem> mMapDatas = new HashMap<>();
    private int mConnectCount = 0;
    private String mBindPackageName = "com.rightware.kanzi.carmodel";
    private String mBindServiceName = "com.rightware.kanzi.carmodel.CarModelService";
    private ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.desay_svautomotive.libsvcarmodel.CarModelProxy.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            CarModelProxy.this.mIsServiceConnnected = true;
            if (CarModelProxy.this.mTimer != null && CarModelProxy.this.mTimer.isTaskExist(0)) {
                CarModelProxy.this.mTimer.cancelTimeTask(0);
            }
            CarModelProxy.this.mAidl = ICarModel.Stub.asInterface(iBinder);
            synchronized (CarModelProxy.this.mConnectListeners) {
                for (int i10 = 0; i10 < CarModelProxy.this.mConnectListeners.size(); i10++) {
                    try {
                        ((IServiceConnectListener) CarModelProxy.this.mConnectListeners.get(i10)).onServiceConnectedChanged(1);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            CarModelProxy.this.sendDefaultValue();
            CarModelProxy.this.mTimer.setTimeTask(1, 800);
            if (CarModelProxy.this.mSurface != null) {
                CarModelProxy carModelProxy = CarModelProxy.this;
                carModelProxy.onSurfaceCreated(carModelProxy.mSurface);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            CarModelProxy.this.mAidl = null;
            CarModelProxy.this.mIsServiceConnnected = false;
            if (CarModelProxy.this.mTimer != null) {
                CarModelProxy.this.mTimer.setTimeTask(0, 5000);
            }
            synchronized (CarModelProxy.this.mConnectListeners) {
                for (int i10 = 0; i10 < CarModelProxy.this.mConnectListeners.size(); i10++) {
                    try {
                        ((IServiceConnectListener) CarModelProxy.this.mConnectListeners.get(i10)).onServiceConnectedChanged(0);
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    };
    private MultiTaskTimer.ITimerTaskHandler timerTaskHandler = new MultiTaskTimer.ITimerTaskHandler() { // from class: com.desay_svautomotive.libsvcarmodel.CarModelProxy.2
        @Override // com.desay_svautomotive.libsvcarmodel.MultiTaskTimer.ITimerTaskHandler
        public void onTimerTaskHandle(int i10) {
            if (i10 != 0) {
                if (i10 != 1) {
                    return;
                }
                CarModelProxy.this.sendDefaultValue();
                CarModelProxy.this.mTimer.cancelTimeTask(1);
                return;
            }
            if (CarModelProxy.this.mTimer != null && CarModelProxy.this.mTimer.isTaskExist(0)) {
                CarModelProxy.this.mTimer.cancelTimeTask(0);
            }
            CarModelProxy.this.bindService();
        }
    };

    public class ControlItem {
        public Object data;

        public /* synthetic */ ControlItem(CarModelProxy carModelProxy, int i10) {
            this();
        }

        private ControlItem() {
        }
    }

    public static CarModelProxy getInstance() {
        if (mInstance == null) {
            synchronized (CarModelProxy.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new CarModelProxy();
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    private void saveControlData(String str, Object obj) {
        ControlItem controlItem = new ControlItem(this, 0);
        controlItem.data = obj;
        synchronized (this.mMapDatas) {
            this.mMapDatas.put(str, controlItem);
        }
    }

    private void unBindService() {
        Context context = this.mContext;
        if (context != null) {
            context.unbindService(this.serviceConnection);
        }
    }

    public void bindService() {
        MultiTaskTimer multiTaskTimer;
        MultiTaskTimer multiTaskTimer2;
        int i10 = 1000;
        try {
            try {
                Intent intent = new Intent();
                intent.setClassName(this.mBindPackageName, this.mBindServiceName);
                this.mContext.bindService(intent, this.serviceConnection, 1);
            } catch (Exception e7) {
                e7.toString();
                if (this.mAidl == null && this.mTimer != null && this.mConnectCount >= 5) {
                    i10 = 5000;
                }
            }
            if (this.mAidl == null && (multiTaskTimer2 = this.mTimer) != null) {
                if (this.mConnectCount >= 5) {
                    i10 = 5000;
                }
                multiTaskTimer2.setTimeTask(0, i10);
            }
            i10 = this.mConnectCount + 1;
            this.mConnectCount = i10;
        } catch (Throwable unused) {
            if (this.mAidl == null && (multiTaskTimer = this.mTimer) != null) {
                multiTaskTimer.setTimeTask(0, this.mConnectCount < 5 ? i10 : 5000);
            }
            this.mConnectCount++;
        }
    }

    public boolean getSurfaceIsCreate() {
        ICarModel iCarModel = this.mAidl;
        if (iCarModel == null) {
            return false;
        }
        try {
            return iCarModel.getSurfaceIsCreate();
        } catch (RemoteException e7) {
            e7.printStackTrace();
            return false;
        }
    }

    public void init(Context context) {
        if (this.mContext == null) {
            this.mContext = context;
            this.mTimer = new MultiTaskTimer(this.timerTaskHandler);
            bindService();
        }
    }

    public boolean isServiceConnnected() {
        return this.mIsServiceConnnected;
    }

    public void onSurfaceChanged(int i10, int i11) {
        ICarModel iCarModel = this.mAidl;
        if (iCarModel != null) {
            try {
                iCarModel.onSurfaceChanged(i10, i11);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void onSurfaceCreated(Surface surface) {
        this.mSurface = surface;
        ICarModel iCarModel = this.mAidl;
        if (iCarModel != null) {
            try {
                iCarModel.onSurfaceCreated(surface);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void onSurfaceDestroyed() {
        this.mSurface = null;
        ICarModel iCarModel = this.mAidl;
        if (iCarModel != null) {
            try {
                iCarModel.onSurfaceDestroyed();
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        ICarModel iCarModel = this.mAidl;
        if (iCarModel != null) {
            try {
                iCarModel.onTouchEvent(motionEvent);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void regCallBack(ICarModelCallBack iCarModelCallBack) {
        ICarModel iCarModel = this.mAidl;
        if (iCarModel != null) {
            try {
                iCarModel.regCallBack(iCarModelCallBack);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void regServiceConnectListener(IServiceConnectListener iServiceConnectListener) {
        if (iServiceConnectListener != null) {
            synchronized (this.mConnectListeners) {
                this.mConnectListeners.add(iServiceConnectListener);
            }
        }
    }

    public void sendDefaultValue() {
        synchronized (this.mMapDatas) {
            try {
                for (Map.Entry<String, ControlItem> entry : this.mMapDatas.entrySet()) {
                    if (entry.getValue().data instanceof Boolean) {
                        setDataBool(entry.getKey(), ((Boolean) entry.getValue().data).booleanValue());
                    } else if (entry.getValue().data instanceof Integer) {
                        setDataInt(entry.getKey(), ((Integer) entry.getValue().data).intValue());
                    } else if (entry.getValue().data instanceof Double) {
                        setDataReal(entry.getKey(), ((Double) entry.getValue().data).doubleValue());
                    } else if (entry.getValue().data instanceof String) {
                        setDataString(entry.getKey(), (String) entry.getValue().data);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setClassName(String str, String str2) {
        this.mBindPackageName = str;
        this.mBindServiceName = str2;
    }

    public void setDataBool(String str, boolean z) {
        saveControlData(str, Boolean.valueOf(z));
        ICarModel iCarModel = this.mAidl;
        if (iCarModel != null) {
            try {
                iCarModel.setDataBool(str, z);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void setDataInt(String str, int i10) {
        saveControlData(str, Integer.valueOf(i10));
        ICarModel iCarModel = this.mAidl;
        if (iCarModel != null) {
            try {
                iCarModel.setDataInt(str, i10);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void setDataReal(String str, double d10) {
        saveControlData(str, Double.valueOf(d10));
        ICarModel iCarModel = this.mAidl;
        if (iCarModel != null) {
            try {
                iCarModel.setDataReal(str, d10);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void setDataString(String str, String str2) {
        saveControlData(str, str2);
        ICarModel iCarModel = this.mAidl;
        if (iCarModel != null) {
            try {
                iCarModel.setDataString(str, str2);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
    }

    public void unRegCallBack(ICarModelCallBack iCarModelCallBack) {
        ICarModel iCarModel = this.mAidl;
        if (iCarModel != null) {
            try {
                iCarModel.unRegCallBack(iCarModelCallBack);
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
}

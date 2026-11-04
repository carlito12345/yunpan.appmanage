package com.desay_svautomotive.libsvcarinfo;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CarInfoTimer {
    private static final String TAG = "CarInfoTimer";
    private static volatile CarInfoTimer mInstance;
    private ArrayList<CarInfoHelper> mTimerCallBacks = new ArrayList<>();

    public CarInfoTimer() {
        new Thread(new Runnable() { // from class: com.desay_svautomotive.libsvcarinfo.CarInfoTimer.1
            @Override // java.lang.Runnable
            public void run() throws InterruptedException {
                while (true) {
                    try {
                        Thread.sleep(200L);
                    } catch (InterruptedException e7) {
                        e7.printStackTrace();
                    }
                    synchronized (CarInfoTimer.this.mTimerCallBacks) {
                        try {
                            Iterator it = CarInfoTimer.this.mTimerCallBacks.iterator();
                            while (it.hasNext()) {
                                ((CarInfoHelper) it.next()).onSVTimer();
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    NetCommProxy.getInstance().onSVTimer();
                }
            }
        }).start();
    }

    public static CarInfoTimer getInstance() {
        if (mInstance == null) {
            synchronized (CarInfoTimer.class) {
                try {
                    if (mInstance == null) {
                        mInstance = new CarInfoTimer();
                    }
                } finally {
                }
            }
        }
        return mInstance;
    }

    public void regTimerCallBack(CarInfoHelper carInfoHelper) {
        if (carInfoHelper != null) {
            synchronized (this.mTimerCallBacks) {
                this.mTimerCallBacks.add(carInfoHelper);
            }
        }
    }

    public void unRegTimerCallBack(CarInfoHelper carInfoHelper) {
        synchronized (this.mTimerCallBacks) {
            this.mTimerCallBacks.remove(carInfoHelper);
        }
    }
}

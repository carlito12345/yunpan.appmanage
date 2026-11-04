package wa;

import android.hardware.input.IInputManager;
import android.hardware.input.InputManager;
import android.os.Build;
import android.os.RemoteException;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.desay_svautomotive.libsvcarinfo.CarLanID;

/* loaded from: classes.dex */
public abstract class c {
    public static void a(IInputManager iInputManager, int i10, int i11, int i12, int i13, int i14, int i15) throws InterruptedException {
        try {
            c(iInputManager, i10, i11);
            Thread.sleep(10L);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent.PointerProperties[] pointerPropertiesArr = {new MotionEvent.PointerProperties()};
            MotionEvent.PointerProperties pointerProperties = pointerPropertiesArr[0];
            pointerProperties.id = 0;
            pointerProperties.toolType = 3;
            MotionEvent.PointerCoords[] pointerCoordsArr = {new MotionEvent.PointerCoords()};
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[0];
            pointerCoords.x = i10;
            pointerCoords.y = i11;
            pointerCoords.pressure = 1.0f;
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, 1, pointerPropertiesArr, pointerCoordsArr, 0, 1, 1.0f, 1.0f, 0, 0, 8194, 0);
            boolean zInjectInputEvent = iInputManager.injectInputEvent(motionEventObtain, 2);
            motionEventObtain.recycle();
            if (zInjectInputEvent) {
                int i16 = i12 - i10;
                long j10 = 4611686018427387904L;
                int i17 = i13 - i11;
                int iSqrt = (int) Math.sqrt(Math.pow(i16, 2.0d) + Math.pow(i17, 2.0d));
                int iMin = Math.min(10, Math.max(3, iSqrt / 30));
                float f10 = i16;
                float f11 = iMin;
                float f12 = f10 / f11;
                float f13 = i17 / f11;
                int i18 = 30 / iMin;
                if (i18 < 1) {
                    i18 = 1;
                }
                System.out.getClass();
                if (iSqrt < 60) {
                    iMin = 1;
                }
                int i19 = 1;
                while (i19 <= iMin) {
                    float f14 = i19;
                    int iRound = Math.round(f12 * f14) + i10;
                    int iRound2 = Math.round(f14 * f13) + i11;
                    long jUptimeMillis2 = SystemClock.uptimeMillis();
                    MotionEvent.PointerCoords pointerCoords2 = pointerCoordsArr[0];
                    pointerCoords2.x = iRound;
                    pointerCoords2.y = iRound2;
                    float f15 = f12;
                    MotionEvent motionEventObtain2 = MotionEvent.obtain(jUptimeMillis, jUptimeMillis2, 2, 1, pointerPropertiesArr, pointerCoordsArr, 0, 1, 1.0f, 1.0f, 0, 0, 8194, 0);
                    iInputManager.injectInputEvent(motionEventObtain2, 2);
                    motionEventObtain2.recycle();
                    if (i18 > 1 && i19 < iMin) {
                        Thread.sleep(i18);
                    }
                    i19++;
                    f12 = f15;
                    j10 = 4611686018427387904L;
                }
                long jUptimeMillis3 = SystemClock.uptimeMillis();
                MotionEvent.PointerCoords pointerCoords3 = pointerCoordsArr[0];
                pointerCoords3.x = i12;
                pointerCoords3.y = i13;
                MotionEvent motionEventObtain3 = MotionEvent.obtain(jUptimeMillis, jUptimeMillis3, 1, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 8194, 0);
                boolean zInjectInputEvent2 = iInputManager.injectInputEvent(motionEventObtain3, 2);
                motionEventObtain3.recycle();
                if (zInjectInputEvent2) {
                    int i20 = i14 - i12;
                    int i21 = i15 - i13;
                    int iMin2 = Math.min(8, Math.max(2, ((int) Math.sqrt(Math.pow(i20, 2.0d) + Math.pow(i21, 2.0d))) / 40));
                    float f16 = iMin2;
                    float f17 = i20 / f16;
                    float f18 = i21 / f16;
                    int i22 = 10 / iMin2;
                    int i23 = i22 < 1 ? 1 : i22;
                    if (i18 < 1) {
                        i23 = 1;
                    }
                    for (int i24 = 1; i24 <= iMin2; i24++) {
                        float f19 = i24;
                        int iRound3 = Math.round(f17 * f19) + i12;
                        int iRound4 = Math.round(f19 * f18) + i13;
                        long jUptimeMillis4 = SystemClock.uptimeMillis();
                        MotionEvent motionEventObtain4 = MotionEvent.obtain(jUptimeMillis4, jUptimeMillis4, 7, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 8194, 0);
                        motionEventObtain4.getPointerCoords(0, pointerCoordsArr[0]);
                        MotionEvent.PointerCoords pointerCoords4 = pointerCoordsArr[0];
                        pointerCoords4.x = iRound3;
                        pointerCoords4.y = iRound4;
                        pointerCoords4.pressure = 0.0f;
                        iInputManager.injectInputEvent(motionEventObtain4, 2);
                        motionEventObtain4.recycle();
                        if (i23 > 1 && i24 < iMin2) {
                            Thread.sleep(i23);
                        }
                    }
                }
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static boolean b(IInputManager iInputManager, KeyEvent keyEvent) {
        int i10 = InputManager.INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH;
        try {
            return Build.VERSION.SDK_INT >= 33 ? iInputManager.injectInputEventToTarget(keyEvent, i10, -1) : iInputManager.injectInputEvent(keyEvent, i10);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public static void c(IInputManager iInputManager, int i10, int i11) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent.PointerProperties[] pointerPropertiesArr = {new MotionEvent.PointerProperties()};
            MotionEvent.PointerProperties pointerProperties = pointerPropertiesArr[0];
            pointerProperties.id = 0;
            pointerProperties.toolType = 3;
            MotionEvent.PointerCoords[] pointerCoordsArr = {new MotionEvent.PointerCoords()};
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[0];
            pointerCoords.x = i10;
            pointerCoords.y = i11;
            pointerCoords.pressure = 0.0f;
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 7, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 8194, 0);
            iInputManager.injectInputEvent(motionEventObtain, 2);
            motionEventObtain.recycle();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static void d(IInputManager iInputManager, int i10, boolean z) throws InterruptedException {
        if (iInputManager == null) {
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        KeyEvent keyEvent = new KeyEvent(jUptimeMillis, jUptimeMillis, 0, i10, 0);
        b(iInputManager, keyEvent);
        if (z) {
            Thread.sleep(ViewConfiguration.getLongPressTimeout() + 50);
            b(iInputManager, KeyEvent.changeTimeRepeat(keyEvent, jUptimeMillis + ViewConfiguration.getLongPressTimeout() + 50, 1, 128));
        }
        b(iInputManager, KeyEvent.changeAction(keyEvent, 1));
    }

    public static void e(IInputManager iInputManager, int i10, int i11, int i12, boolean z) throws InterruptedException {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent.PointerProperties[] pointerPropertiesArr = {new MotionEvent.PointerProperties()};
            MotionEvent.PointerProperties pointerProperties = pointerPropertiesArr[0];
            pointerProperties.id = 0;
            pointerProperties.toolType = 3;
            MotionEvent.PointerCoords[] pointerCoordsArr = {new MotionEvent.PointerCoords()};
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[0];
            pointerCoords.x = i10;
            pointerCoords.y = i11;
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, 1, pointerPropertiesArr, pointerCoordsArr, 0, i12, 1.0f, 1.0f, 0, 0, 8194, 0);
            boolean zInjectInputEvent = iInputManager.injectInputEvent(motionEventObtain, 2);
            motionEventObtain.recycle();
            if (zInjectInputEvent) {
                Thread.sleep(z ? 888L : 30L);
                MotionEvent motionEventObtain2 = MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), 1, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 8194, 0);
                iInputManager.injectInputEvent(motionEventObtain2, 2);
                motionEventObtain2.recycle();
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static void f(IInputManager iInputManager, int i10, int i11, float f10, float f11) {
        if (iInputManager == null) {
            return;
        }
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent.PointerProperties[] pointerPropertiesArr = {new MotionEvent.PointerProperties()};
            pointerPropertiesArr[0].clear();
            MotionEvent.PointerProperties pointerProperties = pointerPropertiesArr[0];
            pointerProperties.id = 0;
            pointerProperties.toolType = 3;
            MotionEvent.PointerCoords[] pointerCoordsArr = {new MotionEvent.PointerCoords()};
            pointerCoordsArr[0].clear();
            MotionEvent.PointerCoords pointerCoords = pointerCoordsArr[0];
            pointerCoords.x = i10;
            pointerCoords.y = i11;
            pointerCoords.setAxisValue(10, f10);
            pointerCoordsArr[0].setAxisValue(9, f11);
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 8, 1, pointerPropertiesArr, pointerCoordsArr, 0, 0, 1.0f, 1.0f, 0, 0, 8194, 0);
            iInputManager.injectInputEvent(motionEventObtain, 2);
            motionEventObtain.recycle();
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    public static void g(IInputManager iInputManager, int i10, int i11, boolean z) throws InterruptedException {
        if (iInputManager == null) {
            return;
        }
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            float f10 = i10;
            float f11 = i11;
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, f10, f11, 1.0f, 1.0f, 0, 1.0f, 1.0f, 0, 0);
            motionEventObtain.setSource(CarLanID.Send.RADIO);
            boolean zInjectInputEvent = iInputManager.injectInputEvent(motionEventObtain, 2);
            motionEventObtain.recycle();
            if (zInjectInputEvent) {
                Thread.sleep(z ? 888L : 30L);
                MotionEvent motionEventObtain2 = MotionEvent.obtain(jUptimeMillis, SystemClock.uptimeMillis(), 1, f10, f11, 1.0f, 1.0f, 0, 1.0f, 1.0f, 0, 0);
                motionEventObtain2.setSource(CarLanID.Send.RADIO);
                iInputManager.injectInputEvent(motionEventObtain2, 2);
                motionEventObtain2.recycle();
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }
}

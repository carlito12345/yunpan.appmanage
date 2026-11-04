package ga;

import android.hardware.input.IInputManager;
import android.hardware.input.InputManager;
import android.os.Build;
import android.os.RemoteException;
import android.view.KeyEvent;

/* loaded from: classes.dex */
public abstract class a {
    public static boolean a(IInputManager iInputManager, KeyEvent keyEvent) {
        int i10 = InputManager.INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH;
        try {
            return Build.VERSION.SDK_INT >= 33 ? iInputManager.injectInputEventToTarget(keyEvent, i10, -1) : iInputManager.injectInputEvent(keyEvent, i10);
        } catch (RemoteException unused) {
            return false;
        }
    }
}

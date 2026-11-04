package com.hjq.toast;

import android.annotation.TargetApi;
import android.app.Application;
import android.os.Handler;
import android.widget.Toast;
import java.lang.reflect.Field;

@TargetApi(19)
/* loaded from: classes.dex */
public class SafeToast extends NotificationToast {
    public SafeToast(Application application) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        super(application);
        hookToastTN();
    }

    private void hookToastTN() throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Field declaredField2 = declaredField.getType().getDeclaredField("mHandler");
            declaredField2.setAccessible(true);
            Handler handler = (Handler) declaredField2.get(obj);
            if (handler == null || (handler instanceof SafeHandler)) {
                return;
            }
            declaredField2.set(obj, new SafeHandler(handler));
        } catch (IllegalAccessException | NoSuchFieldException e7) {
            e7.printStackTrace();
        }
    }
}

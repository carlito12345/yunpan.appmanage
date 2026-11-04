package com.hjq.toast;

import com.hjq.toast.config.IToastInterceptor;
import java.lang.reflect.Modifier;

/* loaded from: classes.dex */
public class ToastLogInterceptor implements IToastInterceptor {
    public boolean filterClass(Class<?> cls) {
        return IToastInterceptor.class.isAssignableFrom(cls) || Toaster.class.equals(cls) || cls.isInterface() || Modifier.isAbstract(cls.getModifiers());
    }

    @Override // com.hjq.toast.config.IToastInterceptor
    public boolean intercept(ToastParams toastParams) {
        CharSequence charSequence = toastParams.text;
        if (charSequence == null || charSequence.length() <= 0) {
            return false;
        }
        printToast(charSequence);
        return false;
    }

    public boolean isLogEnable() {
        return Toaster.isDebugMode();
    }

    public void printLog(String str) {
    }

    public void printToast(CharSequence charSequence) {
        if (isLogEnable()) {
            for (StackTraceElement stackTraceElement : new Throwable().getStackTrace()) {
                int lineNumber = stackTraceElement.getLineNumber();
                if (lineNumber > 0) {
                    try {
                        if (!filterClass(Class.forName(stackTraceElement.getClassName()))) {
                            printLog("(" + stackTraceElement.getFileName() + ":" + lineNumber + ") " + ((Object) charSequence));
                            return;
                        }
                        continue;
                    } catch (ClassNotFoundException e7) {
                        e7.printStackTrace();
                    }
                }
            }
        }
    }
}

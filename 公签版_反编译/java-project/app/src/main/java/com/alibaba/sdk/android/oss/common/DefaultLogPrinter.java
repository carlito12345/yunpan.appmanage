package com.alibaba.sdk.android.oss.common;

/* loaded from: classes.dex */
public class DefaultLogPrinter implements LogPrinter {
    private static final String TAG = "OSS-Android-SDK";

    /* renamed from: com.alibaba.sdk.android.oss.common.DefaultLogPrinter$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$alibaba$sdk$android$oss$common$LogLevel;

        static {
            int[] iArr = new int[LogLevel.values().length];
            $SwitchMap$com$alibaba$sdk$android$oss$common$LogLevel = iArr;
            try {
                iArr[LogLevel.INFO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$LogLevel[LogLevel.VERBOSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$LogLevel[LogLevel.WARN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$LogLevel[LogLevel.DEBUG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$alibaba$sdk$android$oss$common$LogLevel[LogLevel.ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.alibaba.sdk.android.oss.common.LogPrinter
    public void log(LogLevel logLevel, String str) {
        int i10 = AnonymousClass1.$SwitchMap$com$alibaba$sdk$android$oss$common$LogLevel[logLevel.ordinal()];
        if (i10 == 1) {
            "[INFO]: ".concat(str);
            return;
        }
        if (i10 == 2) {
            "[VERBOSE]: ".concat(str);
            return;
        }
        if (i10 == 3) {
            "[WARN]: ".concat(str);
        } else if (i10 == 4) {
            "[DEBUG]: ".concat(str);
        } else {
            if (i10 != 5) {
                return;
            }
            "[ERROR]: ".concat(str);
        }
    }
}

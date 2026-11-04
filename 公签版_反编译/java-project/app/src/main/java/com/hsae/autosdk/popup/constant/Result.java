package com.hsae.autosdk.popup.constant;

/* loaded from: classes.dex */
public enum Result {
    SUCCESS,
    EXCEPTION,
    REMOTE_EXCEPTION,
    ERROR_ENUM_INDEX,
    ERROR_EMPTY_CONTEXT,
    ERROR_EMPTY_VIEW,
    ERROR_EMPTY_POPUP_TYPE,
    ERROR_EMPTY_WARN_TYPE,
    ERROR_EMPTY_POPUP_CALLBACK,
    ERROR_POPUP_ALREADY_EXIST,
    ERROR_FORBIDDEN_POPUP_TYPE_TO_REGISTER;

    public static final Result findByIndex(int i10) {
        try {
            return values()[i10];
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }
}

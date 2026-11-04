package com.rapid7.client.dcerpc.msvcctl.dto.enums;

/* loaded from: classes.dex */
public enum WindowsOperation {
    START_SERVICE("start"),
    STOP_SERVICE("stop");

    private String m_operationName;

    WindowsOperation(String str) {
        this.m_operationName = str;
    }

    public String getOperationName() {
        return this.m_operationName;
    }
}

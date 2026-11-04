package com.alibaba.sdk.android.oss;

import com.alibaba.sdk.android.oss.common.OSSLog;

/* loaded from: classes.dex */
public class ServiceException extends Exception {
    public static final String PARSE_RESPONSE_FAIL = "SDKParseResponseFail";
    private static final long serialVersionUID = 430933593095358673L;
    private String date;

    /* renamed from: ec, reason: collision with root package name */
    private String f3264ec;
    private String errorCode;
    private String hostId;
    private String partEtag;
    private String partNumber;
    private String rawMessage;
    private String recommendDoc;
    private String requestId;
    private int statusCode;

    public ServiceException(int i10, String str, String str2, String str3, String str4, String str5) {
        this(i10, str, str2, str3, str4, str5, null);
    }

    public String getDate() {
        return this.date;
    }

    public String getEc() {
        return this.f3264ec;
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getHostId() {
        return this.hostId;
    }

    public String getPartEtag() {
        return this.partEtag;
    }

    public String getPartNumber() {
        return this.partNumber;
    }

    public String getRawMessage() {
        return this.rawMessage;
    }

    public String getRecommendDoc() {
        return this.recommendDoc;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public void setDate(String str) {
        this.date = str;
    }

    public void setPartEtag(String str) {
        this.partEtag = str;
    }

    public void setPartNumber(String str) {
        this.partNumber = str;
    }

    public void setRecommendDoc(String str) {
        this.recommendDoc = str;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "[StatusCode]: " + this.statusCode + ", [Code]: " + getErrorCode() + ", [Message]: " + getMessage() + ", [Requestid]: " + getRequestId() + ", [HostId]: " + getHostId() + ", [RawMessage]: " + getRawMessage();
    }

    public ServiceException(int i10, String str, String str2, String str3, String str4, String str5, String str6) {
        super(str);
        this.statusCode = i10;
        this.errorCode = str2;
        this.requestId = str3;
        this.hostId = str4;
        this.rawMessage = str5;
        this.f3264ec = str6;
        OSSLog.logThrowable2Local(this);
    }
}

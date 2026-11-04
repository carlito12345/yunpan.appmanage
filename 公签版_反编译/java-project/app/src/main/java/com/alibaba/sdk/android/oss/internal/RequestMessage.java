package com.alibaba.sdk.android.oss.internal;

import android.net.Uri;
import android.support.v4.media.session.a;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.HttpMethod;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.auth.OSSCredentialProvider;
import com.alibaba.sdk.android.oss.common.utils.HttpUtil;
import com.alibaba.sdk.android.oss.common.utils.HttpdnsMini;
import com.alibaba.sdk.android.oss.common.utils.OSSUtils;
import com.alibaba.sdk.android.oss.model.BucketLifecycleRule;
import com.alibaba.sdk.android.oss.signer.RequestSigner;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import d0.f;
import g.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class RequestMessage extends HttpMessage {
    private String bucketName;
    private boolean checkCRC64;
    private OSSCredentialProvider credentialProvider;
    private URI endpoint;
    private String ipWithHeader;
    private HttpMethod method;
    private String objectKey;
    private URI service;
    private RequestSigner signer;
    private byte[] uploadData;
    private String uploadFilePath;
    private Uri uploadUri;
    private boolean isAuthorizationRequired = true;
    private Map<String, String> parameters = new LinkedHashMap();
    private boolean httpDnsEnable = false;
    private boolean pathStyleAccessEnable = false;
    private boolean customPathPrefixEnable = false;
    private boolean isInCustomCnameExcludeList = false;
    private boolean useUrlSignature = false;
    private Set<String> additionalHeaderNames = new HashSet();

    @Override // com.alibaba.sdk.android.oss.internal.HttpMessage
    public /* bridge */ /* synthetic */ void addHeader(String str, String str2) {
        super.addHeader(str, str2);
    }

    public void addParameter(String str, String str2) {
        this.parameters.put(str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String buildCanonicalURL() {
        boolean z = false;
        OSSUtils.assertTrue(this.endpoint != null, "Endpoint haven't been set!");
        String scheme = this.endpoint.getScheme();
        String host = this.endpoint.getHost();
        String path = this.endpoint.getPath();
        int port = this.endpoint.getPort();
        String ipByHostAsync = null;
        String strValueOf = port != -1 ? String.valueOf(port) : null;
        if (TextUtils.isEmpty(host)) {
            OSSLog.logDebug("endpoint url : " + this.endpoint.toString());
        }
        OSSLog.logDebug(" scheme : " + scheme);
        OSSLog.logDebug(" originHost : " + host);
        OSSLog.logDebug(" port : " + strValueOf);
        String string = scheme + "://" + host;
        if (!TextUtils.isEmpty(strValueOf)) {
            string = b.k(string, ":", strValueOf);
        }
        if (!TextUtils.isEmpty(this.bucketName)) {
            if (OSSUtils.isOssOriginHost(host)) {
                String strU = a.u(new StringBuilder(), this.bucketName, ".", host);
                if (isHttpDnsEnable()) {
                    ipByHostAsync = HttpdnsMini.getInstance().getIpByHostAsync(strU);
                } else {
                    OSSLog.logDebug("[buildCannonicalURL], disable httpdns");
                }
                addHeader("Host", strU);
                string = !TextUtils.isEmpty(ipByHostAsync) ? b.k(scheme, "://", ipByHostAsync) : b.k(scheme, "://", strU);
            } else if (this.isInCustomCnameExcludeList) {
                if (this.pathStyleAccessEnable) {
                    z = true;
                } else {
                    string = a.u(f.b(scheme, "://"), this.bucketName, ".", host);
                }
            } else if (OSSUtils.isValidateIP(host)) {
                if (!OSSUtils.isEmptyString(this.ipWithHeader)) {
                    addHeader("Host", getIpWithHeader());
                }
            }
        }
        if (this.customPathPrefixEnable && path != null) {
            string = b.j(string, path);
        }
        if (z) {
            StringBuilder sbB = f.b(string, "/");
            sbB.append(this.bucketName);
            string = sbB.toString();
        }
        if (!TextUtils.isEmpty(this.objectKey)) {
            StringBuilder sbB2 = f.b(string, "/");
            sbB2.append(HttpUtil.urlEncode(this.objectKey, "utf-8"));
            string = sbB2.toString();
        }
        String strParamToQueryString = OSSUtils.paramToQueryString(this.parameters, "utf-8");
        StringBuilder sb2 = new StringBuilder("request---------------------\n");
        sb2.append("request url=" + string + SignParameters.NEW_LINE);
        sb2.append("request params=" + strParamToQueryString + SignParameters.NEW_LINE);
        for (String str : getHeaders().keySet()) {
            sb2.append("requestHeader [" + str + "]: ");
            sb2.append(((String) getHeaders().get(str)) + SignParameters.NEW_LINE);
        }
        OSSLog.logDebug(sb2.toString());
        return OSSUtils.isEmptyString(strParamToQueryString) ? string : b.k(string, "?", strParamToQueryString);
    }

    public String buildOSSServiceURL() {
        String ipByHostAsync;
        OSSUtils.assertTrue(this.service != null, "Service haven't been set!");
        String host = this.service.getHost();
        String scheme = this.service.getScheme();
        if (isHttpDnsEnable() && scheme.equalsIgnoreCase("http")) {
            ipByHostAsync = HttpdnsMini.getInstance().getIpByHostAsync(host);
        } else {
            OSSLog.logDebug("[buildOSSServiceURL], disable httpdns or http is not need httpdns");
            ipByHostAsync = null;
        }
        if (ipByHostAsync == null) {
            ipByHostAsync = host;
        }
        getHeaders().put("Host", host);
        String str = scheme + "://" + ipByHostAsync;
        String strParamToQueryString = OSSUtils.paramToQueryString(this.parameters, "utf-8");
        return OSSUtils.isEmptyString(strParamToQueryString) ? str : b.k(str, "?", strParamToQueryString);
    }

    @Override // com.alibaba.sdk.android.oss.internal.HttpMessage
    public /* bridge */ /* synthetic */ void close() throws IOException {
        super.close();
    }

    public void createBucketRequestBodyMarshall(Map<String, String> map) {
        StringBuffer stringBuffer = new StringBuffer();
        if (map != null) {
            stringBuffer.append("<CreateBucketConfiguration>");
            for (Map.Entry<String, String> entry : map.entrySet()) {
                stringBuffer.append("<" + entry.getKey() + ">" + entry.getValue() + "</" + entry.getKey() + ">");
            }
            stringBuffer.append("</CreateBucketConfiguration>");
            setStringBody(stringBuffer.toString());
        }
    }

    public byte[] deleteMultipleObjectRequestBodyMarshall(List<String> list, boolean z) throws UnsupportedEncodingException {
        StringBuffer stringBuffer = new StringBuffer("<Delete>");
        if (z) {
            stringBuffer.append("<Quiet>true</Quiet>");
        } else {
            stringBuffer.append("<Quiet>false</Quiet>");
        }
        for (String str : list) {
            stringBuffer.append("<Object><Key>");
            stringBuffer.append(OSSUtils.escapeKey(str));
            stringBuffer.append("</Key></Object>");
        }
        stringBuffer.append("</Delete>");
        String string = stringBuffer.toString();
        byte[] bytes = string.getBytes("utf-8");
        setStringBody(string);
        return bytes;
    }

    public Set<String> getAdditionalHeaderNames() {
        return this.additionalHeaderNames;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    @Override // com.alibaba.sdk.android.oss.internal.HttpMessage
    public /* bridge */ /* synthetic */ InputStream getContent() {
        return super.getContent();
    }

    @Override // com.alibaba.sdk.android.oss.internal.HttpMessage
    public /* bridge */ /* synthetic */ long getContentLength() {
        return super.getContentLength();
    }

    public OSSCredentialProvider getCredentialProvider() {
        return this.credentialProvider;
    }

    public URI getEndpoint() {
        return this.endpoint;
    }

    @Override // com.alibaba.sdk.android.oss.internal.HttpMessage
    public /* bridge */ /* synthetic */ Map getHeaders() {
        return super.getHeaders();
    }

    public String getIpWithHeader() {
        return this.ipWithHeader;
    }

    public HttpMethod getMethod() {
        return this.method;
    }

    public String getObjectKey() {
        return this.objectKey;
    }

    public Map<String, String> getParameters() {
        return this.parameters;
    }

    public URI getService() {
        return this.service;
    }

    public RequestSigner getSigner() {
        return this.signer;
    }

    @Override // com.alibaba.sdk.android.oss.internal.HttpMessage
    public /* bridge */ /* synthetic */ String getStringBody() {
        return super.getStringBody();
    }

    public byte[] getUploadData() {
        return this.uploadData;
    }

    public String getUploadFilePath() {
        return this.uploadFilePath;
    }

    public Uri getUploadUri() {
        return this.uploadUri;
    }

    public boolean isAuthorizationRequired() {
        return this.isAuthorizationRequired;
    }

    public boolean isCheckCRC64() {
        return this.checkCRC64;
    }

    public boolean isCustomPathPrefixEnable() {
        return this.customPathPrefixEnable;
    }

    public boolean isHttpDnsEnable() {
        return this.httpDnsEnable;
    }

    public boolean isInCustomCnameExcludeList() {
        return this.isInCustomCnameExcludeList;
    }

    public boolean isPathStyleAccessEnable() {
        return this.pathStyleAccessEnable;
    }

    public boolean isUseUrlSignature() {
        return this.useUrlSignature;
    }

    public void putBucketLifecycleRequestBodyMarshall(ArrayList<BucketLifecycleRule> arrayList) {
        StringBuffer stringBuffer = new StringBuffer("<LifecycleConfiguration>");
        Iterator<BucketLifecycleRule> it = arrayList.iterator();
        while (it.hasNext()) {
            BucketLifecycleRule next = it.next();
            stringBuffer.append("<Rule>");
            if (next.getIdentifier() != null) {
                stringBuffer.append("<ID>" + next.getIdentifier() + "</ID>");
            }
            if (next.getPrefix() != null) {
                stringBuffer.append("<Prefix>" + next.getPrefix() + "</Prefix>");
            }
            StringBuilder sb2 = new StringBuilder("<Status>");
            sb2.append(next.getStatus() ? "Enabled" : "Disabled");
            sb2.append("</Status>");
            stringBuffer.append(sb2.toString());
            if (next.getDays() != null) {
                stringBuffer.append("<Days>" + next.getDays() + "</Days>");
            } else if (next.getExpireDate() != null) {
                stringBuffer.append("<Date>" + next.getExpireDate() + "</Date>");
            }
            if (next.getMultipartDays() != null) {
                stringBuffer.append("<AbortMultipartUpload><Days>" + next.getMultipartDays() + "</Days></AbortMultipartUpload>");
            } else if (next.getMultipartExpireDate() != null) {
                stringBuffer.append("<AbortMultipartUpload><Date>" + next.getMultipartDays() + "</Date></AbortMultipartUpload>");
            }
            if (next.getIADays() != null) {
                stringBuffer.append("<Transition><Days>" + next.getIADays() + "</Days><StorageClass>IA</StorageClass></Transition>");
            } else if (next.getIAExpireDate() != null) {
                stringBuffer.append("<Transition><Date>" + next.getIAExpireDate() + "</Date><StorageClass>IA</StorageClass></Transition>");
            } else if (next.getArchiveDays() != null) {
                stringBuffer.append("<Transition><Days>" + next.getArchiveDays() + "</Days><StorageClass>Archive</StorageClass></Transition>");
            } else if (next.getArchiveExpireDate() != null) {
                stringBuffer.append("<Transition><Date>" + next.getArchiveExpireDate() + "</Date><StorageClass>Archive</StorageClass></Transition>");
            }
            stringBuffer.append("</Rule>");
        }
        stringBuffer.append("</LifecycleConfiguration>");
        setStringBody(stringBuffer.toString());
    }

    public void putBucketLoggingRequestBodyMarshall(String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer("<BucketLoggingStatus>");
        if (str != null) {
            stringBuffer.append("<LoggingEnabled><TargetBucket>" + str + "</TargetBucket>");
            if (str2 != null) {
                stringBuffer.append("<TargetPrefix>" + str2 + "</TargetPrefix>");
            }
            stringBuffer.append("</LoggingEnabled>");
        }
        stringBuffer.append("</BucketLoggingStatus>");
        setStringBody(stringBuffer.toString());
    }

    public void putBucketRefererRequestBodyMarshall(ArrayList<String> arrayList, boolean z) {
        StringBuffer stringBuffer = new StringBuffer("<RefererConfiguration>");
        StringBuilder sb2 = new StringBuilder("<AllowEmptyReferer>");
        sb2.append(z ? "true" : "false");
        sb2.append("</AllowEmptyReferer>");
        stringBuffer.append(sb2.toString());
        if (arrayList != null && arrayList.size() > 0) {
            stringBuffer.append("<RefererList>");
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                stringBuffer.append("<Referer>" + it.next() + "</Referer>");
            }
            stringBuffer.append("</RefererList>");
        }
        stringBuffer.append("</RefererConfiguration>");
        setStringBody(stringBuffer.toString());
    }

    public byte[] putObjectTaggingRequestBodyMarshall(Map<String, String> map) throws UnsupportedEncodingException {
        StringBuffer stringBuffer = new StringBuffer("<Tagging><TagSet>");
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                stringBuffer.append("<Tag><Key>");
                stringBuffer.append(entry.getKey());
                stringBuffer.append("</Key><Value>");
                stringBuffer.append(entry.getValue());
                stringBuffer.append("</Value></Tag>");
            }
        }
        stringBuffer.append("</TagSet></Tagging>");
        String string = stringBuffer.toString();
        byte[] bytes = string.getBytes("utf-8");
        setStringBody(string);
        return bytes;
    }

    public void setAdditionalHeaderNames(Set<String> set) {
        this.additionalHeaderNames = set;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setCheckCRC64(boolean z) {
        this.checkCRC64 = z;
    }

    @Override // com.alibaba.sdk.android.oss.internal.HttpMessage
    public /* bridge */ /* synthetic */ void setContent(InputStream inputStream) {
        super.setContent(inputStream);
    }

    @Override // com.alibaba.sdk.android.oss.internal.HttpMessage
    public /* bridge */ /* synthetic */ void setContentLength(long j10) {
        super.setContentLength(j10);
    }

    public void setCredentialProvider(OSSCredentialProvider oSSCredentialProvider) {
        this.credentialProvider = oSSCredentialProvider;
    }

    public void setCustomPathPrefixEnable(boolean z) {
        this.customPathPrefixEnable = z;
    }

    public void setEndpoint(URI uri) {
        this.endpoint = uri;
    }

    @Override // com.alibaba.sdk.android.oss.internal.HttpMessage
    public /* bridge */ /* synthetic */ void setHeaders(Map map) {
        super.setHeaders(map);
    }

    public void setHttpDnsEnable(boolean z) {
        this.httpDnsEnable = z;
    }

    public void setIpWithHeader(String str) {
        this.ipWithHeader = str;
    }

    public void setIsAuthorizationRequired(boolean z) {
        this.isAuthorizationRequired = z;
    }

    public void setIsInCustomCnameExcludeList(boolean z) {
        this.isInCustomCnameExcludeList = z;
    }

    public void setMethod(HttpMethod httpMethod) {
        this.method = httpMethod;
    }

    public void setObjectKey(String str) {
        this.objectKey = str;
    }

    public void setParameters(Map<String, String> map) {
        this.parameters = map;
    }

    public void setPathStyleAccessEnable(boolean z) {
        this.pathStyleAccessEnable = z;
    }

    public void setService(URI uri) {
        this.service = uri;
    }

    public void setSigner(RequestSigner requestSigner) {
        this.signer = requestSigner;
    }

    @Override // com.alibaba.sdk.android.oss.internal.HttpMessage
    public /* bridge */ /* synthetic */ void setStringBody(String str) {
        super.setStringBody(str);
    }

    public void setUploadData(byte[] bArr) {
        this.uploadData = bArr;
    }

    public void setUploadFilePath(String str) {
        this.uploadFilePath = str;
    }

    public void setUploadUri(Uri uri) {
        this.uploadUri = uri;
    }

    public void setUseUrlSignature(boolean z) {
        this.useUrlSignature = z;
    }
}

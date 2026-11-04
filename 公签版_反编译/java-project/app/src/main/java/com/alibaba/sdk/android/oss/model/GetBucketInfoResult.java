package com.alibaba.sdk.android.oss.model;

import ta.q;

/* loaded from: classes.dex */
public class GetBucketInfoResult extends OSSResult {
    private OSSBucketSummary bucket;

    public OSSBucketSummary getBucket() {
        return this.bucket;
    }

    public void setBucket(OSSBucketSummary oSSBucketSummary) {
        this.bucket = oSSBucketSummary;
    }

    @Override // com.alibaba.sdk.android.oss.model.OSSResult
    public String toString() {
        return q.k("GetBucketInfoResult<", super.toString(), ">:\n bucket:", this.bucket.toString());
    }
}

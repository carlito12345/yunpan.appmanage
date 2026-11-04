package com.alibaba.sdk.android.oss.model;

import ta.q;

/* loaded from: classes.dex */
public class HeadObjectResult extends OSSResult {
    private ObjectMetadata metadata = new ObjectMetadata();

    public ObjectMetadata getMetadata() {
        return this.metadata;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.metadata = objectMetadata;
    }

    @Override // com.alibaba.sdk.android.oss.model.OSSResult
    public String toString() {
        return q.k("HeadObjectResult<", super.toString(), ">:\n metadata:", this.metadata.toString());
    }
}

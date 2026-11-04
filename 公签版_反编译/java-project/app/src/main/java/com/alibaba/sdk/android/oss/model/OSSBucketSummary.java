package com.alibaba.sdk.android.oss.model;

import g.b;
import java.util.Date;

/* loaded from: classes.dex */
public class OSSBucketSummary {
    private CannedAccessControlList acl;
    public Date createDate;
    public String extranetEndpoint;
    public String intranetEndpoint;
    public String location;
    public String name;
    public Owner owner;
    public String storageClass;

    public String getAcl() {
        CannedAccessControlList cannedAccessControlList = this.acl;
        if (cannedAccessControlList != null) {
            return cannedAccessControlList.toString();
        }
        return null;
    }

    public void setAcl(String str) {
        this.acl = CannedAccessControlList.parseACL(str);
    }

    public String toString() {
        if (this.storageClass == null) {
            StringBuilder sb2 = new StringBuilder("OSSBucket [name=");
            sb2.append(this.name);
            sb2.append(", creationDate=");
            sb2.append(this.createDate);
            sb2.append(", owner=");
            sb2.append(this.owner.toString());
            sb2.append(", location=");
            return b.l(this.location, "]", sb2);
        }
        StringBuilder sb3 = new StringBuilder("OSSBucket [name=");
        sb3.append(this.name);
        sb3.append(", creationDate=");
        sb3.append(this.createDate);
        sb3.append(", owner=");
        sb3.append(this.owner.toString());
        sb3.append(", location=");
        sb3.append(this.location);
        sb3.append(", storageClass=");
        return b.l(this.storageClass, "]", sb3);
    }
}

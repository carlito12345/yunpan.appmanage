package com.hierynomus.smbfs;

import com.hierynomus.smbj.share.DiskShare;
import java.io.Closeable;

/* loaded from: classes.dex */
interface ShareSource extends Closeable {
    DiskShare getShare(String str);
}

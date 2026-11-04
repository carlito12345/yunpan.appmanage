package oa;

import android.os.IInterface;
import android.os.ParcelFileDescriptor;

/* loaded from: classes.dex */
public interface b extends IInterface {
    ParcelFileDescriptor a();

    boolean b();

    int d();

    void destroy();

    int g();

    ParcelFileDescriptor getInputStream();

    ParcelFileDescriptor getOutputStream();
}

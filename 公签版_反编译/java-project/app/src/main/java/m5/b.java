package m5;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class b extends fe.c {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Context context, int i10) {
        super(context, ParcelFileDescriptor.class);
        switch (i10) {
            case 1:
                super(context, InputStream.class);
                break;
            default:
                break;
        }
    }
}

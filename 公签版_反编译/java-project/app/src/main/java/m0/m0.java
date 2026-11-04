package m0;

import android.content.ClipData;
import android.content.Intent;

/* loaded from: classes.dex */
public abstract class m0 {
    public static ClipData a(Intent intent) {
        return intent.getClipData();
    }

    public static void b(Intent intent, ClipData clipData) {
        intent.setClipData(clipData);
    }
}

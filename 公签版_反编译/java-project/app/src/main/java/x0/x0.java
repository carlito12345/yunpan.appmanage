package x0;

import android.view.ContentInfo;
import android.view.View;
import j$.util.Objects;

/* loaded from: classes.dex */
public abstract class x0 {
    public static String[] a(View view) {
        return view.getReceiveContentMimeTypes();
    }

    public static i b(View view, i iVar) {
        ContentInfo contentInfoI = iVar.f18002a.i();
        Objects.requireNonNull(contentInfoI);
        ContentInfo contentInfoK = a2.b.k(contentInfoI);
        ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfoK);
        if (contentInfoPerformReceiveContent == null) {
            return null;
        }
        return contentInfoPerformReceiveContent == contentInfoK ? iVar : new i(new w.i(contentInfoPerformReceiveContent));
    }

    public static void c(View view, String[] strArr, y yVar) {
        if (yVar == null) {
            view.setOnReceiveContentListener(strArr, null);
        } else {
            view.setOnReceiveContentListener(strArr, new y0(yVar));
        }
    }
}

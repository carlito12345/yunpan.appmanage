package q5;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import f5.h;
import f5.i;
import f5.k;
import h5.z;
import java.util.List;

/* loaded from: classes.dex */
public final class c implements k {

    /* renamed from: b, reason: collision with root package name */
    public static final h f13028b = new h("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme", null, h.f5619e);

    /* renamed from: a, reason: collision with root package name */
    public final Context f13029a;

    public c(Context context) {
        this.f13029a = context.getApplicationContext();
    }

    @Override // f5.k
    public final /* bridge */ /* synthetic */ z a(Object obj, int i10, int i11, i iVar) {
        return c((Uri) obj, iVar);
    }

    @Override // f5.k
    public final boolean b(Object obj, i iVar) {
        String scheme = ((Uri) obj).getScheme();
        return scheme != null && scheme.equals("android.resource");
    }

    public final z c(Uri uri, i iVar) throws PackageManager.NameNotFoundException, NumberFormatException {
        Context contextCreatePackageContext;
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new IllegalStateException("Package name for " + uri + " is null or empty");
        }
        Context context = this.f13029a;
        if (authority.equals(context.getPackageName())) {
            contextCreatePackageContext = context;
        } else {
            try {
                contextCreatePackageContext = context.createPackageContext(authority, 0);
            } catch (PackageManager.NameNotFoundException e7) {
                if (!authority.contains(context.getPackageName())) {
                    throw new IllegalArgumentException("Failed to obtain context or unrecognized Uri format for: " + uri, e7);
                }
            }
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 2) {
            List<String> pathSegments2 = uri.getPathSegments();
            String authority2 = uri.getAuthority();
            String str = pathSegments2.get(0);
            String str2 = pathSegments2.get(1);
            identifier = contextCreatePackageContext.getResources().getIdentifier(str2, str, authority2);
            if (identifier == 0) {
                identifier = Resources.getSystem().getIdentifier(str2, str, "android");
            }
            if (identifier == 0) {
                throw new IllegalArgumentException("Failed to find resource id for: " + uri);
            }
        } else {
            if (pathSegments.size() != 1) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri);
            }
            try {
                identifier = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e10) {
                throw new IllegalArgumentException("Unrecognized Uri format: " + uri, e10);
            }
        }
        Resources.Theme theme = authority.equals(context.getPackageName()) ? (Resources.Theme) iVar.c(f13028b) : null;
        Drawable drawableD = theme == null ? d.b.D(context, contextCreatePackageContext, identifier, null) : d.b.D(context, context, identifier, theme);
        if (drawableD != null) {
            return new b(drawableD, 0);
        }
        return null;
    }
}

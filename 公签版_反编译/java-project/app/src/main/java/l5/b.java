package l5;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class b implements q {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10564a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10565b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f10566c;

    public /* synthetic */ b(Object obj, int i10, Object obj2) {
        this.f10564a = i10;
        this.f10566c = obj;
        this.f10565b = obj2;
    }

    @Override // l5.q
    public final boolean a(Object obj) {
        switch (this.f10564a) {
            case 0:
                Uri uri = (Uri) obj;
                if (!"file".equals(uri.getScheme()) || uri.getPathSegments().isEmpty() || !"android_asset".equals(uri.getPathSegments().get(0))) {
                }
                break;
            case 1:
                break;
            case 2:
                Iterator it = ((ArrayList) this.f10566c).iterator();
                while (it.hasNext()) {
                    if (((q) it.next()).a(obj)) {
                        break;
                    }
                }
                break;
            case 3:
                break;
            default:
                Uri uri2 = (Uri) obj;
                if (!"android.resource".equals(uri2.getScheme()) || !((Context) this.f10566c).getPackageName().equals(uri2.getAuthority())) {
                }
                break;
        }
        return true;
    }

    @Override // l5.q
    public final p b(Object obj, int i10, int i11, f5.i iVar) throws NumberFormatException {
        com.bumptech.glide.load.data.k kVar;
        p pVarB;
        Uri uri;
        switch (this.f10564a) {
            case 0:
                Uri uri2 = (Uri) obj;
                String strSubstring = uri2.toString().substring(22);
                z5.d dVar = new z5.d(uri2);
                Object obj2 = this.f10565b;
                AssetManager assetManager = (AssetManager) this.f10566c;
                switch (((a) obj2).f10560a) {
                    case 0:
                        kVar = new com.bumptech.glide.load.data.k(assetManager, strSubstring, 0);
                        break;
                    default:
                        kVar = new com.bumptech.glide.load.data.k(assetManager, strSubstring, 1);
                        break;
                }
                return new p(dVar, kVar);
            case 1:
                Integer num = (Integer) obj;
                Resources.Theme theme = (Resources.Theme) iVar.c(q5.c.f13028b);
                return new p(new z5.d(num), new e(theme, (Build.VERSION.SDK_INT < 21 || theme == null) ? ((Context) this.f10566c).getResources() : theme.getResources(), (androidx.emoji2.text.n) this.f10565b, num.intValue()));
            case 2:
                ArrayList arrayList = (ArrayList) this.f10566c;
                int size = arrayList.size();
                ArrayList arrayList2 = new ArrayList(size);
                f5.f fVar = null;
                for (int i12 = 0; i12 < size; i12++) {
                    q qVar = (q) arrayList.get(i12);
                    if (qVar.a(obj) && (pVarB = qVar.b(obj, i10, i11, iVar)) != null) {
                        arrayList2.add(pVarB.f10606c);
                        fVar = pVarB.f10604a;
                    }
                }
                if (arrayList2.isEmpty() || fVar == null) {
                    return null;
                }
                return new p(fVar, new u(arrayList2, (v3.f) this.f10565b));
            case 3:
                Integer num2 = (Integer) obj;
                Resources resources = (Resources) this.f10565b;
                try {
                    uri = Uri.parse("android.resource://" + resources.getResourcePackageName(num2.intValue()) + '/' + resources.getResourceTypeName(num2.intValue()) + '/' + resources.getResourceEntryName(num2.intValue()));
                } catch (Resources.NotFoundException unused) {
                    if (Log.isLoggable("ResourceLoader", 5)) {
                        android.support.v4.media.session.a.A(num2);
                    }
                    uri = null;
                }
                if (uri == null) {
                    return null;
                }
                return ((q) this.f10566c).b(uri, i10, i11, iVar);
            default:
                Uri uri3 = (Uri) obj;
                List<String> pathSegments = uri3.getPathSegments();
                int size2 = pathSegments.size();
                q qVar2 = (q) this.f10565b;
                p pVarB2 = null;
                if (size2 == 1) {
                    try {
                        int i13 = Integer.parseInt(uri3.getPathSegments().get(0));
                        if (i13 != 0) {
                            pVarB2 = qVar2.b(Integer.valueOf(i13), i10, i11, iVar);
                        } else if (Log.isLoggable("ResourceUriLoader", 5)) {
                            uri3.toString();
                        }
                        return pVarB2;
                    } catch (NumberFormatException unused2) {
                        if (!Log.isLoggable("ResourceUriLoader", 5)) {
                            return pVarB2;
                        }
                        android.support.v4.media.session.a.A(uri3);
                        return pVarB2;
                    }
                }
                if (pathSegments.size() != 2) {
                    if (!Log.isLoggable("ResourceUriLoader", 5)) {
                        return null;
                    }
                    uri3.toString();
                    return null;
                }
                List<String> pathSegments2 = uri3.getPathSegments();
                String str = pathSegments2.get(0);
                String str2 = pathSegments2.get(1);
                Context context = (Context) this.f10566c;
                int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
                if (identifier != 0) {
                    return qVar2.b(Integer.valueOf(identifier), i10, i11, iVar);
                }
                if (!Log.isLoggable("ResourceUriLoader", 5)) {
                    return null;
                }
                uri3.toString();
                return null;
        }
    }

    public String toString() {
        switch (this.f10564a) {
            case 2:
                return "MultiModelLoader{modelLoaders=" + Arrays.toString(((ArrayList) this.f10566c).toArray()) + '}';
            default:
                return super.toString();
        }
    }

    public b(Resources resources, q qVar) {
        this.f10564a = 3;
        this.f10565b = resources;
        this.f10566c = qVar;
    }

    public b(Context context, androidx.emoji2.text.n nVar) {
        this.f10564a = 1;
        this.f10566c = context.getApplicationContext();
        this.f10565b = nVar;
    }

    public b(Context context, q qVar) {
        this.f10564a = 4;
        this.f10566c = context.getApplicationContext();
        this.f10565b = qVar;
    }
}

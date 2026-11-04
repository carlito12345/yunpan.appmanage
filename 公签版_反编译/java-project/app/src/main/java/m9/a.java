package m9;

import java.io.File;
import java.io.IOException;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.FormBody;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;

/* loaded from: classes.dex */
public abstract class a extends e {

    /* renamed from: m, reason: collision with root package name */
    public transient MediaType f11002m;

    /* renamed from: n, reason: collision with root package name */
    public String f11003n;

    /* renamed from: p, reason: collision with root package name */
    public transient File f11004p;

    public a(String str) {
        super(str);
    }

    @Override // m9.e
    public final RequestBody d() {
        MediaType mediaType;
        MediaType mediaType2;
        String str = this.f11003n;
        if (str != null && (mediaType2 = this.f11002m) != null) {
            return RequestBody.create(mediaType2, str);
        }
        File file = this.f11004p;
        if (file != null && (mediaType = this.f11002m) != null) {
            return RequestBody.create(mediaType, file);
        }
        k9.c cVar = this.f11016h;
        if (cVar.f10213b.isEmpty()) {
            FormBody.Builder builder = new FormBody.Builder();
            for (String str2 : cVar.f10212a.keySet()) {
                Iterator it = ((List) cVar.f10212a.get(str2)).iterator();
                while (it.hasNext()) {
                    builder.add(str2, (String) it.next());
                }
            }
            return builder.build();
        }
        MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
        if (!cVar.f10212a.isEmpty()) {
            for (Map.Entry entry : cVar.f10212a.entrySet()) {
                Iterator it2 = ((List) entry.getValue()).iterator();
                while (it2.hasNext()) {
                    type.addFormDataPart((String) entry.getKey(), (String) it2.next());
                }
            }
        }
        for (Map.Entry entry2 : cVar.f10213b.entrySet()) {
            for (k9.b bVar : (List) entry2.getValue()) {
                type.addFormDataPart((String) entry2.getKey(), bVar.f10207b, RequestBody.create(bVar.f10208c, bVar.f10206a));
            }
        }
        return type.build();
    }

    public final Request.Builder i(d dVar) {
        try {
            g("Content-Length", String.valueOf(dVar.contentLength()));
        } catch (IOException e7) {
            e7.printStackTrace();
        }
        Request.Builder builder = new Request.Builder();
        n9.a.a(builder, this.f11017i);
        return builder;
    }

    public final void j(File file, String str) {
        k9.c cVar = this.f11016h;
        cVar.getClass();
        String name = file.getName();
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(name.replace("#", ""));
        MediaType mediaType = contentTypeFor == null ? k9.c.f10211d : MediaType.parse(contentTypeFor);
        if (str != null) {
            List arrayList = (List) cVar.f10213b.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                cVar.f10213b.put(str, arrayList);
            }
            arrayList.add(new k9.b(file, name, mediaType));
        }
    }
}

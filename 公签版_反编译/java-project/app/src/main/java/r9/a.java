package r9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import com.thegrizzlylabs.sardineandroid.model.Allprop;
import com.thegrizzlylabs.sardineandroid.model.Multistatus;
import com.thegrizzlylabs.sardineandroid.model.Propfind;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.Marker;
import org.xml.sax.SAXException;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f13721b = LoggerFactory.getLogger((Class<?>) a.class);

    /* renamed from: a, reason: collision with root package name */
    public final OkHttpClient f13722a;

    public a(OkHttpClient okHttpClient) {
        this.f13722a = okHttpClient;
    }

    public static String e(String str) {
        try {
            int iIndexOf = str.indexOf("/", 8) + 1;
            return str.substring(0, iIndexOf) + URLEncoder.encode(str.substring(iIndexOf), HTTP.UTF_8).replace(Marker.ANY_NON_NULL_MARKER, "%20").replace("%2F", "/");
        } catch (Exception unused) {
            return str;
        }
    }

    public static String f(String str) {
        try {
            return str.replace("%", "%25").replace("#", "%23");
        } catch (Exception unused) {
            return str;
        }
    }

    public final void a(String str, String str2) throws b {
        p000if.a.M0(this.f13722a.newCall(new Request.Builder().url(f(str)).method("COPY", null).header("DESTINATION", e(str2)).header("OVERWRITE", "F").build()).execute());
    }

    public final InputStream b(String str, Map map) throws b {
        Response responseExecute = this.f13722a.newCall(new Request.Builder().url(f(str)).get().headers(Headers.of((Map<String, String>) map)).build()).execute();
        p000if.a.M0(responseExecute);
        return responseExecute.body().byteStream();
    }

    public final List c(String str) {
        Propfind propfind = new Propfind();
        propfind.setAllprop(new Allprop());
        MediaType mediaType = MediaType.parse("text/xml");
        String[] strArr = t9.b.f14851a;
        StringWriter stringWriter = new StringWriter();
        try {
            t9.b.a().write(propfind, stringWriter);
            Request requestBuild = new Request.Builder().url(f(str)).header("Depth", Integer.toString(1)).method("PROPFIND", RequestBody.create(mediaType, stringWriter.toString())).build();
            new s9.a(0, false);
            Response responseExecute = this.f13722a.newCall(requestBuild).execute();
            p000if.a.M0(responseExecute);
            ResponseBody responseBodyBody = responseExecute.body();
            if (responseBodyBody == null) {
                throw new b("No entity found in response", responseExecute.code(), responseExecute.message());
            }
            try {
                List<com.thegrizzlylabs.sardineandroid.model.Response> response = ((Multistatus) t9.b.a().read(Multistatus.class, responseBodyBody.byteStream())).getResponse();
                ArrayList arrayList = new ArrayList(response.size());
                for (com.thegrizzlylabs.sardineandroid.model.Response response2 : response) {
                    try {
                        arrayList.add(new q9.a(response2));
                    } catch (URISyntaxException unused) {
                        response2.getHref();
                    }
                }
                return arrayList;
            } catch (SAXException e7) {
                throw new RuntimeException(e7.getMessage(), e7);
            } catch (Exception e10) {
                throw new IOException("Not a valid DAV response", e10);
            }
        } catch (Exception e11) {
            throw new RuntimeException(e11.getMessage(), e11);
        }
    }

    public final void d(String str, String str2) {
        Request.Builder builderMethod = new Request.Builder().url(f(str)).method("MOVE", null);
        Headers.Builder builder = new Headers.Builder();
        builder.add("DESTINATION", e(str2));
        builder.add("OVERWRITE", "T");
        builderMethod.headers(builder.build());
        p000if.a.M0(this.f13722a.newCall(builderMethod.build()).execute());
    }
}

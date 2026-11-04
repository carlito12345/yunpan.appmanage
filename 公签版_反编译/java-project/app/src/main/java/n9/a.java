package n9;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.Headers;
import okhttp3.Request;

/* loaded from: classes.dex */
public abstract class a {
    public static Request.Builder a(Request.Builder builder, k9.a aVar) {
        if (aVar.f10205a.isEmpty()) {
            return builder;
        }
        Headers.Builder builder2 = new Headers.Builder();
        try {
            for (Map.Entry entry : aVar.f10205a.entrySet()) {
                builder2.add((String) entry.getKey(), (String) entry.getValue());
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        builder.headers(builder2.build());
        return builder;
    }

    public static void b(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    public static String c(String str, LinkedHashMap linkedHashMap) throws UnsupportedEncodingException {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            if (str.indexOf(38) > 0 || str.indexOf(63) > 0) {
                sb2.append("&");
            } else {
                sb2.append("?");
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    String strEncode = URLEncoder.encode((String) it.next(), HTTP.UTF_8);
                    sb2.append((String) entry.getKey());
                    sb2.append("=");
                    sb2.append(strEncode);
                    sb2.append("&");
                }
            }
            sb2.deleteCharAt(sb2.length() - 1);
            return sb2.toString();
        } catch (UnsupportedEncodingException e7) {
            e7.printStackTrace();
            return str;
        }
    }
}

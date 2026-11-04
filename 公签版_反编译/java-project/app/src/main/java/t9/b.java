package t9;

import com.thegrizzlylabs.sardineandroid.model.Prop;
import com.thegrizzlylabs.sardineandroid.model.Property;
import com.thegrizzlylabs.sardineandroid.model.Resourcetype;
import j$.util.DesugarTimeZone;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.xml.parsers.DocumentBuilderFactory;
import org.simpleframework.xml.convert.Registry;
import org.simpleframework.xml.convert.RegistryStrategy;
import org.simpleframework.xml.core.Persister;
import org.simpleframework.xml.stream.Format;
import org.w3c.dom.Element;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f14851a;

    /* renamed from: b, reason: collision with root package name */
    public static final DocumentBuilderFactory f14852b = DocumentBuilderFactory.newInstance();

    /* renamed from: c, reason: collision with root package name */
    public static final List f14853c;

    static {
        String[] strArr = {"yyyy-MM-dd'T'HH:mm:ss'Z'", "EEE, dd MMM yyyy HH:mm:ss zzz", "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", "yyyy-MM-dd'T'HH:mm:ssZ", "EEE MMM dd HH:mm:ss zzz yyyy", "EEEEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMMM d HH:mm:ss yyyy"};
        f14851a = strArr;
        ArrayList arrayList = new ArrayList(strArr.length);
        for (int i10 = 0; i10 < f14851a.length; i10++) {
            arrayList.add(new ThreadLocal());
        }
        f14853c = Collections.unmodifiableList(arrayList);
    }

    public static Persister a() {
        Format format = new Format("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
        Registry registry = new Registry();
        Persister persister = new Persister(new RegistryStrategy(registry), format);
        registry.bind(Prop.class, new a(persister, Prop.class));
        registry.bind(Resourcetype.class, new a(persister, Resourcetype.class));
        registry.bind(Property.class, Property.PropertyConverter.class);
        return persister;
    }

    public static Date b(String str) {
        Date date = null;
        if (str == null) {
            return null;
        }
        int i10 = 0;
        while (true) {
            List list = f14853c;
            if (i10 >= list.size()) {
                break;
            }
            ThreadLocal threadLocal = (ThreadLocal) list.get(i10);
            SimpleDateFormat simpleDateFormat = (SimpleDateFormat) threadLocal.get();
            if (simpleDateFormat == null) {
                simpleDateFormat = new SimpleDateFormat(f14851a[i10], Locale.US);
                simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
                threadLocal.set(simpleDateFormat);
            }
            try {
                continue;
                date = simpleDateFormat.parse(str);
                break;
            } catch (ParseException unused) {
                i10++;
            }
        }
        return date;
    }

    public static sc.a c(Element element) {
        return element.getNamespaceURI() == null ? new sc.a("DAV:", element.getLocalName(), "D") : element.getPrefix() == null ? new sc.a(element.getNamespaceURI(), element.getLocalName(), "") : new sc.a(element.getNamespaceURI(), element.getLocalName(), element.getPrefix());
    }
}

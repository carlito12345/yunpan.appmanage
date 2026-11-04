package org.bouncycastle.cert.dane.fetcher;

import android.support.v4.media.session.a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import javax.naming.Binding;
import javax.naming.NamingEnumeration;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import org.bouncycastle.cert.dane.DANEEntry;
import org.bouncycastle.cert.dane.DANEEntryFetcher;
import org.bouncycastle.cert.dane.DANEEntryFetcherFactory;
import org.bouncycastle.cert.dane.DANEException;

/* loaded from: classes3.dex */
public class JndiDANEFetcherFactory implements DANEEntryFetcherFactory {
    private static final String DANE_TYPE = "53";
    private List dnsServerList = new ArrayList();
    private boolean isAuthoritative;

    /* JADX INFO: Access modifiers changed from: private */
    public void addEntries(List list, String str, Attribute attribute) throws DANEException {
        for (int i10 = 0; i10 != attribute.size(); i10++) {
            byte[] bArr = (byte[]) attribute.get(i10);
            if (DANEEntry.isValidCertificate(bArr)) {
                try {
                    list.add(new DANEEntry(str, bArr));
                } catch (IOException e7) {
                    throw new DANEException(a.n(e7, new StringBuilder("Exception parsing entry: ")), e7);
                }
            }
        }
    }

    @Override // org.bouncycastle.cert.dane.DANEEntryFetcherFactory
    public DANEEntryFetcher build(final String str) {
        final Hashtable hashtable = new Hashtable();
        hashtable.put("java.naming.factory.initial", "com.sun.jndi.dns.DnsContextFactory");
        hashtable.put("java.naming.authoritative", this.isAuthoritative ? "true" : "false");
        if (this.dnsServerList.size() > 0) {
            StringBuilder sb2 = new StringBuilder();
            Iterator it = this.dnsServerList.iterator();
            while (it.hasNext()) {
                if (sb2.length() > 0) {
                    sb2.append(" ");
                }
                sb2.append("dns://" + it.next());
            }
            hashtable.put("java.naming.provider.url", sb2.toString());
        }
        return new DANEEntryFetcher() { // from class: org.bouncycastle.cert.dane.fetcher.JndiDANEFetcherFactory.1
            @Override // org.bouncycastle.cert.dane.DANEEntryFetcher
            public List getEntries() throws DANEException {
                ArrayList arrayList = new ArrayList();
                try {
                    InitialDirContext initialDirContext = new InitialDirContext(hashtable);
                    if (str.indexOf("_smimecert.") > 0) {
                        Attribute attribute = initialDirContext.getAttributes(str, new String[]{JndiDANEFetcherFactory.DANE_TYPE}).get(JndiDANEFetcherFactory.DANE_TYPE);
                        if (attribute != null) {
                            JndiDANEFetcherFactory.this.addEntries(arrayList, str, attribute);
                        }
                    } else {
                        NamingEnumeration namingEnumerationListBindings = initialDirContext.listBindings("_smimecert." + str);
                        while (namingEnumerationListBindings.hasMore()) {
                            DirContext dirContext = (DirContext) ((Binding) namingEnumerationListBindings.next()).getObject();
                            Attribute attribute2 = initialDirContext.getAttributes(dirContext.getNameInNamespace().substring(1, dirContext.getNameInNamespace().length() - 1), new String[]{JndiDANEFetcherFactory.DANE_TYPE}).get(JndiDANEFetcherFactory.DANE_TYPE);
                            if (attribute2 != null) {
                                String nameInNamespace = dirContext.getNameInNamespace();
                                JndiDANEFetcherFactory.this.addEntries(arrayList, nameInNamespace.substring(1, nameInNamespace.length() - 1), attribute2);
                            }
                        }
                    }
                    return arrayList;
                } catch (NamingException e7) {
                    throw new DANEException("Exception dealing with DNS: " + e7.getMessage(), e7);
                }
            }
        };
    }

    public JndiDANEFetcherFactory setAuthoritative(boolean z) {
        this.isAuthoritative = z;
        return this;
    }

    public JndiDANEFetcherFactory usingDNSServer(String str) {
        this.dnsServerList.add(str);
        return this;
    }
}

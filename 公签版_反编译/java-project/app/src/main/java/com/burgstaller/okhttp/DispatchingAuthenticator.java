package com.burgstaller.okhttp;

import com.burgstaller.okhttp.digest.CachingAuthenticator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import okhttp3.Authenticator;
import okhttp3.Challenge;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* loaded from: classes.dex */
public class DispatchingAuthenticator implements CachingAuthenticator {
    private final Map<String, Authenticator> authenticatorRegistry;
    private final Map<String, CachingAuthenticator> cachingRegistry;

    public static final class Builder {
        Map<String, Authenticator> registry = new LinkedHashMap();

        public DispatchingAuthenticator build() {
            return new DispatchingAuthenticator(this.registry);
        }

        public Builder with(String str, Authenticator authenticator) {
            this.registry.put(str.toLowerCase(Locale.getDefault()), authenticator);
            return this;
        }
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) {
        List<Challenge> listChallenges = response.challenges();
        if (!listChallenges.isEmpty()) {
            Iterator<Challenge> it = listChallenges.iterator();
            while (it.hasNext()) {
                String strScheme = it.next().scheme();
                Authenticator authenticator = strScheme != null ? this.authenticatorRegistry.get(strScheme.toLowerCase(Locale.getDefault())) : null;
                if (authenticator != null) {
                    return authenticator.authenticate(route, response);
                }
            }
        }
        return null;
    }

    @Override // com.burgstaller.okhttp.digest.CachingAuthenticator
    public Request authenticateWithState(Route route, Request request) {
        Iterator<Map.Entry<String, CachingAuthenticator>> it = this.cachingRegistry.entrySet().iterator();
        while (it.hasNext()) {
            Request requestAuthenticateWithState = it.next().getValue().authenticateWithState(route, request);
            if (requestAuthenticateWithState != null) {
                return requestAuthenticateWithState;
            }
        }
        return null;
    }

    private DispatchingAuthenticator(Map<String, Authenticator> map) {
        this.authenticatorRegistry = map;
        this.cachingRegistry = new LinkedHashMap();
        for (Map.Entry<String, Authenticator> entry : map.entrySet()) {
            if (entry.getValue() instanceof CachingAuthenticator) {
                this.cachingRegistry.put(entry.getKey(), (CachingAuthenticator) entry.getValue());
            }
        }
    }
}

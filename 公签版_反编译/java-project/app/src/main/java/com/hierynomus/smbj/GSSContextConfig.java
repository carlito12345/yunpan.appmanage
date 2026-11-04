package com.hierynomus.smbj;

/* loaded from: classes.dex */
public final class GSSContextConfig {
    private boolean requestCredDeleg;
    private boolean requestMutualAuth;

    public static class Builder {
        private GSSContextConfig config = new GSSContextConfig();

        public GSSContextConfig build() {
            return new GSSContextConfig();
        }

        public Builder withRequestCredDeleg(boolean z) {
            this.config.requestCredDeleg = z;
            return this;
        }

        public Builder withRequestMutualAuth(boolean z) {
            this.config.requestMutualAuth = z;
            return this;
        }
    }

    public static Builder builder() {
        return new Builder().withRequestMutualAuth(true).withRequestCredDeleg(false);
    }

    public static GSSContextConfig createDefaultConfig() {
        return builder().build();
    }

    public boolean isRequestCredDeleg() {
        return this.requestCredDeleg;
    }

    public boolean isRequestMutualAuth() {
        return this.requestMutualAuth;
    }

    private GSSContextConfig() {
    }

    private GSSContextConfig(GSSContextConfig gSSContextConfig) {
        this();
        this.requestMutualAuth = gSSContextConfig.requestMutualAuth;
        this.requestCredDeleg = gSSContextConfig.requestCredDeleg;
    }
}

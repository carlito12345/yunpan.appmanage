package com.hierynomus.msdfsc;

import com.hierynomus.msdfsc.messages.DFSReferral;
import com.hierynomus.msdfsc.messages.SMB2GetDFSReferralResponse;
import com.hierynomus.protocol.commons.EnumWithValue;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class DomainCache {
    private Map<String, DomainCacheEntry> cache = new ConcurrentHashMap();

    public static class DomainCacheEntry {
        String DCHint;
        List<String> DCList;
        String domainName;

        public DomainCacheEntry(SMB2GetDFSReferralResponse sMB2GetDFSReferralResponse) {
            if (sMB2GetDFSReferralResponse.getReferralEntries().size() != 1) {
                throw new IllegalStateException("Expecting exactly 1 referral for a domain referral, found: " + sMB2GetDFSReferralResponse.getReferralEntries().size());
            }
            DFSReferral dFSReferral = sMB2GetDFSReferralResponse.getReferralEntries().get(0);
            if (EnumWithValue.EnumUtils.isSet(dFSReferral.getReferralEntryFlags(), DFSReferral.ReferralEntryFlags.NameListReferral)) {
                this.domainName = dFSReferral.getSpecialName();
                this.DCHint = dFSReferral.getExpandedNames().get(0);
                this.DCList = dFSReferral.getExpandedNames();
            } else {
                throw new IllegalStateException("Referral Entry for '" + dFSReferral.getSpecialName() + "' does not have NameListReferral bit set.");
            }
        }

        public String getDCHint() {
            return this.DCHint;
        }

        public List<String> getDCList() {
            return this.DCList;
        }

        public String getDomainName() {
            return this.domainName;
        }

        public String toString() {
            return this.domainName + "->" + this.DCHint + ", " + this.DCList;
        }
    }

    public DomainCacheEntry lookup(String str) {
        return this.cache.get(str);
    }

    public void put(DomainCacheEntry domainCacheEntry) {
        this.cache.put(domainCacheEntry.domainName, domainCacheEntry);
    }
}

package com.rapid7.client.dcerpc.mslsad.dto;

/* loaded from: classes.dex */
public enum LSAPLookupLevel {
    LSAP_LOOKUP_WKSTA,
    LSAP_LOOKUP_PDC,
    LSAP_LOOKUP_TDL,
    LSAP_LOOKUP_GC,
    LSAP_LOOKUP_XFOREST_REFERRAL,
    LSAP_LOOKUP_XFOREST_RESOLVE,
    LSAP_LOOKUP_RODC_REFERRAL_TO_FULL_DC;

    public short getValue() {
        return (short) (ordinal() + 1);
    }
}

package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.objects.RPCUnicodeString;

/* loaded from: classes.dex */
public class SAMPRReturnedUStringArray extends SAMPREnumerationBuffer<RPCUnicodeString.NonNullTerminated> {
    @Override // com.rapid7.client.dcerpc.mssamr.objects.SAMPREnumerationBuffer
    public RPCUnicodeString.NonNullTerminated initEntity() {
        return new RPCUnicodeString.NonNullTerminated();
    }
}

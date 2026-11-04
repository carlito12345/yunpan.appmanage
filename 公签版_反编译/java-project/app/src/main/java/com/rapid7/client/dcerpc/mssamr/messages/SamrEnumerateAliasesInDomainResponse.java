package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.mssamr.objects.AliasInfo;
import com.rapid7.client.dcerpc.mssamr.objects.EnumeratedAliases;
import java.util.List;

/* loaded from: classes.dex */
public class SamrEnumerateAliasesInDomainResponse extends SamrEnumerateResponse<AliasInfo> {
    private EnumeratedAliases aliases;

    @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateResponse
    public List<AliasInfo> getList() {
        EnumeratedAliases enumeratedAliases = this.aliases;
        if (enumeratedAliases == null) {
            return null;
        }
        return enumeratedAliases.getEntries();
    }

    @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrEnumerateResponse
    public void unmarshallBuffer(PacketInput packetInput) {
        EnumeratedAliases enumeratedAliases = new EnumeratedAliases();
        this.aliases = enumeratedAliases;
        packetInput.readUnmarshallable(enumeratedAliases);
    }
}

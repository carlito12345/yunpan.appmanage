package com.rapid7.client.dcerpc.mssamr.objects;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Alignment;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class SAMPREnumerationBuffer<T extends Unmarshallable> implements Unmarshallable {
    private List<T> array;
    private int entriesRead;

    public List<T> getEntries() {
        List<T> list = this.array;
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public int getEntriesRead() {
        return this.entriesRead;
    }

    public abstract T initEntity();

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalDeferrals(PacketInput packetInput) {
        if (this.array != null) {
            packetInput.align(Alignment.FOUR);
            int i10 = packetInput.readInt();
            for (int i11 = 0; i11 < i10; i11++) {
                Unmarshallable unmarshallableInitEntity = initEntity();
                this.array.add(unmarshallableInitEntity);
                unmarshallableInitEntity.unmarshalPreamble(packetInput);
            }
            Iterator<T> it = this.array.iterator();
            while (it.hasNext()) {
                it.next().unmarshalEntity(packetInput);
            }
            Iterator<T> it2 = this.array.iterator();
            while (it2.hasNext()) {
                it2.next().unmarshalDeferrals(packetInput);
            }
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalEntity(PacketInput packetInput) {
        packetInput.align(Alignment.FOUR);
        this.entriesRead = packetInput.readInt();
        if (packetInput.readReferentID() != 0) {
            if (this.entriesRead > 0) {
                this.array = new ArrayList(this.entriesRead);
            } else {
                this.array = Collections.emptyList();
            }
        }
    }

    @Override // com.rapid7.client.dcerpc.io.ndr.Unmarshallable
    public void unmarshalPreamble(PacketInput packetInput) {
    }
}

package com.rapid7.client.dcerpc.mssamr.messages;

import com.rapid7.client.dcerpc.io.PacketInput;
import com.rapid7.client.dcerpc.io.ndr.Unmarshallable;
import com.rapid7.client.dcerpc.messages.RequestResponse;
import com.rapid7.client.dcerpc.mssamr.objects.DisplayInformationClass;
import com.rapid7.client.dcerpc.mssamr.objects.SAMPRDomainDisplayGroupBuffer;
import java.rmi.UnmarshalException;

/* loaded from: classes.dex */
public abstract class SamrQueryDisplayInformation2Response<T extends Unmarshallable> extends RequestResponse {
    private T displayInformation;
    private int totalAvailable;
    private int totalReturnedBytes;

    public static class DomainDisplayGroup extends SamrQueryDisplayInformation2Response<SAMPRDomainDisplayGroupBuffer> {
        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryDisplayInformation2Response
        public DisplayInformationClass getDisplayInformationClass() {
            return DisplayInformationClass.DomainDisplayGroup;
        }

        @Override // com.rapid7.client.dcerpc.mssamr.messages.SamrQueryDisplayInformation2Response
        public SAMPRDomainDisplayGroupBuffer createDisplayInformation() {
            return new SAMPRDomainDisplayGroupBuffer();
        }
    }

    public abstract T createDisplayInformation();

    public T getDisplayInformation() {
        return this.displayInformation;
    }

    public abstract DisplayInformationClass getDisplayInformationClass();

    public int getTotalAvailable() {
        return this.totalAvailable;
    }

    public int getTotalReturned() {
        return this.totalReturnedBytes;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: java.rmi.UnmarshalException */
    @Override // com.rapid7.client.dcerpc.messages.RequestResponse
    public void unmarshalResponse(PacketInput packetInput) throws UnmarshalException {
        this.totalAvailable = packetInput.readInt();
        this.totalReturnedBytes = packetInput.readInt();
        int unsignedShort = packetInput.readUnsignedShort();
        if (unsignedShort != getDisplayInformationClass().getInfoLevel()) {
            throw new UnmarshalException(String.format("Incoming DISPLAY_INFORMATION_CLASS %d does not match expected: %d", Integer.valueOf(unsignedShort), Integer.valueOf(getDisplayInformationClass().getInfoLevel())));
        }
        T t10 = (T) createDisplayInformation();
        this.displayInformation = t10;
        packetInput.readUnmarshallable(t10);
    }
}

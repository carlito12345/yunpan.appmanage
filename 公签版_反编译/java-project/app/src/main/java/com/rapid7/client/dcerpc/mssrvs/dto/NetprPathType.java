package com.rapid7.client.dcerpc.mssrvs.dto;

import com.desay_svautomotive.libsvcarinfo.CarLanID;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public enum NetprPathType {
    ITYPE_UNC_COMPNAME(4144),
    ITYPE_UNC_WC(4145),
    ITYPE_UNC(4096),
    ITYPE_UNC_WC_PATH(CarLanID.Send.MUSIC),
    ITYPE_UNC_SYS_SEM(6400),
    ITYPE_UNC_SYS_SHMEM(6656),
    ITYPE_UNC_SYS_MSLOT(6144),
    ITYPE_UNC_SYS_PIPE(6912),
    ITYPE_UNC_SYS_QUEUE(7680),
    ITYPE_PATH_ABSND(8194),
    ITYPE_PATH_ABSD(8198),
    ITYPE_PATH_RELND(8192),
    ITYPE_PATH_RELD(8196),
    ITYPE_PATH_ABSND_WC(8195),
    ITYPE_PATH_ABSD_WC(8199),
    ITYPE_PATH_RELND_WC(8193),
    ITYPE_PATH_RELD_WC(CarLanID.Recv.SYSTEM),
    ITYPE_PATH_SYS_SEM(10498),
    ITYPE_PATH_SYS_SHMEM(10754),
    ITYPE_PATH_SYS_MSLOT(10242),
    ITYPE_PATH_SYS_PIPE(11010),
    ITYPE_PATH_SYS_COMM(11266),
    ITYPE_PATH_SYS_PRINT(11522),
    ITYPE_PATH_SYS_QUEUE(11778),
    ITYPE_PATH_SYS_SEM_M(43266),
    ITYPE_PATH_SYS_SHMEM_M(43522),
    ITYPE_PATH_SYS_MSLOT_M(43010),
    ITYPE_PATH_SYS_PIPE_M(43778),
    ITYPE_PATH_SYS_COMM_M(44034),
    ITYPE_PATH_SYS_PRINT_M(44290),
    ITYPE_PATH_SYS_QUEUE_M(44546),
    ITYPE_DEVICE_DISK(16384),
    ITYPE_DEVICE_LPT(16400),
    ITYPE_DEVICE_COM(16416),
    ITYPE_DEVICE_CON(16448),
    ITYPE_DEVICE_NUL(16464);

    private static final Map<Integer, NetprPathType> ids = new HashMap();

    /* renamed from: id, reason: collision with root package name */
    private final int f3768id;

    static {
        for (NetprPathType netprPathType : values()) {
            ids.put(Integer.valueOf(netprPathType.getId()), netprPathType);
        }
    }

    NetprPathType(int i10) {
        this.f3768id = i10;
    }

    public static NetprPathType getid(int i10) {
        return ids.get(Integer.valueOf(i10));
    }

    public int getId() {
        return this.f3768id;
    }

    public boolean is(int i10) {
        return this.f3768id == i10;
    }
}

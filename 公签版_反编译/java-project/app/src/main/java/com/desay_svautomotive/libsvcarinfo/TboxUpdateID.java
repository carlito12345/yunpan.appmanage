package com.desay_svautomotive.libsvcarinfo;

/* loaded from: classes.dex */
public class TboxUpdateID {

    public static class Recv {
        public static final int TBOX_RESET_FAIL_REASON = 3;
        public static final int TBOX_RESTART_STATUS = 2;
        public static final int TBOX_UPDATE_ENABLE_STATE = 1;
        public static final int TBOX_UPDATE_PRECONDITION = 0;
    }

    public static class Send {
        public static final int TBOX_RESTART_REQUEST = 1;
        public static final int TBOX_UPDATE_REQUEST = 0;
    }
}

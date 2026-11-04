package com.desay_svautomotive.libsvcarinfo;

/* loaded from: classes.dex */
public class TboxCallID {

    public static class Recv {
        public static final int CALL_PHONE_NUMBER = 3;
        public static final int CALL_STATUS = 1;
        public static final int CALL_VIEW_STATUS = 2;
        public static final int TBOX_MODE = 0;
    }

    public static class Send {
        public static final int ACCEPT_CALL = 2;
        public static final int BCALL_REQUEST = 1;
        public static final int ECALL_REQUEST = 3;
        public static final int HAND_UP = 0;
    }

    public static class TboxCallStatus {
        public static final int BCALL_CONNECTING = 4;
        public static final int BCALL_ON_PHONE = 5;
        public static final int BCALL_OVER = 6;
        public static final int ECALL_CONNECTING = 1;
        public static final int ECALL_ON_PHONE = 2;
        public static final int ECALL_OVER = 3;
        public static final int RECALL_1_INCOMING = 7;
        public static final int RECALL_1_ON_PHONE = 8;
        public static final int RECALL_1_OVER = 9;
        public static final int RECALL_2_INCOMING = 10;
        public static final int RECALL_2_ON_PHONE = 11;
        public static final int RECALL_2_OVER = 12;
        public static final int TBOX_NO_ACTIVE = 0;
    }
}

package com.yunpan.appmanage.carsdk;

import com.desay_svautomotive.libsvcarinfo.AiOnYType;

/* loaded from: classes.dex */
public final class c implements d {
    @Override // com.yunpan.appmanage.carsdk.d
    public final void a(boolean z) {
        if (z) {
            e.a(e.c(), AiOnYType.LAMP_OPEN.getValue());
        } else {
            e.a(e.c(), AiOnYType.LAMP_CLOSE.getValue());
        }
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public final void b(int i10) {
        if (i10 == 1) {
            e.a(e.c(), AiOnYType.GEAR_D.getValue());
            return;
        }
        if (i10 == 2) {
            e.a(e.c(), AiOnYType.GEAR_N.getValue());
        } else if (i10 == 3) {
            e.a(e.c(), AiOnYType.GEAR_R.getValue());
        } else if (i10 == 4) {
            e.a(e.c(), AiOnYType.GEAR_P.getValue());
        }
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public final void g(int i10, int i11) {
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public final void i(int i10) {
        if (i10 == 2) {
            e.a(e.c(), AiOnYType.MODE_ECO.getValue());
            return;
        }
        if (i10 == 3) {
            e.a(e.c(), AiOnYType.MODE_NORMAL.getValue());
        } else if (i10 == 5) {
            e.a(e.c(), AiOnYType.MODE_SPORT.getValue());
        } else if (i10 == 6) {
            e.a(e.c(), AiOnYType.MODE_I_PEDAL.getValue());
        }
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public final void l(int i10) {
        if (e.c().f3797e == -1) {
            e.c().f3797e = i10;
            if (i10 == 1) {
                e.a(e.c(), AiOnYType.SPEED_START.getValue());
                return;
            }
            return;
        }
        if (e.c().f3797e > 0 && i10 == 0) {
            e.a(e.c(), AiOnYType.SPEED_STOP.getValue());
            if (e.c().f3799g) {
                e.c().f3795c.post(e.c().f3800h);
            }
        } else if (e.c().f3797e == 0 && i10 > 0) {
            if (e.c().f3799g) {
                e.c().f3795c.removeCallbacks(e.c().f3800h);
            }
            e.a(e.c(), AiOnYType.SPEED_START.getValue());
        }
        e.c().f3797e = i10;
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public final void o(int i10) {
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public final void p(int i10) {
        if (i10 != 0) {
            e.a(e.c(), AiOnYType.DOOR_HATCH_OPEN.getValue());
        } else {
            e.a(e.c(), AiOnYType.DOOR_HATCH_CLOSE.getValue());
        }
    }

    @Override // com.yunpan.appmanage.carsdk.d
    public final void s(int i10, boolean z) {
        if (i10 == -1) {
            e.a(e.c(), AiOnYType.DOOR_OPEN.getValue());
            return;
        }
        if (i10 == 233) {
            if (z) {
                e.a(e.c(), AiOnYType.DOOR_FL_OPEN.getValue());
                return;
            } else {
                e.a(e.c(), AiOnYType.DOOR_FL_CLOSE.getValue());
                return;
            }
        }
        if (i10 == 234) {
            if (z) {
                e.a(e.c(), AiOnYType.DOOR_FR_OPEN.getValue());
                return;
            } else {
                e.a(e.c(), AiOnYType.DOOR_FR_CLOSE.getValue());
                return;
            }
        }
        if (i10 == 235) {
            if (z) {
                e.a(e.c(), AiOnYType.DOOR_RL_OPEN.getValue());
                return;
            } else {
                e.a(e.c(), AiOnYType.DOOR_RL_CLOSE.getValue());
                return;
            }
        }
        if (i10 == 236) {
            if (z) {
                e.a(e.c(), AiOnYType.DOOR_RR_OPEN.getValue());
            } else {
                e.a(e.c(), AiOnYType.DOOR_RR_CLOSE.getValue());
            }
        }
    }
}

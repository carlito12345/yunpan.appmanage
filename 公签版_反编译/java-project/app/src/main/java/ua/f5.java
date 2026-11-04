package ua;

import android.widget.TextView;
import com.hsae.autosdk.vehicle.IVehicleCallback;
import com.yunpan.appmanage.ui.ActivityNissanTextVehicle;

/* loaded from: classes.dex */
public final class f5 extends IVehicleCallback.Stub {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityNissanTextVehicle f15674e;

    public f5(ActivityNissanTextVehicle activityNissanTextVehicle) {
        this.f15674e = activityNissanTextVehicle;
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void keyLeaveCarRemind(boolean z) {
        this.f15674e.X0.setText("钥匙离车提醒: " + z);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onABSFaultResponse(int i10) {
        ta.q.s("ABS故障: ", i10, this.f15674e.T);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onAccStateResponse(boolean z) {
        this.f15674e.E.setText("ACC: " + z);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onAverageFuelConsumptionResponse(float f10) {
        this.f15674e.f3986h0.setText("平均油耗: " + f10);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onBatteryPowerResponse(int i10) {
        ta.q.s("电池电量: ", i10, this.f15674e.T0);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onBrakeForceResponse(int i10) {
        ta.q.s("刹车力度: ", i10, this.f15674e.N0);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onDetectedEngineResponse(int i10) {
        ta.q.s("发动机: ", i10, this.f15674e.P);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onDoorResponse(boolean z, boolean z4, boolean z10, boolean z11, boolean z12) {
        this.f15674e.D.setText("车门: " + z + " " + z4 + " " + z10 + " " + z11 + " " + z12);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onEPSDetectionResponse(int i10) {
        ta.q.s("EPS: ", i10, this.f15674e.S);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onEQPinData(byte b10, byte b11, byte b12, byte b13) {
        TextView textView = this.f15674e.V0;
        StringBuilder sbO = ta.q.o(b10, b11, "EQ Pin 数据: ", " ", " ");
        sbO.append((int) b12);
        sbO.append(" ");
        sbO.append((int) b13);
        textView.setText(sbO.toString());
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onEngineRotatingSpeedResponse(float f10) {
        this.f15674e.f3987t0.setText("发动机转速: " + f10);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onHydraulicOilDetectedResponse(int i10) {
        ta.q.s("液压油: ", i10, this.f15674e.O);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onILLContStatusResponse(int i10) {
        ta.q.s("仪表背光亮度: ", i10, this.f15674e.Q0);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onIgnResponse(boolean z) {
        this.f15674e.F.setText("IGN: " + z);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onIllStateResponse(boolean z, boolean z4, boolean z10, boolean z11) {
        StringBuilder sb2 = new StringBuilder("💡 灯光: 近光[");
        sb2.append(z);
        sb2.append("] 远光[");
        sb2.append(z4);
        sb2.append("] 后灯[");
        sb2.append(z10);
        sb2.append("] 前雾灯[");
        sb2.append(z11);
        sb2.append("]");
        this.f15674e.N.setText("灯光: " + z + " " + z4 + " " + z10 + " " + z11);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onLaneWarningSensorInfoResponse(int i10) {
        ta.q.s("车道预警传感器: ", i10, this.f15674e.V);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onMROutPutStatusResponse(int i10) {
        ta.q.s("MR输出状态: ", i10, this.f15674e.R0);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onMeterSpeedChanged(float f10) {
        this.f15674e.K.setText("仪表车速: " + f10);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onOffScreenStateChanged(boolean z) {
        this.f15674e.Y0.setText("屏幕关闭状态: " + z);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onParkingResponse(int i10) {
        ta.q.s("驻车: ", i10, this.f15674e.G);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onRemainingOil(int i10, int i11, int i12, int i13) {
        TextView textView = this.f15674e.Z;
        StringBuilder sbO = ta.q.o(i10, i11, "剩余油量: ", " ", " ");
        sbO.append(i12);
        sbO.append(" ");
        sbO.append(i13);
        textView.setText(sbO.toString());
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onSafetyBeltResponse(int i10, int i11) {
        this.f15674e.L.setText("安全带: " + i10 + " " + i11);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onSteeringWheelAngleResponse(int i10) {
        ta.q.s("方向盘角度: ", i10, this.f15674e.Y);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onStreeringWheelReationSpeed(int i10, int i11) {
        this.f15674e.W0.setText("方向盘反应速度: " + i10 + " " + i11);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onThrottleEffortsResponse(int i10) {
        ta.q.s("油门开度: ", i10, this.f15674e.M0);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onTotalMileageResponse(long j10) {
        this.f15674e.P0.setText("总里程: " + j10);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onTpmsInfoResponse(int i10, int i11, int i12) {
        TextView textView = this.f15674e.U0;
        StringBuilder sbO = ta.q.o(i10, i11, "胎压监测: ", " ", " ");
        sbO.append(i12);
        textView.setText(sbO.toString());
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onTurnSignalsInfoResponse(int i10) {
        String str = (i10 < 0 || i10 >= 4) ? "未知" : new String[]{"关闭", "左转", "右转", "双闪"}[i10];
        this.f15674e.M.setText("转向灯: " + str);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onVDCDetectionResponse(int i10) {
        ta.q.s("VDC: ", i10, this.f15674e.R);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onVehicleGearInfoResponse(int i10) {
        String str = (i10 < 0 || i10 >= 8) ? "未知" : new String[]{"OFF", "P", "R", "N", "D", "S", "L", "B"}[i10];
        this.f15674e.H.setText("档位: " + str);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onVehicleMileageInfoResponse(float f10) {
        this.f15674e.O0.setText("车辆里程: " + f10);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onVehicleSpeedInfoResponse(int i10) {
        ta.q.s("车速: ", i10, this.f15674e.I);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onVehicleSpeedPulseInfoResponse(int i10) {
        ta.q.s("车速脉冲: ", i10, this.f15674e.X);
    }

    @Override // com.hsae.autosdk.vehicle.IVehicleCallback
    public final void onWiperStateResponse(int i10) {
        ta.q.s("雨刷状态: ", i10, this.f15674e.S0);
    }
}

.class public final Lpa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/hsae/bluetoothsdk/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/bluetoothsdk/IBluetoothManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sput-object p1, Lag/c;->b:Lcom/hsae/bluetoothsdk/IBluetoothManager;

    .line 6
    .line 7
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    sput-object p1, Lag/c;->b:Lcom/hsae/bluetoothsdk/IBluetoothManager;

    .line 3
    .line 4
    return-void
.end method

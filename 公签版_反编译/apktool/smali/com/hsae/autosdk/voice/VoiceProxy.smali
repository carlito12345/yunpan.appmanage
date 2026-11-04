.class public final Lcom/hsae/autosdk/voice/VoiceProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/voice/VoiceProxy$VoiceProxyCallback;
    }
.end annotation


# static fields
.field private static SELF:Lcom/hsae/autosdk/voice/VoiceProxy;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mServerObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hsae/autosdk/server/ServerListener;",
            ">;"
        }
    .end annotation
.end field

.field private voiceManagerStub:Lcom/hsae/autosdk/voice/IVoiceManager;

.field private vpc:Lcom/hsae/autosdk/voice/VoiceProxy$VoiceProxyCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "VoiceProxy"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Lcom/hsae/autosdk/voice/VoiceProxy$VoiceProxyCallback;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, v1}, Lcom/hsae/autosdk/voice/VoiceProxy$VoiceProxyCallback;-><init>(Lcom/hsae/autosdk/voice/VoiceProxy;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->vpc:Lcom/hsae/autosdk/voice/VoiceProxy$VoiceProxyCallback;

    .line 22
    .line 23
    return-void
.end method

.method public static bridge synthetic a(Lcom/hsae/autosdk/voice/VoiceProxy;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->mServerObservers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/hsae/autosdk/voice/VoiceProxy;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->voiceManagerStub:Lcom/hsae/autosdk/voice/IVoiceManager;

    return-void
.end method

.method public static getInstance()Lcom/hsae/autosdk/voice/VoiceProxy;
    .locals 1

    .line 1
    sget-object v0, Lcom/hsae/autosdk/voice/VoiceProxy;->SELF:Lcom/hsae/autosdk/voice/VoiceProxy;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/hsae/autosdk/voice/VoiceProxy;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/hsae/autosdk/voice/VoiceProxy;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/hsae/autosdk/voice/VoiceProxy;->SELF:Lcom/hsae/autosdk/voice/VoiceProxy;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/hsae/autosdk/voice/VoiceProxy;->SELF:Lcom/hsae/autosdk/voice/VoiceProxy;

    .line 13
    .line 14
    return-object v0
.end method

.method private getStub()Lcom/hsae/autosdk/voice/IVoiceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->voiceManagerStub:Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getNewStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->voiceManagerStub:Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_1
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->voiceManagerStub:Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 25
    .line 26
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->voiceManagerStub:Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getNewStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method


# virtual methods
.method public getNewStub()Lcom/hsae/autosdk/voice/IVoiceManager;
    .locals 1

    .line 1
    const-string v0, "com.hsae.auto.IBINDER_VOICE_MANAGER"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/hsae/autosdk/voice/IVoiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->voiceManagerStub:Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 12
    .line 13
    return-object v0
.end method

.method public hideVR()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/voice/IVoiceManager;->hideVR()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public isAllowMediaPlay()Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/hsae/autosdk/voice/IVoiceManager;->isAllowMediaPlay()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return v0
.end method

.method public isIflytekChipPrepared()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/hsae/autosdk/voice/IVoiceManager;->isIflytekChipPrepared()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return v0
.end method

.method public isNeedInitServer()Z
    .locals 1

    .line 1
    const-string v0, "com.hsae.auto.IBINDER_VOICE_MANAGER"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public isSpeechStarted()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/hsae/autosdk/voice/IVoiceManager;->isSpeechStarted()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return v0
.end method

.method public isTtsPlayStarted()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/hsae/autosdk/voice/IVoiceManager;->isTtsPlayStarted()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return v0
.end method

.method public isVrStarted()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/hsae/autosdk/voice/IVoiceManager;->isVrStarted()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return v0
.end method

.method public isWakeUpStarted()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/hsae/autosdk/voice/IVoiceManager;->isWakeUpStarted()Z

    .line 14
    .line 15
    .line 16
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return v0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    return v0
.end method

.method public phoneCallStateChange(ILjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1, p2}, Lcom/hsae/autosdk/voice/IVoiceManager;->phoneCallStateChange(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public reStartWakeRecord()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/voice/IVoiceManager;->reStartWakeRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public registerListener(Lcom/hsae/autosdk/server/ServerListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 v0, 0x1

    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    invoke-static {}, Lcom/hsae/autosdk/server/Server;->getInstance()Lcom/hsae/autosdk/server/Server;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "com.hsae.auto.VOICE_SERVICE"

    .line 33
    .line 34
    iget-object v1, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->vpc:Lcom/hsae/autosdk/voice/VoiceProxy$VoiceProxyCallback;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/hsae/autosdk/server/Server;->registerServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public resetIflytekSetting()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/voice/IVoiceManager;->resetIflytekSetting()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public resetVRListener(Lcom/hsae/autosdk/voice/IVRListener;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/voice/IVoiceManager;->resetVRListener(Lcom/hsae/autosdk/voice/IVRListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public resourceRefresh(I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/voice/IVoiceManager;->resourceRefresh(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public setVRListener(Lcom/hsae/autosdk/voice/IVRListener;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/voice/IVoiceManager;->setVRListener(Lcom/hsae/autosdk/voice/IVRListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public startSettings()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/voice/IVoiceManager;->startSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public startTTS(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/hsae/autosdk/voice/IVoiceManager;->startTTS(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public startVR()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/voice/IVoiceManager;->startVR()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public stopIflytekTts()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/voice/IVoiceManager;->stopIflytekTts()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public stopSrView()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/voice/IVoiceManager;->stopSrView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public stopTTS()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/voice/IVoiceManager;->stopTTS()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public stopVR()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/voice/IVoiceManager;->stopVR()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public stopWakeRecord()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hsae/autosdk/voice/VoiceProxy;->getStub()Lcom/hsae/autosdk/voice/IVoiceManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/hsae/autosdk/voice/IVoiceManager;->stopWakeRecord()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public unRegisterListener(Lcom/hsae/autosdk/server/ServerListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->mServerObservers:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/hsae/autosdk/server/Server;->getInstance()Lcom/hsae/autosdk/server/Server;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "com.hsae.auto.VOICE_SERVICE"

    .line 27
    .line 28
    iget-object v1, p0, Lcom/hsae/autosdk/voice/VoiceProxy;->vpc:Lcom/hsae/autosdk/voice/VoiceProxy$VoiceProxyCallback;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lcom/hsae/autosdk/server/Server;->unregisterServerListener(Ljava/lang/String;Lcom/hsae/autosdk/server/IServerCallback;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.class public final Lua/z4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/z4;->a:I

    iput-object p1, p0, Lua/z4;->b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 2

    .line 1
    iget v0, p0, Lua/z4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lua/z4;->b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setNaviMuteState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const-string v0, "\u6b64\u529f\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 16
    .line 17
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lua/z4;->b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setAudioMute(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_1
    const-string v0, "\u6b64\u529f\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 31
    .line 32
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    return-void

    .line 36
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lua/z4;->b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setLoudness(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catch_2
    const-string v0, "\u6b64\u529f\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 46
    .line 47
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_2
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 2

    .line 1
    iget v0, p0, Lua/z4;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lua/z4;->b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setNaviMuteState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const-string v0, "\u6b64\u529f\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 16
    .line 17
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lua/z4;->b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setAudioMute(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catch_1
    const-string v0, "\u6b64\u529f\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 31
    .line 32
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    return-void

    .line 36
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lua/z4;->b:Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNissanTextGN;->E:Lcom/hsae/autosdk/settings/IAutoSettings;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/settings/IAutoSettings;->setLoudness(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catch_2
    const-string v0, "\u6b64\u529f\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u8bbe\u5907"

    .line 46
    .line 47
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_2
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

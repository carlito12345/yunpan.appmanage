.class public final La9/m;
.super La9/n;
.source "SourceFile"


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La9/n;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 2
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    packed-switch p2, :pswitch_data_0

    .line 3
    const-string p2, ""

    goto :goto_0

    .line 4
    :pswitch_0
    const-string p2, "lang.s2c"

    goto :goto_0

    .line 5
    :pswitch_1
    const-string p2, "lang.c2s"

    goto :goto_0

    .line 6
    :pswitch_2
    const-string p2, "compression.s2c"

    goto :goto_0

    .line 7
    :pswitch_3
    const-string p2, "compression.c2s"

    goto :goto_0

    .line 8
    :pswitch_4
    const-string p2, "mac.s2c"

    goto :goto_0

    .line 9
    :pswitch_5
    const-string p2, "mac.c2s"

    goto :goto_0

    .line 10
    :pswitch_6
    const-string p2, "cipher.s2c"

    goto :goto_0

    .line 11
    :pswitch_7
    const-string p2, "cipher.c2s"

    goto :goto_0

    .line 12
    :pswitch_8
    const-string p2, "server_host_key"

    goto :goto_0

    .line 13
    :pswitch_9
    const-string p2, "kex"

    .line 14
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Algorithm negotiation fail: algorithmName=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" jschProposal=\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" serverProposal=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    .line 15
    invoke-static {p3, p1, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, La9/n;-><init>(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

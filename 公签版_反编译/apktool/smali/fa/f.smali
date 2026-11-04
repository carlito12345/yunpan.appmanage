.class public final synthetic Lfa/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lfa/j;


# direct methods
.method public synthetic constructor <init>(Lfa/j;I)V
    .locals 0

    .line 1
    iput p2, p0, Lfa/f;->a:I

    iput-object p1, p0, Lfa/f;->b:Lfa/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lfa/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfa/f;->b:Lfa/j;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, v0, Lfa/j;->b:Ly9/b;

    .line 12
    .line 13
    const-string v1, "reboot:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lfa/f;->b:Lfa/j;

    .line 20
    .line 21
    invoke-virtual {v0}, Lfa/j;->j()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

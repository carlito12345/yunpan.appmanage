.class public final synthetic Lha/e3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/a4;


# direct methods
.method public synthetic constructor <init>(Lha/a4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/e3;->a:I

    iput-object p1, p0, Lha/e3;->b:Lha/a4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget v0, p0, Lha/e3;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lha/e3;->b:Lha/a4;

    check-cast v0, Lha/r3;

    invoke-static {v0, p1}, Lha/r3;->b(Lha/r3;Landroid/media/MediaPlayer;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lha/e3;->b:Lha/a4;

    check-cast v0, Lha/j3;

    invoke-static {v0, p1}, Lha/j3;->b(Lha/j3;Landroid/media/MediaPlayer;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
